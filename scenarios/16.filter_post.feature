Feature: Filtrar post


@user1 @web

Scenario: Como usuario creo un post, filtro por publicado y valido que esté en la lista 

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

  And I click on new post
  
  And I enter post title "<FILTEREDPOSTTITLE>"

  And I enter post content "<POSTCONTENT>"

  And I take a screenshot

  And I publish post

  And I click publish button

  And I click confirm publish button

  And I wait for 2 seconds

  And I click the go back post list

  And I take a screenshot

  And I wait for 2 seconds

  And I click filter post list

  And I take a screenshot

  And I click filter published post

  And I take a screenshot

  Then I review the item of list "<FILTEREDPOSTTITLE>"