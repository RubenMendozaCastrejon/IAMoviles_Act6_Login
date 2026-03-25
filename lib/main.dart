import 'package:flutter/material.dart';
// Importación de las páginas que estarán en la carpeta 'archivos'
import 'archivos/inicio_pagina.dart';
import 'archivos/formulario_login.dart';
import 'archivos/formulario_registro.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Investech',
      // Definimos un tema visual acorde a una Fintech de inversiones
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E), // Azul oscuro institucional
          primary: const Color(0xFF1A237E),
          secondary: const Color(0xFF00C853), // Verde para éxito/ganancias
        ),
        useMaterial3: true,
      ),
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de navegación para movernos entre las 3 páginas
      routes: {
        '/': (context) => const InicioPagina(),
        '/login': (context) => const FormularioLogin(),
        '/registro': (context) => const FormularioRegistro(),
      },
    );
  }
}