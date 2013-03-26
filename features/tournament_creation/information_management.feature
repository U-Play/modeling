Feature: tournament information management 

	In order to have all details of tournament information 
	As an Administrator or Root user
	I want to be able insert, edit and delete the tournament information 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the tournament information page 

	Scenario: add successfully the tournament's details

		I should be able to insert tournament's details

		When I fill in all fields of tournament information
		And  I submit the data
		Then I should see a success message
		And The tournament information should be stored
		And I should be redirected to the tournament information page

	Scenario Outline: add tournament information with required field not filled in
	
		I should be notified if I try to insert the tournament information
		without filling in all the required fields

		When I leave the <field> of the tournament information blank
		And I submit the data
		Then I should see an error message
		And I should stay at the tournament information management page
		And All fields filled in before trying to submit the tournament information with the <field> blank should remain as they were


	Examples:
			| field			|
			| name			|
			| description	|
			| city			|
			| local			|
			| rules			|
			| contacts		|
			| start date	|
			| end date		|
			#| poster		|

	Scenario: Edit successfully the tournament information

		I should be able to edit the tournament information

		Given I am at a the tournament information edit page
		When I edit the tournament name
		And I submit the changes
		Then I should see a success message
		And The new tournament information data should be stored
		And I should be redirected to the tournament information page


	Scenario Outline: Edit the tournament information with a required field not filled in

		I should be notified if I try to edit the tournament information
		with a required field not filled in

		Given I am at the tournament information edit page
		When I clean the <field> of the tournament information
		And I submit the changes
		Then I should see an error message 
		And I should stay at the the tournament information edit page
		And All fields filled in before trying to submit the the tournament information with the <field> blank should remain as they were
			Examples:
			| field			|
			| name			|
			| description	|
			| city			|
			| local			|
			| rules			|
			| contacts		|
			| start date	|
			| end date		|
			#| poster		|
