Feature: associate team and group

	In order to have all teams distributed for all groups 
	As a Web Manager, Administrator or Root user
	I want to be able add or remove teams of a group 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the group stage page 

	Scenario: Add successfully team to a group

		I should be able to add teams to a group

		Given I am at the group stage page 
		When I select group for a team
		And  I submit data
		Then I should see a success message
		And The associations between the group and the team should be stored in the database
		And I should be redirect to the group stage page

	Scenario Outline: Add a team to a full group 
	
		I should be notified if I try to insert a team in a full group 

		When I select a full group for a team
		And I submit that data
		Then I should see an error message
		And I should be redirect to group stage page

	Scenario: Change successfully team between groups

		I should be able to change teams between groups

		Given I am at the group stage page 
		When I select new group for a team
		And  I submit data
		Then I should see a success message
		And The associations between the new group and the team should be stored in the database
		And The last associations between the old group and the team should be destroyed in the database
		And I should be redirect to the group stage page

	Scenario Outline: Change a team for a full group 
	
		I should be notified if I try to change a team for a full group 

		When I select a full group for a new group team
		And I submit that data
		Then I should see an error message
		And I should be redirect to group stage page