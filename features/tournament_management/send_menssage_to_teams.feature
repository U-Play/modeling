Feature: send a message to all teams  

	In order to communicate with all teams   
	As a Administrator or Root user
	I want to be able to send a messages  

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		Given I am at the tournament communication page 

	Scenario: send successfully a message  

		I should be able to send a message

		When I write a message
		And I send the message 
		Then I should see a success message
		And The message should be sent to the mailling list of tournament
		And I should be redirected to the tournament communication page
