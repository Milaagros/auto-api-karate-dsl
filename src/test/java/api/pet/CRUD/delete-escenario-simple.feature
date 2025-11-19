Feature: Eliminar  mascota

  Background:
    * url 'https://petstore3.swagger.io/api/v3'

  Scenario: Eliminar  por  ID
    *  def  petId =  __arg.petId
    Given  path  'pet',  petId
    When  method delete
    Then status  200


