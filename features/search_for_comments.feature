Feature: As a user logged into the api I can get first page comments

Scenario: As a user logged into the api I can get first page comments

  Given an "anonymous" api consumer
  When he asks for "first" page of "comments"
  Then he gets a "SYNCHRONOUS_OK" response
  And the number of items per page matches response meta info
  And comments response fields are populated
