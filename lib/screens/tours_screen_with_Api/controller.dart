import 'model.dart';

class TourController {
  int selectedItem = 0;
  List<Tour> tours = [
    Tour(imgUrl: "assets/images/tour 1.png", name: "Paris"),
    Tour(imgUrl: "assets/images/tour 2.png", name: "India"),
    Tour(imgUrl: "assets/images/tour 3.png", name: "New York"),
    Tour(imgUrl: "assets/images/tour 4.png", name: "Los Angeles"),
  ];
  bool isLoading = false;
  Places? data;
}
