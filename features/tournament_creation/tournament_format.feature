Feature: tournament format management

	In order to choose a format for the tournament 
	As an Administrator or Root user
	I want to be able choose and edit the tournament format 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the tournament format creation page 

	Scenario: Select successfully the tournament format

		I should be able to select tournament format

		When I select the tournament format
		And  I submit the data
		Then I should see a success message
		And The tournament format should be stored
		And I should be redirected to the tournament page

	Scenario Outline: Don't select the tournament format
	
		I should be notified if I try to select a blank tournament format

		When I leave the tournament format blank
		And I submit the data
		Then I should see an error message
		And I should stay at the tournament format creation page

	Scenario: Edit successfully the tournament format

		I should be able to edit the tournament format

		Given I am at a the tournament format edit page
		When I edit the tournament format
		And I submit the changes
		Then I should see a success message
		And The new tournament format data should be stored
		And I should be redirected to the tournament management page
