
function(pet)  {
   //  pasamos el  objeto  como {  pet:  pet }
   var  createResult  = karate.call('classpath:api/pet/CRUD/post-json-escenario.feature',  {  pet: pet  });
   var  response =  createResult.response;
   karate.log('ID  enviado:', pet.id);
   karate.log('ID  recibido:',  response.id);

   karate.call('classpath:api/pet/CRUD/get-escenario-simple.feature',  {  petId: response.id  });

   var deletePayload  =  { petId:  response.id  };
   var deleteResult  =  karate.call('classpath:api/pet/CRUD/delete-escenario-simple.feature', deletePayload);

   return  { created:  response,  deleted: deleteResult.status  };
}

