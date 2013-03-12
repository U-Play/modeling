Feature: logout from UPlay

	In order to permit sign out UPlay  
	As a Web Manager, Administrator, Root user or Player
	I want to be able login with FB, googlePlus, LinkedIN account 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		#       |     Player    |
		
	Scenario: logout successfully

		Given I am at any UPlay page
		When I select logout option		
		Then I should be a success message
		And I should be redirected to UPlay home page 
