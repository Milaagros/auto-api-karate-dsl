Feature: Validar creación de mascotas usando POST /pet

  Background:
    * url baseUrl
    * def requestBody = read('classpath:examples/pet/data/request-body.json')
    * def dynamicId = Math.floor(Math.random() * 100) + 1
    * set requestBody.id = dynamicId

  Scenario: Validar que la respuesta tenga status 200 y contenga solo el id
    Given path '/pet'
    And request requestBody
    When method post
    Then status 200
    And match response.id == dynamicId
    * print 'Respuesta:', response

  Scenario: Validar que la respuesta tenga status 200 y coincida con todo el body esperado
    Given path '/pet'
    And request requestBody
    When method post
    Then status 200
    * def expectedResponse = JSON.parse(JSON.stringify(requestBody))
    And match response == expectedResponse
    * print 'Respuesta:', response