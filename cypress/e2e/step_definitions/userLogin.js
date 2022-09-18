import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

import { LoginPage } from "../../pages/LoginPage";

const loginPage = new LoginPage();

Given("The user visits the Swag Labs website", () => {
  cy.visit("/");
});
When("The user enters the valid username {string}", (username) => {
  loginPage.typeUsername(username);
});
When("The user enters the correct password {string}", (password) => {
  loginPage.typePassword(password);
});
When("The user clicks on the login button", () => {
  loginPage.clickLogin();
});
Then("The user should be logged in and navigated to the products page", () => {
  cy.get("#inventory_container");
});
