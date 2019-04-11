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
Feature: Receive a file and extract the email, phone and p.l's

  @extractInfo
  Scenario Outline: Extract the email, phone and p.l's
    Given an endpoint POST with <authorization> required
    When there is a request with"<file>
    Then the file is loaded and extract the information
    And responds notification <answer>

    Examples:
      | authorization | file | answer |
      | Válido        | .pdf | true   |   
      | Válido        | .docx | false  |
