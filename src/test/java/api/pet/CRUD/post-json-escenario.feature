
Feature: Crear  mascota  usando función  JS  para construir  el  request

  Background:
    *  url baseUrl

  Scenario: Crear  mascota  con cuerpo  generado  dinámicamente
    Given path  'pet'
    And  headers {  Content-Type:  'application/json' }
   #  ahora  sí existe  la  variable 'pet'
    *  def  requestBody =  call  read('classpath:api/pet/Utils/createRequest.js') pet
    And  request  requestBody
    When method  post
    Then  status 200
    And  match  response.id ==  pet.id
    And  match response.name  ==  pet.name
    * print  'Mascota  creada con  id:',  pet.id





