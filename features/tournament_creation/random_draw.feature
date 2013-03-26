Feature: generate random draw for tournament

	In order to have a schedule draw 
	As an Administrator or Root user
	I want to be able generate draw 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the format tournament page 

	Scenario: generate successfully the random draw

		I should be able to generate the random draw

		When I select the option of random draw
		Then Generate a random draw
		And The random draw should be stored
		And I should be redirect to the format tournament page
