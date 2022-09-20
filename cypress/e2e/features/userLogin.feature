Feature: Login Page

  Feature Login Page will work differently depending on the user credentials

  Background: 
    Given The user visits the Swag Labs website
  Scenario: The user should be able to login successfully when the username and the password are correct
    When The user enters the username "standard_user"
    And The user enters the password "secret_sauce"
    And The user clicks on the login button
    Then The user should be logged in and navigated to the products page
  Scenario: A locked out user should be presented with an error message when trying to log in
    When The user enters the username "locked_out_user"
    And The user enters the password "secret_sauce"
    And The user clicks on the login button
    Then The error message "Epic sadface: Sorry, this user has been locked out." is displayed
