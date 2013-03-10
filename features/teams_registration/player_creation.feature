Feature: players creation

	In order to have all players of the tournament 
	As a Web Manager, Administrator or Root user
	I want to be able add players to the tournament 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the players registration page 

	Scenario: create successfully player

		I should be able to create a player

		Given I am at the players creation page
		When I fill the email of the player
		And  I submit data
		Then I should see a success message
		And The player email and association between the player and the team should be stored in the database
		And I should be redirect to the players registration page
		