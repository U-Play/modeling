Feature: define teams of play-off

	In order to have all teams distributed for play-off stage 
	As an Administrator or Root user
	I want to be able add or remove teams of a play-off stage 

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the play-off stage management page 

	Scenario: Add successfully team to a play-off stage

		I should be able to add teams to a play-off stage

		When I select position on play-off stage for a team
		And  I submit the data
		Then I should see a success message
		And The associations between the position on play-off stage and the team should be stored
		And I should be redirected to the play-off stage management page

	
	Scenario: Change successfully team between play-off stage positions

		I should be able to change teams between play-off stage positions

		When I select new position on play-off stage for a team
		And  I submit the data
		Then I should see a success message
		And The associations between the old play-off stage position and the team should be destroyed
		And The associations between the new play-off stage position and the team should be stored
		And I should be redirected to the play-off stage management page
