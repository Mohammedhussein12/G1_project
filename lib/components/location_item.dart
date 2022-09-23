import 'package:flutter/material.dart';
import 'package:tripit_project/core/helper_methods.dart';
import '../screens/locations_screen/model.dart';
import '../screens/tours_screen2/view.dart';

class LocationItem extends StatefulWidget {
  final Location? model;

  const LocationItem({Key? key, required this.model}) : super(key: key);

  @override
  State<LocationItem> createState() => _LocationItemState();
}

class _LocationItemState extends State<LocationItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: () {
          navigateTo(page: const ToursScreen2());
        },
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(margin: const EdgeInsets.all(10),
                height: 140,
                width: 335,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.model!.imgUrl!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.10), blurRadius: 5)
                ]),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 21.0, bottom: 28.0),
                        child: Column(
                          children: [
                            Text(
                              widget.model!.title!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              widget.model!.capital!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
