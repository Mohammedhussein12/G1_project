import 'package:flutter/material.dart';
import 'model.dart';

class ItemPopularDestination extends StatelessWidget {
  final Tour? model;
  final Function()? onPress;
  final bool? isSelected;

  const ItemPopularDestination(
      {Key? key,
      required this.model,
      required this.onPress,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 90,
        width: 80,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(model!.imgUrl!),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            height: 25,
            child: Text(
              model!.name!,
              style: const TextStyle(color: Color(0xff111111)),
            ),
          ),
        ),
      ),
    );
  }
}
