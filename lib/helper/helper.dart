// Con esta funcion muestro solo 2 digitos de un double y lo convierto en String.

String formatearDecimal(double? numero) {
  if (numero == null) {
    return "";
  } else {
    return numero.toStringAsFixed(1);
  }
}