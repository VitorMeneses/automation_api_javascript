Feature: As an unlogged user in the api I can not delete a particular user

Scenario: As an unlogged user in the api I can not delete a particular user

  Given an "anonymous" api consumer
  When he deletes a random resource of "users"
  Then he gets a "AUTHENTICATION_KO" response
  And a "AUTHENTICATION_KO" info message
  And the resource is still available
