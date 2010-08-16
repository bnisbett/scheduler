Feature: Manage Events
  In order manage events
  As an admin
  I want to be able to add, edit and delete events

Scenario: Events List
  Given I have events named First Event, Second Event
  When  I go to the list of events
  Then I should see "First Event"
	And I should see "Second Event"
