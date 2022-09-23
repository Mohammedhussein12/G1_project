class Tour {
  String? imgUrl;
  String? name;

  Tour({required this.imgUrl, required this.name});
}
class Place {
  String? imgUrl;
  String? imgName;
  String? rate;
  String? tourName;

  Place(
      {required this.imgUrl,
        required this.imgName,
        required this.rate,
        required this.tourName});
}