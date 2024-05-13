import 'dart:io'; // Importa la biblioteca de entrada/salida para interacción con el usuario.

void main() {
  print("Ingrese el primer número:");
  double num1 = leerNumero();
  
  print("Ingrese el segundo número:");
  double num2 = leerNumero();
  
  double suma = sumar(num1, num2);
  print("La suma de $num1 y $num2 es: $suma");
}

// Función para leer un número desde la consola.
double leerNumero() {
  String? input = stdin.readLineSync();
  return double.tryParse(input ?? '') ?? 0.0; // Convierte la entrada en un número o devuelve 0.0 si es nulo o inválido.
}

// Función para sumar dos números.
double sumar(double a, double b) {
  return a + b;
}

/***
INFO SOBRE FUNCION Síncrona
Características de una Función Síncrona:
Bloqueante: Cada operación dentro de una función síncrona bloquea el hilo de ejecución hasta que se completa. Por ejemplo, stdin.readLineSync() bloquea el programa hasta que el usuario ingrese algo y presione enter.

Secuencial: Las operaciones se realizan en el orden en que aparecen en el código. Si una línea de código requiere tiempo para completarse, todo el proceso se detiene hasta que esa línea termine.

Este tipo de función es adecuada para tareas rápidas y simples que no necesitan esperar a recursos externos, como cálculos simples, modificaciones de estructuras de datos en memoria, etc. Para operaciones que involucran E/S (lectura/escritura de archivos, solicitudes de red), es recomendable usar funciones asíncronas para no bloquear el hilo principal y mantener la aplicación responsiva.
*/
