Feature: Manage Events
  In order manage events
  As an admin
  I want to be able to add, edit and delete events

Scenario: Events List
Given the following user records
     | login | password | password_confirmation |
     | dev   | secret   | secret |
     | it    | secret   | secret |
  And I am logged in as "dev" with password "secret"
  And I have the following events
	 | name	        | startDate  | endDate    | startTime           | endTime             | supporter_id |
   | FirstEvent   | 2010-09-09 | 2011-09-09 | 2001-01-01 11:00:00 | 2001-01-01 13:00:00 | 1            |  
   | SecEvent     | 2010-09-02 | 2011-02-02 | 2001-01-01 11:00:00 | 2001-01-01 13:00:00 | 2            |
  When  I go to the list of events
#  Then I should see "FirstEvent"
  Then show me the page
#	And I should see "SecEvent"
