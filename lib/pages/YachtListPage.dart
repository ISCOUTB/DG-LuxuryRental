import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_user/pages/checkout.dart';
import 'package:login_user/pages/login_page.dart';

class YachtListPage extends StatefulWidget {
  const YachtListPage({super.key});

  @override
  _YachtListPageState createState() => _YachtListPageState();
}

class _YachtListPageState extends State<YachtListPage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 300,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 300,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luxury Rental ⚓'),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 14, 13, 13),
          fontSize: 30,
          fontWeight: FontWeight.w100,
        ),
        centerTitle: false,
        backgroundColor:
            const Color.fromARGB(255, 223, 223, 223).withOpacity(0.8),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/water-free-photo.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          // Agregado para permitir el desplazamiento vertical
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Cambiado a center
            children: [
              Center(
                // Agregado para centrar el texto
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '¡Navega en el lujo!',
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Descubre yates increíbles listos para ser alquilados.',
                  style: GoogleFonts.lobster(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back,
                          size: 30, color: Colors.white),
                      onPressed: _scrollLeft,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            yachtCard(
                              "Kimset",
                              "\$18,200 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "Este lujoso yate ofrece las siguientes comodidades:",
                              guests: 12,
                              cabins: 6,
                              length: 312,
                              context: context,
                            ),
                            yachtCard(
                              "Hospitality",
                              "\$17,400 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "El yate ideal para eventos inolvidables con:",
                              guests: 10,
                              cabins: 5,
                              length: 250,
                              context: context,
                            ),
                            yachtCard(
                              "Apricity",
                              "\$19,800 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "Diseñado para el confort y la elegancia, ofrece:",
                              guests: 14,
                              cabins: 7,
                              length: 330,
                              context: context,
                            ),
                            yachtCard(
                              "Ocean Breeze",
                              "\$20,500 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "Yate premium con características de última generación.",
                              guests: 15,
                              cabins: 8,
                              length: 350,
                              context: context,
                            ),
                            yachtCard(
                              "Luxury Dream",
                              "\$22,000 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "Disfruta de un viaje inolvidable con todas las comodidades.",
                              guests: 16,
                              cabins: 9,
                              length: 400,
                              context: context,
                            ),
                            yachtCard(
                              "Sea Explorer",
                              "\$19,200 / Day",
                              'lib/imagenes/yremovebg-preview.png',
                              "Explora el mar en un yate equipado para la aventura.",
                              guests: 12,
                              cabins: 6,
                              length: 300,
                              context: context,
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward,
                          size: 30, color: Colors.white),
                      onPressed: _scrollRight,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Galería de Experiencias de Clientes como cartas
              // Añadir esta línea si usas Google Fonts

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Galería de Experiencias de Clientes',
                    style: GoogleFonts.lobster(
                      // Usamos Montserrat como ejemplo
                      textStyle: const TextStyle(
                        fontSize: 50, // Aumentamos el tamaño para más impacto
                        fontWeight:
                            FontWeight.bold, // Hacemos la fuente más gruesa
                        color: Colors.white, // Mantener el color blanco
                        letterSpacing:
                            1.5, // Espaciado para hacer el texto más elegante
                      ),
                    ),
                    textAlign:
                        TextAlign.center, // Centramos el texto horizontalmente
                  ),
                ),
              ),

              const SizedBox(height: 8),
              SizedBox(
                height: 400, // Tamaño ajustado para las cartas grandes
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 350, // Ajuste para tamaño tipo carta grande
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/imagenes/Boat4.jpg'), // Imagen de la experiencia
                          fit: BoxFit
                              .cover, // Para cubrir completamente la carta sin deformarse
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          // Añadir sombra a las cartas
                          BoxShadow(
                            color: Color.fromARGB(255, 243, 239, 239),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 350, // Mismo tamaño para uniformidad
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/imagenes/Boat1.jpg'), // Imagen de la experiencia
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 253, 252, 252),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 350, // Mismo tamaño para uniformidad
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/imagenes/Boat3.jpeg'), // Imagen de la experiencia
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 253, 252, 252),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    // Puedes agregar más cartas de imágenes aquí
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 350, // Mismo tamaño para uniformidad
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/imagenes/Boat2.jpg'), // Imagen de la experiencia
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 253, 252, 252),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              // Sección de contacto
              Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(16.0),
                width: double
                    .infinity, // Asegúrate de que ocupe todo el ancho disponible
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Contáctanos',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Acerca de nosotros',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Derechos reservados © 2024 Luxury Rental',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 20), // Espacio adicional
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centrar los íconos
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.instagram,
                              color: Colors.white),
                          onPressed: () {
                            // Acciones para Instagram
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.facebook,
                              color: Colors.white),
                          onPressed: () {
                            // Acciones para Facebook
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.whatsapp,
                              color: Colors.white),
                          onPressed: () {
                            // Acciones para WhatsApp
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget yachtCard(
    String name,
    String price,
    String imagePath,
    String description, {
    required int guests,
    required int cabins,
    required int length,
    required BuildContext context,
  }) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "- Capacidad de huéspedes: $guests",
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                Text(
                  "- Cabinas: $cabins",
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                Text(
                  "- Longitud: $length ft",
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 20),
                // Botón de Reservar
                SizedBox(
                  width: double.infinity,
                  child: Material(
                    elevation:
                        25, // Aumenta la elevación para asegurar que se vea la sombra
                    shadowColor: Colors.black, // Color de la sombra
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Color del botón
                        padding: const EdgeInsets.symmetric(
                            vertical: 12), // Padding del botón
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Bordes redondeados
                        ),
                      ),
                      child: const Text(
                        'Reservar',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
