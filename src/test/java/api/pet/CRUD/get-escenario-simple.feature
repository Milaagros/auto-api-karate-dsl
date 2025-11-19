Feature:  Obtener  mascota  por ID

  Background:
    * url 'https://petstore3.swagger.io/api/v3'

  Scenario:  Validar que  la  mascota  existe

    *  def petId  =  __arg.petId
    Given  path  'pet', petId
    When method  get
    Then  status  200
    And match  response.id  ==  '#number'
    * print  'Mascota  obtenida con  id:',  response.id







