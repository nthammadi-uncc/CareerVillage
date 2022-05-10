tags = read.csv('tags.csv')
tag_questions = read.csv('tag_questions.csv')
tag_users = read.csv('tag_users.csv')
questions = read.csv('questions.csv')
professionals = read.csv('professionals.csv')
emails = read.csv('emails.csv')
prof_ind_cat = read.csv('professionals_IndustryCategory.csv')
questions_metrics = read.csv('questions_metrics.csv')
questions_tag_cat = read.csv('questions_TagCategory.csv')

questions_tag_cat$Business = factor(ifelse(questions_tag_cat$tags_category == 'Business', 1, 0))
questions_tag_cat$Career_Couns = factor(ifelse(questions_tag_cat$tags_category == 'Career Counseling', 1, 0))
questions_tag_cat$College = factor(ifelse(questions_tag_cat$tags_category == 'College', 1, 0))
questions_tag_cat$Engineering = factor(ifelse(questions_tag_cat$tags_category == 'Engineering', 1, 0))
questions_tag_cat$Law_enf = factor(ifelse(questions_tag_cat$tags_category == 'Law enforcement', 1, 0))
questions_tag_cat$Nursing_and_Med = factor(ifelse(questions_tag_cat$tags_category == 'Nursing and Medicine', 1, 0))
questions_tag_cat$Professional = factor(ifelse(questions_tag_cat$tags_category == 'Professional', 1, 0))
questions_tag_cat$Psych = factor(ifelse(questions_tag_cat$tags_category == 'Psychology', 1, 0))
questions_tag_cat$Social_Work = factor(ifelse(questions_tag_cat$tags_category == 'Social Work', 1, 0))
questions_tag_cat$Scientist = factor(ifelse(questions_tag_cat$tags_category == 'Scientist', 1, 0))
questions_tag_cat$school = factor(ifelse(questions_tag_cat$tags_category == 'school', 1, 0))
questions_tag_cat$Teaching = factor(ifelse(questions_tag_cat$tags_category == 'Teaching', 1, 0))
questions_tag_cat$Technology = factor(ifelse(questions_tag_cat$tags_category == 'Technology', 1, 0))
#professional career omitted

questions_tag_cat$questions_date_added = strptime(questions_tag_cat$questions_date_added, tz='UTC', format="%Y-%m-%d %H:%M:%S")
questions_tag_cat$first_answer_posted = strptime(questions_tag_cat$first_answer_posted, tz='UTC', format="%Y-%m-%d %H:%M:%S")
questions_tag_cat$first_email_sent = strptime(questions_tag_cat$first_email_sent, tz='UTC', format="%Y-%m-%d %H:%M:%S")

questions_tag_cat$answer_time_hrs = difftime(questions_tag_cat$first_answer_posted, questions_tag_cat$questions_date_added, tz='UTC', units='hours')
questions_tag_cat$answer_time_hrs = as.numeric(questions_tag_cat$answer_time_hrs)

questions_tag_cat$twentyfour_hours = as.numeric(questions_tag_cat$answer_time_hrs<24)
#make unanswered questions 0
questions_tag_cat$twentyfour_hours[which(is.na(questions_tag_cat$twentyfour_hours))] = 0
questions_tag_cat$twentyfour_hours = factor(questions_tag_cat$twentyfour_hours)

questions_metrics$questions_date_added = strptime(questions_metrics$questions_date_added, tz='UTC', format="%Y-%m-%d %H:%M:%S")
questions_metrics$first_answer_posted = strptime(questions_metrics$first_answer_posted, tz='UTC', format="%Y-%m-%d %H:%M:%S")
questions_metrics$first_email_sent = strptime(questions_metrics$first_email_sent, tz='UTC', format="%Y-%m-%d %H:%M:%S")

questions_metrics$answer_time_hrs = difftime(questions_metrics$first_answer_posted, questions_metrics$questions_date_added, tz='UTC', units='hours')
questions_metrics$answer_time_hrs = as.numeric(questions_metrics$answer_time_hrs)

table(questions_tag_cat$tags_category)

questions_tag_cat = subset(questions_tag_cat, select = -c(1))
questions_metrics = subset(questions_metrics, select = -c(1))
questions_merged = merge(questions_tag_cat, questions_metrics, by=intersect(names(questions_tag_cat), names(questions_metrics)))

#17 #5
set.seed(77)
trainIndex = createDataPartition(questions_merged$twentyfour_hours, p=.7, list = FALSE, times = 1)
questions.train = questions_merged[trainIndex,c(4, 17, 22:35, 38:40)]
questions.valid = questions_merged[-trainIndex,c(4, 17, 22:35, 38:40)]

vif(glm(formula= twentyfour_hours~., family = binomial(link='logit'), data=questions.train))

baseline.model = train(twentyfour_hours~.,
                       data=questions.train,
                       method='glm',
                       family = 'binomial',
                       na.action = na.pass)
summary(baseline.model)

prediction = predict(baseline.model, newdata = questions.valid)

confusionMatrix(prediction,questions.valid$twentyfour_hours)


