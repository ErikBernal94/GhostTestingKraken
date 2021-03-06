Feature: Crear una pagina pero no es publicada

@user1 @web

Scenario: Creo una pagina pero no es publicada

  Given I navigate to page "<GHOST-URL>"

  And I wait for 5 seconds

  When I take a screenshot

  And I enter email "<USERNAME1>"

  And I wait for 2 seconds

  And I enter password "<PASSWORD1>"

  And I wait for 2 seconds

  And I take a screenshot

  And I click next

  And I wait for 7 seconds

  And I take a screenshot

  And I click on Pages

  And I take a screenshot

  And I click on New page

  And I take a screenshot
  
  And I enter page title "<CREATEDPAGENOTPUBLISHEDTITLE>"

  And I take a screenshot

  And I enter page content "<PAGECONTENT>"

  And I take a screenshot

  And I wait for 2 seconds

  And I click the go back page list

  And I wait for 2 seconds
  
  And I take a screenshot

  Then I review the page not published of list "<CREATEDPAGENOTPUBLISHEDTITLE>"