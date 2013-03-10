Feature: send a message to all teams  

	In order to communicate with all teams   
	As a Web Manager, Administrator or Root user
	I want to be able to send a messages  

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the tournament communication page 

	Scenario: send successfully a message  

		I should be able to send a message

		Given I am at the tournament communication page
		When I write a message
		And I send the message 
		Then I should see a success message
		And The message should be sent to the mailling list of tournament