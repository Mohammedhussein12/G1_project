class Data {
  Data({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.name,
      required this.email,
      required this.image,
      this.phone, 
      this.active, 
      required this.smsCode,
      required this.dateOfBirth,
      required this.gender,
      required this.accessToken,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    phone = json['phone'];
    active = json['active'];
    smsCode = json['sms_code'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    accessToken = json['access_token'];
  }
  late final int id;
  late final String firstName;
  late final String lastName;
  late final String name;
  late final String email;
  late final String image;
  late final dynamic phone;
  late final dynamic active;
  late final String smsCode;
  late final String dateOfBirth;
  late final String gender;
  late final String accessToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['name'] = name;
    map['email'] = email;
    map['image'] = image;
    map['phone'] = phone;
    map['active'] = active;
    map['sms_code'] = smsCode;
    map['date_of_birth'] = dateOfBirth;
    map['gender'] = gender;
    map['access_token'] = accessToken;
    return map;
  }

}