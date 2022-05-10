# CareerVillage
This project is created as part of DSBA Course 6211- Advanced Business Analytics

## Data
The datasets have been taken from Kaggle - https://www.kaggle.com/c/data-science-for-good-careervillage/data
The below description has been copied from Kaggle

CareerVillage.org has provided several years of anonymized data and each file comes from a table in their database.
<ul>
<li>answers.csv: Answers are what this is all about! Answers get posted in response to questions. Answers can only be posted by users who are registered as Professionals. However, if someone has changed their registration type after joining, they may show up as the author of an Answer even if they are no longer a Professional.</li>
<li>comments.csv: Comments can be made on Answers or Questions. We refer to whichever the comment is posted to as the "parent" of that comment. Comments can be posted by any type of user. Our favorite comments tend to have "Thank you" in them :)</li>
<li>emails.csv: Each email corresponds to one specific email to one specific recipient. The frequency_level refers to the type of email template which includes immediate emails sent right after a question is asked, daily digests, and weekly digests.</li>
<li>group_memberships.csv: Any type of user can join any group. There are only a handful of groups so far.</li>
<li>groups.csv: Each group has a "type". For privacy reasons we have to leave the group names off.</li>
<li>matches.csv: Each row tells you which questions were included in emails. If an email contains only one question, that email's ID will show up here only once. If an email contains 10 questions, that email's ID would show up here 10 times.</li>
<li>professionals.csv: We call our volunteers "Professionals", but we might as well call them Superheroes. They're the grown ups who volunteer their time to answer questions on the site.</li>
<li>questions.csv: Questions get posted by students. Sometimes they're very advanced. Sometimes they're just getting started. It's all fair game, as long as it's relevant to the student's future professional success.</li>
<li>school_memberships.csv: Just like group_memberships, but for schools instead.</li>
<li>students.csv: Students are the most important people on CareerVillage.org. They tend to range in age from about 14 to 24. They're all over the world, and they're the reason we exist!</li>
<li>tag_questions.csv: Every question can be hashtagged. We track the hashtag-to-question pairings, and put them into this file.</li>
<li>tag_users.csv: Users of any type can follow a hashtag. This shows you which hashtags each user follows.</li>
<li>tags.csv: Each tag gets a name.</li>
<li>question_scores.csv: "Hearts" scores for each question.</li>
<li>answer_scores.csv: "Hearts" scores for each answer.</li>

### Exploratory Data Analysis:
The exploratory data analysis hopes to explore all the below questions
| Categories  | Questions |
| ------------- | ------------- |
| Q&A dynamics  | <ol><li>Can a question be tagged to multiple professionals? Can a question have multiple tags?</li><li>What is the relationship between questions and question score: one to one vs one to many; can a question have multiple scores?</li><li>What is the relationship between answers and answer score: one to one vs one to many; can an answer have multiple scores?</li><li>On what basis are questions being scored? Are there any topics/tags that are scored higher/lower?</li><li>On what basis are answers being scored? Are there any topics that are scored higher/lower?</li><li>What tags correspond to the topics in the question/answers/comments (related to topic modeling)?</li></ol>  |
| Professional dynamics  | <ol><li>What are the location and industry dynamics of professionals?</li><li>Are professionals of a particular school membership/location/industry faster at answering questions?</li><li>Are professionals who joined recently answering more questions than those who have been around for longer?</li></ol>  |
| Student dynamics  | <ol><li>What do student location dynamics look like? Do we see a higher concentration of students in certain locations?</li><li>Does the location of the student have a relationship with how actively they are posting questions?</li><li>Do newly joined students post more questions (higher activity level) than those who have been around for longer?</li></ol>  |
| Communication dynamics  | <ol><li>What are the time dynamics of engagement through comments?</li><li>Is the community engagement through comments higher for certain question tags?</li><li>What is the frequency of emails being sent? Are certain professionals getting emails more often than others? Are they responding to questions faster?</li><li>Do certain questions/tags get notified through emails more frequently?</li></ol>  |

<br/>

### Entity Relationship Diagram:
![ERD](https://user-images.githubusercontent.com/77910160/164945799-d1b9619a-8203-4ed3-b9cd-b82a16053599.png)
