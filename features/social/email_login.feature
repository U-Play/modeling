Feature: login with email account

	In order to permit sign in UPlay whit a simple email account  
	As a Web Manager, Administrator, Root user or Player
	I want to be able login with email account 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		#       |     Player    |
		Given I am at the sign in page 

	Scenario: login successfully

		Given I am at the sign in page
		
		When I fill in email
		And I fill in password
		And I submit data		
		Then I should be a success message
		And I should be authenticated in UPlay
		And I should be redirect to my UPlay page 
	

	Scenario Outline: login without existing account

		Given I am at the sign in page
		
		When I fill in email
		And I fill in password
		And I submit data		
		Then I should see an error message
		And I should be redirect to the registration page

	Scenario Outline: login with wrong email

		Given I am at the sign in page

		When I fill in email
		And I fill in password
		And I submit data		
		Then I should see an error message
		And I should be redirect to the registration page

		Scenario Outline: login with wrong password

		Given I am at the sign in page

		When I fill in email
		And I fill in password
		And I submit data		
		Then I should see an error message
		And I should be redirect to the registration page
