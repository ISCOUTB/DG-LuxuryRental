import 'package:flutter/material.dart';
import 'package:testapp/src/Model/yatch_model.dart';
import 'package:testapp/src/Utils/colors.dart';

class PopularYachtItems extends StatelessWidget {
  final Yacht yacht;
  const PopularYachtItems({super.key, required this.yacht});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Imagen del yate con calificación
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                // Imagen
                Positioned(
                  top: 0,
                  right: 12,
                  left: 0,
                  bottom: 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      yacht.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Calificación
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: kBlueColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 2,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            yacht.rating,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Información del yate
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Nombre del yate
                  Text(
                    yacht.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Ubicación del yate
                  Text(
                    yacht.location,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kFontColor.withOpacity(0.6),
                    ),
                  ),
                  // Dimensiones y precio
                  Row(
                    children: [
                      Text(
                        "${yacht.length}ft | ${yacht.capacity}pax",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$${yacht.pricePerDay}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kBlueTextColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
