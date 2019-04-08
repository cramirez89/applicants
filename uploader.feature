Feature: Receive a file, verify if it is .pdf, transform into .txt and uploaded to S3


@ValidUpload
Scenario Outline: Verify if file is .PDF or not

  Given an endpoint POST with "<authorization>" required
  When there is a request with "<file>"
  Then the file is loaded and transform the file to .TXT
  And upload to "<bitbucket>" both files .PDF and .TXT
  And responds notification "<answer>"

Examples:
|authorization|file |bitbucket|answer|
|Válido       |.PDF |S3       |true  |   
|Válido       |.DOC |S3       |false |
