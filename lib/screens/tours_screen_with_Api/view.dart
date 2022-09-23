import 'dart:convert';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tripit_project/screens/tours_screen_with_Api/item_popular_destination.dart';
import '../../core/helper_methods.dart';
import '../favourite_screen/view.dart';
import '../locations_screen/view.dart';
import '../menu_bar_screen/view.dart';
import '../my_trip_screen/view.dart';
import 'controller.dart';
import 'model.dart';

class ToursScreen extends StatefulWidget {
  const ToursScreen({super.key});

  @override
  State<ToursScreen> createState() => _ToursScreenState();
}

class _ToursScreenState extends State<ToursScreen> {
  final controller = TourController();
  Places? myPlace;
  bool isLoading = false;
  dynamic placeJson;
  String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4MDE3MjMsIm5iZiI6MTY2MzgwMTcyMywianRpIjoiOFhEc1M1T3h5dG5EQmZLTiIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rX3s6YRH7JVKt8CbHBBr1pXwfm1SA7yS7BeHTIQU0oc";
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
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      InnerData? item = myPlace?.data?.data?[index];
                      return Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 230,
                              width: 130,
                              child: Align(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 18.0, right: 18.0),
                                  child: Text(
                                    item!.name!,
                                    style: const TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/rectangle icon.png",
                                  width: 10,
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "assets/images/rectangle icon.png",
                                  width: 10,
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "assets/images/rectangle icon.png",
                                  width: 10,
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "assets/images/rectangle icon.png",
                                  width: 10,
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "assets/images/rectangle icon.png",
                                  width: 10,
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            item.rate!.toString(),
                            style: const TextStyle(
                                color: Color(0xff4458DB), fontSize: 12),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 55.0),
                            child: Text(item.description!,
                                style: const TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      );
                    },
                    itemCount:
                    myPlace?.data?.data?.length,
                  ),
                ),
              ],
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
        initialActiveIndex: 0,
        onTap: (int i) {
          if (i == 0) {
            navigateTo(page: const ToursScreen());
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
  Future getList() async {
    setState(() {
      isLoading = true;
    });

    Response response =
    await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer $token",
    });

    placeJson = jsonDecode(response.body);
      myPlace = Places.fromJson(placeJson);
    setState(() {
      isLoading = false;
    });
  }
}
