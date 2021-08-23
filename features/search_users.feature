Feature: As a logged-in user I can get the first page of users

Scenario: As a logged-in user I can get the first page of users

  Given an "anonymous" api consumer
  When he asks for "first" page of "users"
  Then he gets a "SYNCHRONOUS_OK" response
  And the number of items per page matches response meta info
  And users response fields are populated
