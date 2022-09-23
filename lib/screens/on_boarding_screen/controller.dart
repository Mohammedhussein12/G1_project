import 'model.dart';

class OnBoardingController {
  int currentPage = 0;
  List<Model> models = [
    Model(
        title: "Plan Your Trip",
        image: "assets/images/on_boarding1.png",
        subtitle:
        "Plan your trip, choose your destination. \n Pick the best place for your holiday."),
    Model(
        title: "Select The Date",
        image: "assets/images/on_boarding2.png",
        subtitle:
        "Select the day, book your ticket. We give \n you the best price. We guarantied!"),
    Model(
        title: "Enjoy Your Trip",
        image: "assets/images/on_boarding3.png",
        subtitle:
        "Enjoy your holiday! don't forget to take \n a photo and share to the world"),
  ];
}