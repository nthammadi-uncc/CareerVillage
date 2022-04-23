# CareerVillage
This project is created as part of DSBA Course 6211- Advanced Business Analytics

### Goals:
| Categories  | Questions |
| ------------- | ------------- |
| Q&A dynamics  | <ol><li>Can a question be tagged to multiple professionals? Can a question have multiple tags?</li><li>What is the relationship between questions and question score: one to one vs one to many; can a question have multiple scores?</li><li>What is the relationship between answers and answer score: one to one vs one to many; can an answer have multiple scores?</li><li>On what basis are questions being scored? Are there any topics/tags that are scored higher/lower?</li><li>On what basis are answers being scored? Are there any topics that are scored higher/lower?</li><li>What tags correspond to the topics in the question/answers/comments (related to topic modeling)?</li></ol>  |
| Professional dynamics  | <ol><li>What are the location and industry dynamics of professionals?</li><li>Are professionals of a particular school membership/location/industry faster at answering questions?</li><li>Are professionals who joined recently answering more questions than those who have been around for longer?</li></ol>  |
| Student dynamics  | <ol><li>What do student location dynamics look like? Do we see a higher concentration of students in certain locations?</li><li>Does the location of the student have a relationship with how actively they are posting questions?</li><li>Do newly joined students post more questions (higher activity level) than those who have been around for longer?</li></ol>  |
| Communication dynamics  | <ol><li>What are the time dynamics of engagement through comments?</li><li>Is the community engagement through comments higher for certain question tags?</li><li>What is the frequency of emails being sent? Are certain professionals getting emails more often than others? Are they responding to questions faster?</li><li>Do certain questions/tags get notified through emails more frequently?</li></ol>  |

<br/>

### Entity Relationship Diagram:
![ERD](https://user-images.githubusercontent.com/77910160/164945799-d1b9619a-8203-4ed3-b9cd-b82a16053599.png)

### Modeling
<ol>
  <li>Can we predict the location (or group membership) of a professional who would answer a question the fastest? This is to check if professionals from a particular location (or group membership) are more active and responsive to answering questions. <b>Model proposed - Linear regression, Neural Network</b></li>
  <li>What is the probability of a question being answered within X number of hours depending on the tags associated with it? (X to be determined after a certain amount of exploratory data analysis). <b>Model proposed - Logistic Regression</b></li>
  <li>What is the average response time for a question after an email notification is sent to professionals? <b>Model proposed - Decision trees</b></li>
  <li>What is the average score range for a question having specific tags/topics? <b>Model proposed - Decision trees</b></li>
  <li>What tone of answers tends to get more engagement through comments? <b>Model proposed - Sentiment Analysis</b></li>
  <li>What is the accuracy of the topics discussed in a question to its tags? Are students tagging questions correctly? <b>Model proposed - Topic Modeling</b></li>
</ol>

