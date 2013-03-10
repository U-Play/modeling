Feature: player validation

	In order to have all players correct  
	As a Web Manager, Administrator or Root user
	I want to be able validate players 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the players validation page 

	Scenario: validate player

		I should be able validate a player

		Given I am at the players validation page
		When I valid the player 
		And  I submit data
		Then I should see a success message
		And The player validation should be stored in the database
		And I should be redirect to the players validation page
		