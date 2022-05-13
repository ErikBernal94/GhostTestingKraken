Feature: crear miembro validando error


@user1 @web

Scenario: Como usuario creo valido errores creando un miembro

  Given I navigate to page "<GHOST-URL>"

  And I wait for 5 seconds

  When I take a screenshot

  And I enter email "<USERNAME1>"

  And I wait for 2 seconds

  And I enter password "<PASSWORD1>"

  And I take a screenshot

  And I wait for 2 seconds

  And I click next

  And I wait for 7 seconds

  And I click the go Members

  And I take a screenshot

  And I click button New member

  And I enter name member "<NAME-MEMBER-CREATE>"

  And I enter email member "<EMAIL-MEMBER-CREATE-ERROR>"

  And I take a screenshot

  And I click button Save member
  
  And I take a screenshot

  Then I check error email