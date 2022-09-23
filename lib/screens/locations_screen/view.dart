import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/core/helper_methods.dart';
import 'package:tripit_project/screens/locations_screen/controller.dart';
import 'package:tripit_project/screens/menu_bar_screen/view.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';
import '../../components/location_item.dart';
import '../favourite_screen/view.dart';
import '../my_trip_screen/view.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  final controller = LocationController();

  @override
  Widget build(BuildContext context) {
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
          "LOCATION",
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
      body: Column(
        children: [
          SizedBox(
            height: 505,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  LocationItem(model: controller.locations[index]),
              itemCount: controller.locations.length,
            ),
          ),
        ],
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
        initialActiveIndex: 2,
        onTap: (int i) {
          if (i == 0) {
            navigateTo(page:const ToursScreen2());
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
