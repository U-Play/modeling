Feature: team registration 

	In order to have teams that will participate in a tournament
	As a Web Manager, Administrator or Root user
	I want to be able to create a team constituted by athletes 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		#       |     Player    |
		Given I am at the teams registration page 

	Scenario: team successfully registered

		Given I am at the teams registration  page 
		
		When I fill in the team name
		And I fill in the team email
		And I submit data		
		Then I should be a success message
		And The new team should be stored in the database
		And An email with code team should be sent
		And I should be redirect to the teams registration page  
	

	Scenario Outline: team email already registered in tournament

		Given I am at the sign in page
		
		When I fill in the <field> that already registered
		And I submit data		
		Then I should see an error message
		And I should be redirect to the teams registration page  
	Examples:
			| field			|
			| name			|
			| email			|
