import 'Data.dart';

class SignUpResponse {
  SignUpResponse({
      required this.code,
      required this.message,
      required this.data,});

  SignUpResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    data = (json['data'] != null ? Data.fromJson(json['data']) : null)!;
  }
  late final int code;
  late final String message;
  late final Data data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data.toJson();
    }
    return map;
  }

}