import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripit_project/core/helper_methods.dart';
import 'package:tripit_project/screens/locations_screen/view.dart';
import 'package:tripit_project/screens/menu_bar_screen/controller.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';
import '../favourite_screen/view.dart';
import '../my_trip_screen/view.dart';

class MenuBarScreen extends StatefulWidget {
  const MenuBarScreen({Key? key}) : super(key: key);

  @override
  State<MenuBarScreen> createState() => _MenuBarScreenState();
}

class _MenuBarScreenState extends State<MenuBarScreen> {
  final controller = MenuBarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF6F6F6),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            color: const Color(0xff000000),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  "assets/images/IMG.png",
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kenneth Gutierrez",
                style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kenneth_gutierrez@gmail.com",
                style: TextStyle(color: Color(0xff111111), fontSize: 15),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffF33738),
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Notification",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff58C7FB),
                  child: Icon(
                    Icons.airplanemode_active,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Tours",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffDC58FB),
                  child: Icon(
                    Icons.location_on,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Location",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff5252D8),
                  child: Icon(
                    Icons.language,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Language",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff3075F9),
                  child: Icon(
                    Icons.group,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Invite Friends",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffF9CA1C),
                  child: Icon(
                    Icons.headphones,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Help Center",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff4AD76D),
                  child: Icon(
                    Icons.settings,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Setting",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff9A9A9A),
                  child: Icon(
                    Icons.logout,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                title: const Text(
                  "Log Out",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff111111),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
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
        initialActiveIndex: 4,
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
