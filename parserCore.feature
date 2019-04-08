Feature: Receive a file and extract the email, phone and p.l's


@extractInfo
Scenario Outline: Extract the email, phone and p.l's

  Given an endpoint POST with "<authorization>" required
  When there is a request with "<file>"
  Then the file is loaded and extract the information
  And responds notification "<answer>"

Examples:
|authorization|file |answer|
|Válido       |.PDF |true  |   
|Válido       |.DOC |false |
