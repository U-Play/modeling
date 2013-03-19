Feature: team registration 

	In order to have teams that will participate in a tournament
	As an Administrator or Root user
	I want to be able to register a team  

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the teams registration page 

	Scenario: team successfully registered

		When I fill in the team name
		And I fill in the team email
		And I submit the data		
		Then I should see a success message
		And The new team should be stored
		And An email with code team should be sent
		And I should be redirected to the teams registration page  
	

	Scenario Outline: team is already registered in tournament
		
		When I fill in the <field> that is already registered
		And I submit data		
		Then I should see an error message
		And I should be redirected to the teams registration page  
	Examples:
			| field			|
			| name			|
			| email			|
