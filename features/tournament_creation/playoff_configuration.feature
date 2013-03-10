Feature: playoff stage configuration

	In order to have configure playoff stage 
	As a Web Manager, Administrator or Root user
	I want to be able configure playoff stage 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the playoff stage configuration page 

	Scenario: Configure successfully the tournament playoff stage

		I should be able to configure tournament playoff stage

		Given I am at the playoff stage configuration page
		When I fill in all fields of playoff stage data
		And  I submit data
		Then I should see a success message
		And The tournament playoff stage data should be stored in the database
		And I should be redirect to the tournament playoff stage page

	Scenario Outline: Configure tournament playoff stage with required field not filled in
	
		I should be notified if I try to configure tournament playoff stage
		without filling in all the required fields

		When I leave the <field> of the tournament playoff stage data blank
		And I submit that data
		Then I should see an error message
		And I should stay at the groups playoff configuration page 
		And All fields filled in before trying to submit the tournament playoff stage data with the <field> blank should remain as they were


	Examples:
			| field					|
			| number of phases		|
			| rounds				|
			| 3rd place				|
			
	Scenario: Edit successfully the playoff stage configuration

		I should be able to edit the playoff stage configuration

		Given I am at the playoff stage configuration page 
		When I edit the number of phasess
		And I submit the changes
		Then I should see a success message
		And The new playoff stage configuration data should be stored in the database
		And I should be redirect to the playoff stage configuration page


	Scenario Outline: Edit the playoff stage configuration with a required field not filled in

		I should be notified if I try to edit the playoff stage configuration
		with a required field not filled in

		Given I am at the playoff stage configuration page 
		When I clean the <field> of playoff stage configuration
		And I submit the changes
		Then I should see an error message 
		And I should stay at the the playoff stage configuration page
		And All fields filled in before trying to submit the the playoff stage configuration with the <field> blank should remain as they were
		
		Examples:
			| field					|
			| number of phases		|
			| rounds				|
			| 3rd place				|