Feature: create a staffolution account as an employer

	As an employer
	So that I can find workers
	I want to be able to create an account

Scenario: create employer account
	When I am on the home page
	And I press "Post a job"
	And I fill username with 'ratpack'
	And I fill password with '44444444'
	And I fill password_confirmation with '44444444'
        And I fill email with 'abc.123@gmail.com'
	And I press "Sign Up"
	Then I should be on the employer home page
