# Cloud Watch
- Cloud Watch basic monitors instances every 5 minutes
- detailed monitoring polls every 1 minute, but not free tier eligible


# Dashboards
- create a dashboard for EC2 instance
- 4 types of widgets available
  - Text:
    - heading in markdown
  - Line:
    - add line graph and pick metric you are interested in
  - Stacked Area:
    - color in the area below the graph
  - Number:
    - concrete value
- for EC2, by default available are:
  - CPU related
  - Disk related
  - Network related
  - Status check related
- RAM is not available by default and a custom metric
- EBS storage space is available by default


# Alarms
- Select a metric to create an alarm for
- set threshold and period (5 minutes for basic, detailed 1 minute)
- set notification method
  - email subscription must be confirmed in the email


# Events
- help you respond to state changes in your resources
- example: update DNS entries in route 53 when a new instance comes online with a Lambda function


# Logs
- Monitor application level by installing an agent on the instance, and view logs on the console


# Metrics
- View raw metrics


# Tips
- standard monitoring interval is 5 minutes
- detailed interval is 1 minute
- create dashboards to see what is happening
- set alarms to be notified
- events to respond to state changes
- Logs allows you to aggregate and store logs
- Difference between Cloud Watch and Cloud Trail:
  - Cloud Trail is used for auditing your AWS account, like user creation
