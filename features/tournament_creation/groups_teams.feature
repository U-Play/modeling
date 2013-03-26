Feature: define group for a team

	In order to have all teams distributed for all groups 
	As an Administrator or Root user
	I want to be able add or remove teams of a group 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the group stage management page 

	Scenario: Add successfully team to a group

		I should be able to add teams to a group

		When I select group for a team
		And  I submit the data
		Then I should see a success message
		And The associations between the group and the team should be stored
		And I should be redirected to the group stage management page

	Scenario: Add a team to a full group 
	
		I should be notified if I try to insert a team in a full group 

		When I select a full group for a team
		And I submit the data
		Then I should see an error message
		And I should be stay at the group stage management page

	Scenario: Change successfully team between groups

		I should be able to change teams between groups

		When I select new group for a team
		And  I submit the data
		Then I should see a success message
		And The associations between the old group and the team should be destroyed
		And The associations between the new group and the team should be stored
		And I should be redirected to the group stage management page

	Scenario: Change a team for a full group 
	
		I should be notified if I try to change a team for a full group 

		When I select a full group for a new group team
		And I submit the data
		Then I should see an error message
		And I should be stay at the group stage management page
