Feature: login with social networks

	In order to permit sign in UPlay through social networks  
	As a Web Manager, Administrator, Root user or Player
	I want to be able login with FB, googlePlus, LinkedIN account 

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		#       |     Player    |
		Given I am at the sign in page 

	Scenario: login successfully

		Given I am at the sign in page
		When I select <field> login option		
		Then I should be a success message
		And I should be authenticated in UPlay
		And I should be redirect to my UPlay page 
	
	Examples:
			| field			|
			| FB			|
			| Google Plus	|
			| Twitter		|
			| LinkedIN      |


	Scenario Outline: login without existing account

		Given I am at the sign in page
		When I select FB login option
		Then I should see an error message
		And I should be redirect to the registration page

	Scenario Outline: login with social network account fail

		Given I am at the sign in page
		When I select FB login option
		Then I should see an error message
		And I should be redirect to the sign in page