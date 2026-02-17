Feature: API testing Get, Update and Search new pet

  Background:
    * url baseUrl
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json' }
    * def newPet = callonce read('classpath:petstore/newPet.feature')
    * def petId = newPet.petId
    * print 'Mascota creada desde newPet.feature con ID =>', petId


  Scenario: Consultar la mascota previamente creada con el ID
    Given path '/pet/' + petId
    When method GET
    Then status 200
    And match (response.id + '') == petId

  Scenario: Editar nombre y estado de mascota
    Given path '/pet/'
    * def jsonUpdate = read('classpath:testdata/pet-update.json')
    * set jsonUpdate.id = petId
    And request jsonUpdate
    When method POST
    Then status 200
    And match (response.id + '') == petId

  Scenario: Consultar la mascota por el estado
    Given path '/pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200