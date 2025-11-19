Feature: Flujo  completo  de  mascotas

  Scenario:  Crear,  validar y  eliminar  mascotas
    *  def  pets =  read('classpath:api/pet/CRUD/data/pets.json')
    *  def  petFlow  = read('classpath:api/pet/Utils/petFlow.js')
    *  def   results  =  karate.map(pets, petFlow)
    *  print  'Resultados  del  flujo:', results

