
import 'package:flutter/material.dart';

import 'app_widget.dart';

// Desde o Container ate fechar ele e o estado global
// A partir do Text e o estado local

main() {
  runApp(const AppWidget());
}

// Quando uso o StatelessWidget e para um estado que nao vai ser alterado, sempre vai manter o mesmo valor
// Mas quando eu uso o StatefulWidget e pq ele pode ser alterado
