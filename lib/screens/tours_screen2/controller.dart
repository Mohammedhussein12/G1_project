import 'model.dart';

class TourController {
  int selectedItem = 0;
  List<Tour> tours = [
    Tour(imgUrl: "assets/images/tour 1.png", name: "Paris"),
    Tour(imgUrl: "assets/images/tour 2.png", name: "India"),
    Tour(imgUrl: "assets/images/tour 3.png", name: "New York"),
    Tour(imgUrl: "assets/images/tour 4.png", name: "Los Angeles"),
  ];

  List<Place> places = [
    Place(
        imgUrl: "assets/images/Eiffel tower.png",
        imgName: "Eiffel Tower",
        rate: "4.8 (512 Reviews)",
        tourName: "Paris"),
    Place(
        imgUrl: "assets/images/parrot cay.png",
        imgName: "Parrot Cay",
        rate: "4.8 (512 Reviews)",
        tourName: "Hawaii"),
    Place(
        imgUrl: "assets/images/Notre Dame.png",
        imgName: "Notre Dame",
        rate: "4.8 (512 Reviews)",
        tourName: "Paris"),
  ];
}
