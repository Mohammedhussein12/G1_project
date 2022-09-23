import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/screens/tours_screen2/controller.dart';
import '../../core/helper_methods.dart';
import '../../main.dart';
import '../favourite_screen/view.dart';
import '../locations_screen/view.dart';
import '../menu_bar_screen/view.dart';
import '../my_trip_screen/view.dart';
import '../paris_screen/view.dart';
import '../tours_screen2/item_popular_destination.dart';
import 'Item_new_place.dart';

class ToursScreen2 extends StatefulWidget {
  const ToursScreen2({Key? key}) : super(key: key);

  @override
  State<ToursScreen2> createState() => _ToursScreen2State();
}

class _ToursScreen2State extends State<ToursScreen2> {
  @override
  Widget build(BuildContext context) {
    final controller =TourController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            navigateTo(page: const MenuBarScreen());
          },
          icon: const Icon(
            Icons.list,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "TOURS",
          style: TextStyle(
              fontSize: 22,
              color: Color(0xff111111),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xff111111),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 90.0, top: 20.0),
              child: Text(
                "Popular Destination",
                style: TextStyle(
                    color: Color(0xff4458DB),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 170.0),
              child: Text(
                "10 Tours Available",
                style: TextStyle(
                    color: Color(0xff111111),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  controller.tours.length,
                      (index) {
                    return ItemPopularDestination(
                        model: controller.tours[index],
                        onPress: () {
                          controller.selectedItem = index;
                          print(index);
                        },
                        isSelected: index == controller.selectedItem);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 160,
                  width: 375,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image.png"),
                    ),
                  ),
                  child: Column(
                    children: const [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: EdgeInsets.only(top: 50, left: 25.0),
                          child: Text(
                            "SAVE up to 45%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Catamount, Hillsdale, NY",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                          (index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 10, top: 95),
                          height: 130,
                          width: 270,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  spreadRadius: 1)
                            ],
                            color: Color(0xffFFFFFF),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding:
                                EdgeInsets.only(right: 190.0, top: 10.0),
                                child: Text(
                                  "Holidays",
                                  style: TextStyle(
                                    color: Color(0xff111111),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 30),
                                child: Text(
                                  "Say yes to iconic snow Catamount,\n Hillsdale, New York!",
                                  style: TextStyle(
                                      color: Color(0xff111111),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    const Text(
                                        "Book your holiday package today"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      radius: 22,
                                      backgroundColor: const Color(0xff4458DB),
                                      child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {},
                                        icon: const Icon(Icons.forward),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 90.0, top: 20.0),
              child: Text(
                "Discover New Places",
                style: TextStyle(
                    color: Color(0xff4458DB),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  controller.places.length,
                      (index) {
                    return ItemNewPlace(
                        model: controller.places[index],
                        onPress: () {
                          controller.selectedItem = index;
                          print(index);
                          if (index == 0) {
                            navigateTo(page: const ParisScreen());
                          } else if (index == 1) {
                            navigateTo(
                                page: const MyHomePage(title: "Parrot Cay"));
                          } else {
                            navigateTo(
                                page: const MyHomePage(title: "Notre Dame"));
                          }
                          setState(() {});
                        },
                        isSelected: index == controller.selectedItem);
                  },
                ),
              ),
            )
          ],
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
