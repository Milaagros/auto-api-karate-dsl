
function(pet) {
    // Aquí  'pet'  es  el objeto  que  recibes  desde petflow.js
    // Puedes  transformarlo  o  enriquecerlo si  lo  necesitas
   var  request  = {
       id:  pet.id,
       name: pet.name,
       category:  pet.category,
       photoUrls: pet.photoUrls,
       tags:  pet.tags,
       status: pet.status
    };

    // Si  quieres  añadir  lógica extra,  por  ejemplo  defaults:
   if  (!request.status) {
       request.status  =  'available';
   }

   return  request;
}

