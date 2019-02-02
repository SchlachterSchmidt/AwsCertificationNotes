# Lifecycle Management
- use to move files automatically to glacier (for example) after a specified amount of time for archiving
- management -> Lifecycle -> add Lifecycle Rule
- you can use tags to filter which objects to transition
- you can create rules for the current version as well as previous versions

# Tips
- can be used together with Versioning
- can be applied to current and previous versions
- can transition to IA storage class after 30 days (minimum)
- transition to Glacier after 60 days
- permanently delete 
