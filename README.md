# ITJobMeter

This project scrapes IT jobs from various job portals in Turkey and generates statistics
about the jobs such as the number of jobs per month, the most popular
job titles, etc.

![Badge for test workflow](https://github.com/Amirtheahmed/itjobmeter/actions/workflows/test.yml/badge.svg)

## To-do
* [ ] Add more workflows
    * [ ] backup database.
    * [ ] check for duplicates.
    * [ ] Connect firebase to github for automatic deploy
* [ ] Add error handling on frontend if data missing from database.
* [ ] Update `rebase_stats` to automatically delete all fields.
* [ ] Find solution: `job_title_data` could exceed 20,000 fields limit.
* [ ] Add more tests using test sample data.
* [ ] Generate a weekly report and send by email
* [ ] Generate charts on backend