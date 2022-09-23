import 'package:flutter/material.dart';

import 'model.dart';

class ItemNewPlace extends StatelessWidget {
  final Place? model;
  final Function()? onPress;
  final bool? isSelected;

  const ItemNewPlace(
      {Key? key,
        required this.model,
        required this.onPress,
        required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 230,
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(model!.imgUrl!),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0, right: 18.0),
                child: Text(
                  model!.imgName!,
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
          model!.rate!,
          style: const TextStyle(color: Color(0xff4458DB), fontSize: 12),
        ),
        const SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 55.0),
          child: Text(model!.tourName!, style: const TextStyle(fontSize: 12)),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}