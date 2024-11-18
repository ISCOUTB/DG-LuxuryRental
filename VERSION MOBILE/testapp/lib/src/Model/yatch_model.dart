import 'package:flutter/cupertino.dart';

class Yacht {
  final String name;
  final String location;
  final String pricePerDay; // Precio en COP
  final String length; // Largo en metros
  final String width; // Ancho en metros
  final String capacity; // Capacidad de pasajeros
  final String type; // Tipo de yate
  final String rating; // Calificación
  final String image; // Ruta de imagen
  final Color color; // Color de la tarjeta o fondo

  Yacht({
    required this.name,
    required this.location,
    required this.pricePerDay,
    required this.length,
    required this.width,
    required this.capacity,
    required this.type,
    required this.rating,
    required this.image,
    required this.color,
  });
}

List<Yacht> yachtList = [
  Yacht(
    name: "Luxury Pearl Cruiser",
    location: "Cartagena, Colombia",
    pricePerDay: "3,500,000",
    length: "25",
    width: "8",
    capacity: "15",
    type: "Luxury",
    rating: "4.8",
    image: "assets/images/image1.jpg",
    color: const Color(0xff7aafff),
  ),
  Yacht(
    name: "Ocean Breeze 2024",
    location: "Cartagena, Colombia",
    pricePerDay: "2,800,000",
    length: "20",
    width: "6",
    capacity: "12",
    type: "Standard",
    rating: "4.5",
    image: "assets/images/image2.jpg",
    color: const Color(0xff63bed8),
  ),
  Yacht(
    name: "The Serenity Voyager",
    location: "Cartagena, Colombia",
    pricePerDay: "1,700,000",
    length: "18",
    width: "5",
    capacity: "10",
    type: "Budget",
    rating: "4.0",
    image: "assets/images/image3.jpg",
    color: const Color(0xffad85e6),
  ),
  Yacht(
    name: "Sunset Delight",
    location: "Cartagena, Colombia",
    pricePerDay: "4,000,000",
    length: "30",
    width: "9",
    capacity: "20",
    type: "Luxury",
    rating: "5.0",
    image: "assets/images/image4.jpg",
    color: const Color(0xff44aeb2),
  ),
  Yacht(
    name: "Caribbean Star",
    location: "Cartagena, Colombia",
    pricePerDay: "3,200,000",
    length: "22",
    width: "7",
    capacity: "14",
    type: "Premium",
    rating: "4.7",
    image: "assets/images/image7.jpg",
    color: const Color(0xffad85e6),
  ),
  Yacht(
    name: "Blue Horizon",
    location: "Cartagena, Colombia",
    pricePerDay: "2,000,000",
    length: "20",
    width: "6",
    capacity: "12",
    type: "Standard",
    rating: "4.3",
    image: "assets/images/image6.jpg",
    color: const Color(0xff44aeb2),
  ),
  Yacht(
    name: "Lagoon Explorer",
    location: "Cartagena, Colombia",
    pricePerDay: "3,900,000",
    length: "28",
    width: "8",
    capacity: "18",
    type: "Luxury",
    rating: "4.9",
    image: "assets/images/image7.jpg",
    color: const Color(0xff7aafff),
  ),
  Yacht(
    name: "Silver Dolphin",
    location: "Cartagena, Colombia",
    pricePerDay: "2,500,000",
    length: "21",
    width: "7",
    capacity: "13",
    type: "Premium",
    rating: "4.6",
    image: "assets/images/image8.jpg",
    color: const Color(0xff63bed8),
  ),
  Yacht(
    name: "Coastal Charm",
    location: "Cartagena, Colombia",
    pricePerDay: "1,900,000",
    length: "18",
    width: "6",
    capacity: "10",
    type: "Budget",
    rating: "4.2",
    image: "assets/images/image9.jpg",
    color: const Color(0xffad85e6),
  ),
  Yacht(
    name: "Golden Wave",
    location: "Cartagena, Colombia",
    pricePerDay: "3,600,000",
    length: "26",
    width: "8",
    capacity: "16",
    type: "Luxury",
    rating: "4.8",
    image: "assets/images/image10.jpg",
    color: const Color(0xff7aafff),
  ),
];
