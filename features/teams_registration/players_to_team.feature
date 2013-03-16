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
		Given I am at the players association page 

	Scenario: Add successfully players to a team

		I should be able to add players to a team

		Given I am at the players association page
		When I fill the email of the player
		And  I submit data
		Then I should see a success message
		And The associations between the player and the team should be stored in the database
		And The administrator should be notified 
		And I should be redirect to the players association page

	Scenario Outline: Add a player of another team 
	
		I should be notified if I try to insert a player of another team
		
		Given I am at the players association page
		When I fill a player of a player of another team
		And I submit that data
		Then I should see an error message
		And I should be redirect to the players association page
		

	Scenario: Change successfully player of a team

		I should be able to edit the player 

		Given I am at the players association page
		When I edit the team of the player
		And I submit the changes
		Then I should see a success message
		And The association between the new team and the player should be stored in the database
		And The association between the older team and the player should be destroyed in the database
		And The administrator should be notified 
		And I should be redirect to the players association page


	Scenario Outline: Change for a non existing team

		I should be notified if I try to change for a non existing team

		Given I am at the players association page
		When I edit the player team
		And I submit the changes
		Then I should see an error message 
		And I should be redirect to the players association page
