// ignore: file_names
import 'package:flutter/material.dart';

class YachtDetailPage extends StatelessWidget {
  const YachtDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, size: 28),
                  onPressed: () => Navigator.pop(context),
                ),
                const Icon(Icons.menu, size: 28),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Kimset",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_boat, size: 24),
              SizedBox(width: 8),
              Text("134 ft", style: TextStyle(fontSize: 16)),
              SizedBox(width: 24),
              Icon(Icons.speed, size: 24),
              SizedBox(width: 8),
              Text("15.5 kn", style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 16),
          Center(
            child: Image.asset(
              'lib/imagenes/yremovebg-preview.png', // Cambia por la ruta correcta de tu imagen
              height: 200,
            ),
          ),
          const Text(
            '360°',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$18 200 / Day",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.king_bed_outlined),
                        SizedBox(width: 4),
                        Text("4 cabins"),
                        SizedBox(width: 16),
                        Icon(Icons.person_outline),
                        SizedBox(width: 4),
                        Text("8 guests"),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 32),
                  ),
                  child: const Text("Rent", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Specification", style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
