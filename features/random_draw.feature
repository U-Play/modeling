Feature: generate random draw for tournament

	In order to have a schedule draw 
	As a Web Manager, Administrator or Root user
	I want to be able generate draw 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the format tournament page 

	Scenario: generate successfully the random draw

		I should be able to generate the random draw

		Given I am at the format tournament page
		When I select the option of random draw
		Then Generate a random draw
		And The random draw should be stored in database
		And I should be redirect to the format tournament page