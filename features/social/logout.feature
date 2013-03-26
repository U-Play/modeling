Feature: logout from UPlay

	In order to permit sign out 
	As a Manager, Athlete, Blogger, Validator, Administrator or Root user
	I want to be able logout with email account

	Background:     
		Given I am authenticated
		And My user role is 
		       | Administrator |
		       |     Athlete   |
		       |     Validator |
		       |     Blogger   |
		
	Scenario: logout successfully

		Given I am at any UPlay page
		When I select logout option		
		Then I should see a success message
		And I should be redirected to UPlay home page 
