Feature: players registration in a team

	In order to have all players of a team 
	As an Team Manger
	I want to be able add or remove players from a team 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Manager |
		Given I am at the management team page 

	Scenario: Add successfully a player to a team

		I should be able to add players to a team

		When I fill the email of the player
		And  I submit the data
		Then I should see a success message
		And The registration of the player is recorded
		And An email with an invitation should be sent for the player
		And The administrator should be notified 
		And I should be redirected to the management team page

	Scenario Outline: Add a registered player 
	
		I should be notified if I try to register a player of another team
		
		When I fill the email of a registered player
		And I submit the data
		Then I should see an error message
		And I should be redirected to the management team page
		
