Feature: teams management

	In order to have all the team's information correct 
	As a Web Manager, Administrator or Root user
	I want to be able add or remove teams from the tournament 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the teams registration page 
		And I select number of teams

	Scenario: Add successfully teams to the tournament

		I should be able to add team to the tournament

		Given I am at the teams registration page
		When I fill the name of the team
		And  I submit data
		Then I should see a success message
		And The associations between the team and the tournament should be stored in the database
		And I should be redirect to the teams registration page

	Scenario Outline: Add a non existing team 
	
		I should be notified if I try to insert a non existing team 

		When I fill a team name that don't exist
		And I submit that data
		Then I should see an error message
		And I should be redirect to the teams creation page
		

	Scenario: Change successfully team of the tournament

		I should be able to edit the team name 

		Given I am at the teams registration page
		When I edit the team name
		And I submit the changes
		Then I should see a success message
		And The association between the new team and the tournament should be stored in the database
		And The association between the older team and the tournament should be destroyed in the database
		And I should be redirect to the teams registration page


	Scenario Outline: Change for a non existing team of the tournament

		I should be notified if I try to change for a non existing team

		Given I am at the teams registration page
		When I edit the team name
		And I submit the changes
		Then I should see an error message 
		And I should be redirect to the teams creation page