Feature:
As Admin user add new Employee
@addemp
Scenario Outline:
Add Employee With Multiple data
Given User Navigates url as"http://orangehrm.qedgetech.com/" in abrowser
when user log as"Admin"is username 
And User log asb"Qedge123!@#" in password
And user click login button
Then user login sucess
when user click pim
when user click add empolyee
When user enter as "<First name>"in First name
When user enter as "<Middle name>"in Middle name
When user enter as "<Last name>"in last name
And user Capture Eid Before Adding
And user click save button
And user capture eid after adding
Then user Validate eid
Then user close browser
Examples:
|Firstname|Middlename|Lastname|
|tarun|loves|navyau|
|navya|loves|taruni|
|cat|testing|dogy|
|testing|coding|seleniu|