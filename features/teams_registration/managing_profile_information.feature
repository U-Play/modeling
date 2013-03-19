Feature: managing profile information

	In order to have all players information of the tournament 
	As a Athlete user
	I want to be able fill my information 

	Background:     
		Given I am authenticated
		And My user role is 
		       |  Athlete  |
		Given I am at my profile page 

	Scenario Outline: update successfully my profile

		I should be able to edit my profile information

		When I fill in the <field> of the profile information
		And  I submit the data
		Then I should see a success message
		And The profile information should be stored
		And I should be redirected to my profile page
	Examples:
			| field			|
			| FirstName		|
			| LastName		|
			| email			|
			| Password		|
			| Course		|
			| student number|
			| sports number |
			| picture		|