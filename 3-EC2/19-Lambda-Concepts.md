# Lambda
- encapsulates hardware, OS, runtime etc
- you only manage the code that is triggered upon an event
- event can be chage to a DB table, S3 bucket, or to a HTTP
- scales automatically
- pricing:
  - first 1 million requests are free
  - then 0.20$ per 1 million requests
  - duration - calculated from the time your code begins executing until it returns or terminates, rounded to the nearest 100ms
  - price depends on the memory allocated to the function (GB/Second)
  - terminates at 5 minues


## Create a function
- check Lambda under the Compute category
- author from scratch
- select runtime:
  - C#
  - Java 8
  - Python 2
  - Python 3
  - Ruby
  - NodeJS
  - Go


# Triggers
- API gateway
- Alexa
- CloudFront
- CloudWatch
- S3
- SNS
- DynamoDB


## Exam tips
- scales out (not up) automatically
- execution is endependent: 1 event -> 1 function
- serverless
- main triggers
- lambda funtions can trigger lambda functions
- architecture can get complicated
- languages
