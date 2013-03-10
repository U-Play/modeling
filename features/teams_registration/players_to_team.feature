Feature: players registration in a team

	In order to have all players of a team 
	As a Web Manager, Administrator or Root user
	I want to be able add or remove players of a team 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the players registration page 

	Scenario: Add successfully players to a team

		I should be able to add players to a team

		Given I am at the players registration page
		When I fill the name of the player
		And  I submit data
		Then I should see a success message
		And The associations between the player and the team should be stored in the database
		And I should be redirect to the players registration page

	Scenario Outline: Add a non existing player 
	
		I should be notified if I try to insert a non existing player 

		When I fill a player name that don't exist
		And I submit that data
		Then I should see an error message
		And I should be redirect to the players creation page
		

	Scenario: Change successfully player of a team

		I should be able to edit the player 

		Given I am at the players registration page
		When I edit the player name
		And I submit the changes
		Then I should see a success message
		And The association between the new player and the team should be stored in the database
		And The association between the older player and the tournament should be destroyed in the database
		And I should be redirect to the players registration page


	Scenario Outline: Change for a non existing player

		I should be notified if I try to change for a non existing player

		Given I am at the players registration page
		When I edit the player name
		And I submit the changes
		Then I should see an error message 
		And I should be redirect to the players creation page