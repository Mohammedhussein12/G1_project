import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';
import '../../core/helper_methods.dart';
import '../locations_screen/view.dart';
import '../menu_bar_screen/view.dart';
import '../my_trip_screen/view.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Coming soon",
              style: TextStyle(
                  color: Color(0xff4458DB), fontSize: 40, fontWeight: FontWeight.bold),
            ),
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
        initialActiveIndex: 1,
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
