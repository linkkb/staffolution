Feature: create a staffolution account as a worker

	As a worker
	So that I can find jobs
	I want to be able to create an account

Scenario: create worker account
	When I am on the home page
	And I press "Find a job"
        And I should see "Username"
	And I fill user[username] with 'joesbro'
        And I fill user[email] with 'alphalambda@hotmail.com'
	And I fill user[password] with '7654321'
	And I fill user[password_confirmation] with '7654321'
	And I press "sign up"
	Then I should be on the worker home page
