Feature: User manages tellers

	Scenario: User adds one new teller
	 Given I go to the new teller page
	 And I fill in "Name" with "danie"
	 When I press "Add"
	 Then I should be on the teller list page
	 And I should see "danie" 