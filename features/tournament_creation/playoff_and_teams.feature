Feature: associate team and play-offs

	In order to have all teams distributed for play-off stage 
	As a Web Manager, Administrator or Root user
	I want to be able add or remove teams of a play-off stage 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the play-off stage page 

	Scenario: Add successfully team to a play-off stage

		I should be able to add teams to a play-off stage

		Given I am at the play-off stage page 
		When I select position on stage for a team
		And  I submit data
		Then I should see a success message
		And The associations between the position on play-off stage and the team should be stored in the database
		And I should be redirect to the play-off stage page

	
	Scenario: Change successfully team between positions play-off stage

		I should be able to change teams between positions play-off stage

		Given I am at the play-off stage page 
		When I select new position on stage for a team
		And  I submit data
		Then I should see a success message
		And The associations between the new position play-off stage and the team should be stored in the database
		And The last associations between the old play-off stage and the team should be destroyed in the database
		And I should be redirect to the play-off stage page