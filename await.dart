//FUNCION ASYNCRONA 
// función asíncrona marcada con la palabra clave async
//Este tipo de función permite usar la palabra clave await para esperar que los Futures se completen sin bloquear el hilo principal.
Future<void> imprimirMensaje() async {
  print('Esperando pedido del usuario...');
  //  Usa await para pausar la ejecución de la función hasta que se complete el Future retornado por buscarOrdenUsuario(). 
  var orden = await buscarOrdenUsuario();
  print('Tu orden es: $orden');
}

//Esta función retorna un Future que se resuelve después de un retardo de 4 segundos, simulando una operación de I/O, como podría ser una consulta a una base de datos o una llamada a una API.
Future<String> buscarOrdenUsuario() {
  //La función Future.delayed toma dos argumentos: la duración del retardo (Duration(seconds: 4)) y la función a ejecutar una vez completado el retardo. Aquí simplemente retorna la cadena 'cafe con leche'.
  return Future.delayed(const Duration(seconds: 5), () => 'cafe con leche');
}

void main() async {
  //La función countSegundos se llama primero, y está diseñada para contar segundos hasta un valor dado. En este caso, cuenta hasta 4 segundos, imprimiendo cada segundo en consola.
  countSegundos(2);
  //Después de iniciar el contador, se llama a imprimirMensaje con await, asegurando que main espere a que imprimirMensaje se complete antes de finalizar.
  await imprimirMensaje();
}

 //Esta función ejecuta un bucle que crea un Future para cada segundo hasta el número dado, usando Future.delayed. Cada Future se resolverá después de un número específico de segundos, imprimiendo el número de segundos que han pasado. Esto ocurre paralelamente a otras operaciones asíncronas.
void countSegundos(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
