Feature: API testing New Pet

  Background:
    * url baseUrl
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json' }

  Scenario: Aumentar una mascota en la tienda
    Given path '/pet'
    And request read('classpath:testdata/pet-create.json')
    When method POST
    Then status 200
    * def petId = response.id + ''
    * karate.set('petId', petId)