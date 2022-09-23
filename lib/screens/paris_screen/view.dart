import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';
import '../../core/helper_methods.dart';
import '../favourite_screen/view.dart';
import '../locations_screen/view.dart';
import '../menu_bar_screen/view.dart';
import '../my_trip_screen/view.dart';

class ParisScreen extends StatelessWidget {
  const ParisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff111111),
          ),
        ),
        title: const Text(
          "Paris",
          style: TextStyle(
              color: Color(0xff111111),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                child: Image.asset("assets/images/Mask  Image.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: const [
                    Text(
                      "Top 10 Favourite",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      "Destination In Paris",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 220, top: 130),
                    child: Image.asset(
                      "assets/images/IMG 01.png",
                      width: 160,
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 110, right: 10),
                    child: Image.asset(
                      "assets/images/IMG 02.png",
                      width: 90,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, left: 200),
                    child: Image.asset(
                      "assets/images/IMG 03.png",
                      width: 90,
                      height: 170,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250),
                width: double.infinity,
                child: Column(
                  children: const [
                    Text(
                      "Disneyland Paris",
                      style: TextStyle(
                          color: Color(0xff111111),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Departure",
                          style: TextStyle(
                              color: Color(0xff111111),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "23rd Oct 2017",
                          style:
                              TextStyle(color: Color(0xff111111), fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Duration",
                          style: TextStyle(
                              color: Color(0xff111111),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "5 Days / 4  Nights",
                          style:
                              TextStyle(color: Color(0xff111111), fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Discover 7 World Heritage Sites in this \n tour.",
                          style: TextStyle(
                              color: Color(0xff111111),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Fans of Mickey can visit Disneyland Paris which is \n located 32 km from central Paris, with connection \n to the suburban RER A.",
                          style:
                              TextStyle(color: Color(0xff111111), fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Disneyland Paris has two theme parks: Disneyland \n (with Sleeping Beauty's castle) and Walt Disney \n Studios. Top attractions are Space Mountain, It's  \n a Small World and Big Thunder Mountain.",
                          style:
                              TextStyle(color: Color(0xff111111), fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        items: const [
          TabItem(icon: Icons.home),
          TabItem(icon: CupertinoIcons.heart_fill),
          TabItem(icon: Icons.shopping_bag),
          TabItem(icon: Icons.message),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          if (i == 0) {
            navigateTo(page: const ToursScreen2());
          } else if (i == 1) {
            navigateTo(page: const FavouriteScreen());
          } else if (i == 2) {
            navigateTo(page: const LocationsScreen());
          } else if (i == 3) {
            navigateTo(page: const MyTripScreen());
          } else if (i == 4) {
            navigateTo(page: const MenuBarScreen());
          }
        },
      ),
    );
  }
}
