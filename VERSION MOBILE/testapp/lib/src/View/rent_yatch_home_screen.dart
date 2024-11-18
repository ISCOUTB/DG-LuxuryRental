import 'package:flutter/material.dart';
import 'package:testapp/src/Utils/colors.dart'; // Asegúrate de tener un modelo de yate
import 'package:testapp/src/Model/yatch_model.dart';
import 'package:testapp/src/View/Widget/horizontal_scroll.dart';
import 'package:testapp/src/View/Widget/popular_place.dart'; // Cambié el widget de lugar popular a popular_yacht
import 'package:testapp/src/View/yatch_rent_detail.dart'; // Cambié el nombre de la vista

class YachtRentHomeScreen extends StatefulWidget {
  const YachtRentHomeScreen({super.key});

  @override
  State<YachtRentHomeScreen> createState() => _YachtRentHomeScreenState();
}

class _YachtRentHomeScreenState extends State<YachtRentHomeScreen> {
  String dropdownCapacity =
      "2-4 Persons "; // Cambié "Beds" por "Capacity" y "Persons"
  String dropdownFilter = "Sort by: Price";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(155),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: topBarItems(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Agregado para permitir el desplazamiento
        child: Column(
          children: [
            SizedBox(
              height: 370,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: yachtList.length, // Cambié houseList por yachtList
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => YachtRentDetail(
                            yacht: yachtList[
                                index], // Adapté la variable a 'yacht'
                          ),
                        ),
                      );
                    },
                    child: DisplayItemsHorizontal(
                      yacht: yachtList[index], // Adapté para mostrar yates
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            popularYacht(), // Cambié el widget a popularYacht
            Padding(
              // Ajustado para manejar correctamente el espacio
              padding: const EdgeInsets.only(bottom: 15),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                reverse: true,
                physics: const ScrollPhysics(),
                itemCount: yachtList.length, // Cambié houseList por yachtList
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => YachtRentDetail(
                            yacht: yachtList[index], // Cambié houseRoom a yacht
                          ),
                        ),
                      );
                    },
                    child: PopularYachtItems(
                      yacht: yachtList[index], // Cambié houseRoom a yacht
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding popularYacht() {
    // Cambié el nombre a popularYacht
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: const Text(
            "Popular Yachts", // Cambié "Popular Place" por "Popular Yachts"
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
            ),
          ),
          trailing: Text(
            "View All",
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
              decorationColor: kFontColor.withOpacity(0.7),
              color: kFontColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }

  Column topBarItems() {
    return Column(
      children: [
        ListTile(
          title: const Text(
            "My Location",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: kFontColor,
            ),
          ),
          subtitle: const Row(
            children: [
              Text(
                "Cartagena, Colombia ", // Puedes cambiar la ubicación según lo desees
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          trailing: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // Elimina los DropdownButton
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Capacity: 2-4 Persons", // Texto estático como ejemplo
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Sort by: Price", // Texto estático como ejemplo
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
