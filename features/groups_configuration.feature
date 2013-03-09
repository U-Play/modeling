Feature: groups stage configuration

	In order to have configure groups stage 
	As a Web Manager, Administrator or Root user
	I want to be able configure groups stage 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the groups stage configuration page 

	Scenario: Configure successfully the tournament groups stage

		I should be able to configure tournament groups stage

		Given I am at the groups stage configuration page
		When I fill in all fields of groups stage data
		And  I submit data
		Then I should see a success message
		And The tournament groups stage data should be stored in the database
		And I should be redirect to the tournament groups stage page

	Scenario Outline: Configure tournament groups stage with required field not filled in
	
		I should be notified if I try to configure tournament groups stage
		without filling in all the required fields

		When I leave the <field> of the tournament groups stage data blank
		And I submit that data
		Then I should see an error message
		And I should stay at the groups stage configuration page 
		And All fields filled in before trying to submit the tournament groups stage data with the <field> blank should remain as they were


	Examples:
			| field					|
			| number of groupes		|
			| rounds				|
			| points				|
			
	Scenario: Edit successfully the group stage configuration

		I should be able to edit the group stage configuration

		Given I am at the groups stage configuration page 
		When I edit the number of groups
		And I submit the changes
		Then I should see a success message
		And The new group stage configuration data should be stored in the database
		And I should be redirect to the groups stage configuration page


	Scenario Outline: Edit the group stage configuration with a required field not filled in

		I should be notified if I try to edit the group stage configuration
		with a required field not filled in

		Given I am at the groups stage configuration page 
		When I clean the <field> of groups stage configuration
		And I submit the changes
		Then I should see an error message 
		And I should stay at the the groups stage configuration page
		And All fields filled in before trying to submit the the groups stage configuration with the <field> blank should remain as they were
			Examples:
			| field					|
			| number of groupes		|
			| rounds				|
			| points				|