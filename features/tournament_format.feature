Feature: tournament format management

	In order to choose a format for the tournament 
	As a Web Manager, Administrator or Root user
	I want to be able choose and edit the tournament format 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the tournament format creation page 

	Scenario: Select successfully the tournament format

		I should be able to select tournament format

		Given I am at the tournament format creation page
		When I select the tournament format
		And  I submit data
		Then I should see a success message
		And The tournament format should be stored in the database
		And I should be redirect to the tournament page

	Scenario Outline: Don't select the tournament format
	
		I should be notified if I try to select a blank tournament format

		When I leave the tournament format blank
		And I submit that data
		Then I should see an error message
		And I should stay at the tournament format creation page
		