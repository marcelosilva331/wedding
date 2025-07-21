import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nosso Casamento',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://marketplace.canva.com/EAGDtE5SVp8/1/0/1131w/canva-green-watercolor-hand-drawn-floral-background-document-5mXnVOZIHk8.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Maya & Marcelo',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      '20/09/2025 às 16:00',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Chácara Sonho Feliz\nPonte Alta, DF-180 - Gama, Brasília - DF',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC9A959),
                          foregroundColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () => _launchUrl(
                            'https://docs.google.com/forms/d/e/1FAIpQLSeNGG2Ja73kBKx_NDq01w1h7ghK5G9s7REelH2TIy-GAfXhtw/viewform?usp=header'),
                        child: const Text('Confirmar Presença',
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC9A959),
                          foregroundColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () => _launchUrl(
                            'https://www.google.com/maps/place/Ch%C3%A1cara+Sonho+Feliz/@-15.9892853,-48.1167228,18.8z/data=!4m14!1m7!3m6!1s0x935bd501105f0e21:0x11e3cda19021e8e6!2sCh%C3%A1cara+Sonho+Feliz!8m2!3d-15.9894141!4d-48.1168955!16s%2Fg%2F11c5zt4750!3m5!1s0x935bd501105f0e21:0x11e3cda19021e8e6!8m2!3d-15.9894141!4d-48.1168955!16s%2Fg%2F11c5zt4750?hl=pt-BR&entry=ttu&g_ep=EgoyMDI1MDcxNi4wIKXMDSoASAFQAw%3D%3D'),
                        child: const Text('Ver Localização',
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Lista de Presentes',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Optamos por não receber presentes físicos.\nCaso queira nos presentear, nossa chave PIX é:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 6.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '61998354024',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    blurRadius: 8.0,
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0))
                              ]),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy, color: Colors.white),
                          onPressed: () {
                            Clipboard.setData(
                                const ClipboardData(text: '61998354024'));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Chave PIX copiada para a área de transferência!')),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
