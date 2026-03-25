import 'package:flutter/material.dart';

class InicioPagina extends StatelessWidget {
  const InicioPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                'Bienvenido',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Investech te ofrece las mejores herramientas de inversión. ¡Suscríbete!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const Spacer(),
              // Ilustración central
              Image.network(
                'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/Gemini_Generated_Image_lmrz7plmrz7plmrz-removebg-preview.png', // Cambia por tu logo de Investech
                height: 250,
              ),
              const Spacer(),
              // Botón Login (Estilo Outline)
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 1.5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  child: const Text('Login', style: TextStyle(color: Colors.black, fontSize: 18)),
                ),
              ),
              const SizedBox(height: 20),
              // Botón Sign Up (Estilo Sólido Azul)
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0095FF),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/registro'),
                  child: const Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}