Feature: player validation

	In order to have all players correct  
	As a AdminValidator, Administrator or Root user
	I want to be able validate players 

	Background:     
		Given I am authenticated
		And My user role is 
		       |  AdminValidator  |
		Given I am at the players validation page 

	Scenario: Validate successfully a player

		I should be able to validate a player

		When I valid the player registration
		And  I submit the data
		Then I should see a success message
		And The player should be validated
		And I should be redirect to the players validation page
		
	Scenario: Validate a player without picture

		I should be able to add to add pictures

		When I insert a picture in the player registration
		And I valid the player registration
		And  I submit the data
		Then I should see a success message
		And The player should be validated
		And I should be redirect to the players validation page

	Scenario: The player registration is invalid

		When I report the registration
		And I submit the data
		Then An email should be sent to player whit the report information
