Feature: Login Page

  Feature Login Page will work differently depending on the user credentials

  Background: 
    Given The user visits the Swag Labs website
  Scenario: The user should be able to login successfully when the username and the password are correct
    When The user enters the valid username "standard_user"
    And The user enters the correct password "secret_sauce"
    And The user clicks on the login button
    Then The user should be logged in and navigated to the products page
