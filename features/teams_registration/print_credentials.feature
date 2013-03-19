Feature: print a team credentials 

	In order to print a team credentials   
	As a Validator, Administrator or Root user
	I want to be able print a credential 

	Background:     
		Given I am authenticated
		And My user role is 
		       |  Validator  |
		Given I am at the management tournament page 

	Scenario: print successfully a team credentials  

		I should be able to print a team credentials

		When I select print credentials
		Then I should see a success message
		And The team credentials should be printed in a PDF file
