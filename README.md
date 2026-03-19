
# Mi prompt a la AI
lenguaje dart, utilizando solo filas y columnas realiza la pantalla con el codigo que voy a proporcionar y que sea lo mas parecido posible (si queda igual mejor); codigo:import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lavanderia App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lavanderia", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.account_circle)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Inicio Rapido",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // 3 Imágenes de productos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildProductImage(
                  'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?q=80&w=150',
                ),
                _buildProductImage(
                  'https://images.unsplash.com/photo-1610557892470-55d9e80c0bce?q=80&w=150',
                ),
                _buildProductImage(
                  'https://images.unsplash.com/photo-1563453392212-326f5e854473?q=80&w=150',
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/lavado.png',
              width: 350,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Nuestra sucursal principal cuenta con máquinas de autoservicio y personal capacitado para ayudarte en todo momento.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              // Changed navigation as no '/'' route is explicitly defined or needed for a simple page.
              // A print statement is used to indicate the button press.
              onPressed: () {
                debugPrint('Volver a Página 1 pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Volver a Página 1"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para las miniaturas de productos (Ahora cuadrados con bordes redondeados)
  Widget _buildProductImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        15,
      ), // Controla qué tan redondeadas se ven las esquinas
      child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
    );
  }
}

## Mi diseño
<img width="469" height="740" alt="image" src="https://github.com/user-attachments/assets/225e6dce-6f7a-47ad-abf5-8e7641b3194e" />
