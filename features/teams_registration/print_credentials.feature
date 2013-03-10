Feature: print a team credentials 

	In order to print a team credentials   
	As a Web Manager, Administrator or Root user
	I want to be able print a credential 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given I am at the management team page 

	Scenario: print successfully a team credentials  

		I should be able to print a team credentials

		Given I am at the management team page
		When I select print
		Then I should see a success message
		And The team credentials should be printed in a PDF file