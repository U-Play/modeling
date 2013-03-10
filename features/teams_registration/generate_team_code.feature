Feature: generate a team code

	In order to permit a team registration 
	As a Web Manager, Administrator or Root user
	I want to be able generate team codes 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the generate codes page 

	Scenario: generate successfully code

		I should be able to generate a code

		Given I am at the generate code page
		When I fill the email of the responsible team and team name
		And  I submit data
		Then I should see a success message
		And The email of responsible team and association between the responsible and the team should be stored in the database
		And The email of responsible should be added to mailling list of the tournament
		And The team code should be sent by email
		And I should be redirect to the generate codes page
		And I should see the team code
		