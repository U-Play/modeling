Feature: login with email account

	In order to permit sign in UPlay whit a simple email account  
	As a Manager, Athlete, Blogger, Validator, Administrator or Root user
	I want to be able login with email account 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		       |     Athlete   |
		       |     Validator |
		       |     Blogger   |
		Given I am at the sign in page 

	Scenario: login successfully
		
		When I fill in email
		And I fill in password
		And I submit the data		
		Then I should see a success message
		And I should be authenticated in UPlay
		And I should be redirected to my UPlay page 
	
	Scenario: login without existing account
		
		When I fill in email
		And I fill in password
		And I submit the data		
		Then I should see an error message
		And I should be redirect to the registration page

	Scenario Outline: login with wrong credentials
		
		When I fill in <field>
		And I submit the data		
		Then I should see an error message
		And I should stay at sign in page
		Example:
		   |     field   	|
	       |     email   	|
	       |     password   |
