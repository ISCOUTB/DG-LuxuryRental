import 'package:flutter/material.dart';
import 'package:testapp/src/Model/yatch_model.dart';
import 'package:testapp/src/Utils/colors.dart';

class DisplayItemsHorizontal extends StatelessWidget {
  final Yacht yacht; // Modelo de yate
  const DisplayItemsHorizontal({super.key, required this.yacht});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 18, bottom: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen del yate
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              tag: yacht.image,
              child: Image.asset(
                yacht.image,
                fit: BoxFit.cover,
                height: 200,
                width: 250,
              ),
            ),
          ),
          // Información del yate
          Container(
            height: 140,
            width: 250,
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nombre del yate
                Text(
                  yacht.name,
                  maxLines: 2,
                  style: const TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                // Ubicación del yate
                Text(
                  yacht.location,
                  maxLines: 1,
                  style: const TextStyle(
                    color: kFontColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                // Precio y botón de favorito
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ ${yacht.pricePerDay}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: kBlueTextColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 41,
                      height: 30,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: kBlueColor.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.bookmark,
                        color: kBackgroundColor,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Calificación del yate
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      yacht.rating,
                      style: const TextStyle(
                        color: kFontColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
