@team @creation
Feature: Team creation

	In order to have teams that will participate in a tournament
	As a Web Manager, Administrator or Root user
	I want to be able to create a team constituted by athletes, coaches, referees and judges

	Background:     
		#Given I am authenticated
		#And My user role is 
		#       |  Web Manager  |
		#       | Administrator |
		#       |     Root      |
		Given the following federations exist in the system
			| AAUM |
			| AACM |
		And the following users exist in the system
			| Bruno		|
			| Miguel	|
			| Andre		|
			| Jose		|
			| Gabriel	|
			| Roberto	|
		And I am at the team creation page


	Scenario: Create a team successfully

		I should be able to create a new team

		When I fill in all required fields for a team
		And I submit that data
		Then I should see a success message
		And The new team should be stored in the database
		And I should be redirected to that team's view page
		And I should see the code team


	Scenario Outline: Create team with required field not filled in

		I should be notified if I try to create a new team
		without filling in all the required fields

		When I leave the <field> of the team blank
		And I submit that data
		Then I should see an error message
		And I should stay at the team's creation page
		And All fields filled in before trying to submit the team with the <field> blank should remain as they were
		Examples:
			| field			|
			| name			|
			| federation	|

	Scenario Outline: Create team adding athletes/referees

		I should be able to register judo athletes/referees
		and associate them to the new team

		When I fill in all required fields for a team
		And I add <user_type> <user_id>
		And I submit that data
		Then I should see a success message
		And The new team should be stored in the database
		And <user_type> <user_id> should be registered as a Judo <user_type> as well as belong to the new team
		And I should be redirected to that team's view page
		Examples:
			| user_type	|	user_id	|
			| athlete	|	1		|
			| referee	|	3		|
			| judge		|	4		|

	# Scenario Outline: Create team with an athlete/referee/judge that already belongs to another team

	# 	I should be notified if I try to create a new team
	# 	with an athlete or a referee or a judge that already
	# 	belongs to another team

	# 	Given the following athletes belong to another team
	# 		|	1			|	Bruno	|
	# 		|	2			|	Miguel	|
	# 	And the following referees belong to another team
	# 		|	3			|	Andre	|
	# 	And the following judges belong to another team
	# 		|	4			|	Jose	|
	# 		|	5			|	Gabriel	|
	# 	When I fill in all required fields for a team
	# 	And I add <user_type> <user_id>
	# 	And I submit that data
	# 	Then I should see an error message 
	# 	And I should stay at the team's creation page
	# 	And All fields filled in before trying to submit the team with the new <user_type> should remain as they were
	# 	Examples:
	# 		| user_type	|	user_id	|
	# 		| athlete	|	1		|
	# 		| referee	|	3		|
	# 		| judge		|	4		|

	Scenario: Create team with a name belonging to another team

		I should be notified if I try to create a new team
		with a name that is already assigned to an existing team


		Given that a team with the name "AAUM Team" already exists
		When I fill in the name with "AAUM Team"
		And I select a federation
		And I submit that data
		Then I should see an error message 
		And I should stay at the team's creation page
		And All fields filled in before trying to submit the team should remain as they were
