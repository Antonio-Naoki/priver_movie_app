// Con esta funcion muestro solo 2 digitos de un double y lo convierto en String.

import 'package:flutter/material.dart';

String formatearDecimal(double? numero) {
  if (numero == null) {
    return "";
  } else {
    return numero.toStringAsFixed(1);
  }
}

// class ExpandableTextState extends ChangeNotifier {
//   bool _isExpanded = false;

//   bool get isExpanded => _isExpanded;

//   void expand() {
//     _isExpanded = true;
//     notifyListeners();
//   }

//   void collapse() {
//     _isExpanded = false;
//     notifyListeners();
//   }
// }