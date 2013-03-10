Feature: register a game card

	In order to have a final result  
	As a Web Manager, Administrator or Root user
	I want to be able register the final result

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the card game page 

	Scenario: register successfully the card game

		I should be able to register the card game

		Given I am at the card game page
		When I insert the result
		And I submit data
		Then I should see a success message
		And The new card game should be stored in the database
		And I should be redirected to that card game page
