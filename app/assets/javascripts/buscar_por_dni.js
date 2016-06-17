function buscarPorDni(){
   $("#boton_buscar").click(function(){
     var dni = $("#dni").val();
     $.ajax({
        url: "/employees/buscar_por_dni/" + dni,
        dataType: "JSON",
        timeout: 10000,
        beforeSend: function(){
           $("#respuesta").html("Cargando...");
        },
        error: function(){
           $("#respuesta").html("Error al intentar buscar el empleado. Por favor intente más tarde.");
        },
        success: function(res){
           if(res){
              $("#respuesta").html('<a href="/employees/'+res.id+'"> '+res.nombre+' ' + res.apellido + ' </a>');
           }else{
              $("#respuesta").html("El dni no le pertenece a ningún empleado.");
           }
        }
     })
  });
};
$(document).ready(function(){
   buscarPorDni();
});