import 'package:flutter/material.dart';
import 'package:testapp/src/Utils/colors.dart'; // Asegúrate de tener un modelo de yate
import 'package:testapp/src/Model/yatch_model.dart';

class YachtRentDetail extends StatelessWidget {
  final Yacht yacht;
  const YachtRentDetail({super.key, required this.yacht});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Hero(
                  tag: yacht.image,
                  child: Image.asset(
                    yacht.image,
                    fit: BoxFit.cover,
                    height: size.height * 0.43,
                    width: size.width,
                  ),
                ),
              ),
              // for back button
              Positioned(
                top: 40,
                right: 20,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const InkWell(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // for price
              Positioned(
                bottom: -30,
                left: 20,
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "\$ ${yacht.pricePerDay}/Day",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 6, 41, 57),
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              // for bookmark icon
              Positioned(
                bottom: -120,
                right: 50,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(0, 5))
                      ]),
                  child: Icon(
                    Icons.bookmark,
                    color: kBackgroundColor,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    yacht.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  yacht.location,
                  style: TextStyle(
                    height: 1.2,
                    color: kFontColor.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Yacht Features",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 2,
                    ),
                  ),
                  Text(
                    "Enjoy luxury and comfort on the water with our premium yacht rentals. Perfect for family outings, parties, or romantic getaways.",
                    style: TextStyle(
                      fontSize: 15,
                      color: kFontColor.withOpacity(0.7),
                    ),
                  ),
                  const Text(
                    "Read More",
                    style: TextStyle(
                      fontSize: 18,
                      height: 2,
                      fontWeight: FontWeight.w500,
                      color: kBlueTextColor,
                      decoration: TextDecoration.underline,
                      decorationColor: kBlueTextColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      yachtInfo("images/icon1.png", yacht.length),
                      yachtInfo("images/icon4.png", yacht.capacity),
                      yachtInfo(
                          "images/icon3.png", "\$${yacht.pricePerDay}/Day"),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff002140),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(22),
                        child: Text(
                          "Book The Yacht",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container yachtInfo(image, value) {
    return Container(
      height: 50,
      width: 113,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 20,
          ),
          const SizedBox(height: 3),
          Text(value)
        ],
      ),
    );
  }
}
