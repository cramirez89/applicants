#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Create an Applicant in the database.

  @upload
  Scenario Outline: Upload an applicant into the database.
    Given an endpoint POST with <authorization> required
    When there is a request with <file>
    Then the file is tranformed for the <uploader>
    And the <parser controller> transform the file into a Json file
    Then the <applicants controller> upload the file into the data base
    And response a notification <message>


    Examples: 
      | authorization  | file  | message  |
      | valid          | .pdf  | success  |
      | invalid        | .docx | Fail     |
