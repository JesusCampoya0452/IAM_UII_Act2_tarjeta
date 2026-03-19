import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de "Debug"
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
        title: const Text(
          "Lavanderia", 
          style: TextStyle(color: Colors.white)
        ),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.account_circle, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column( // <--- ESTRUCTURA PRINCIPAL (COLUMNA)
          children: <Widget>[
            const SizedBox(height: 20),
            
            // Título
            const Text(
              "Inicio Rapido",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            
            // 3 Imágenes de productos alineadas horizontalmente
            Row( // <--- ESTRUCTURA SECUNDARIA (FILA)
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
            
            // Imagen principal (Banner)
            Image.network(
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/lavado.png',
              width: 350,
              height: 200,
              fit: BoxFit.cover,
            ),
            
            // Texto descriptivo
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Nuestra sucursal principal cuenta con máquinas de autoservicio y personal capacitado para ayudarte en todo momento.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            
            // Botón
            ElevatedButton(
              onPressed: () {
                debugPrint('Volver a Página 1 pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text("Volver a Página 1"),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para las miniaturas de productos
  Widget _buildProductImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15), 
      child: Image.network(
        url, 
        width: 80, 
        height: 80, 
        fit: BoxFit.cover
      ),
    );
  }
}