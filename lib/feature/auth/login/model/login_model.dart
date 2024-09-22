class LoginApiModel {
  final Data data; // Required
  final String message; // Required
  final String status; // Required

  LoginApiModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory LoginApiModel.fromJson(Map<String, dynamic> json) {
    return LoginApiModel(
      data: Data.fromJson(json['data']),
      message: json['message'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'message': message,
      'status': status,
    };
  }
}

class Data {
  final String personId; // Required
  final String personName; // Required
  final String address; // Required
  final String city; // Required
  final String mobileNo; // Required
  final String factoryId; // Required

  Data({
    required this.personId,
    required this.personName,
    required this.address,
    required this.city,
    required this.mobileNo,
    required this.factoryId,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      personId: json['person_id'],
      personName: json['person_name'],
      address: json['address'],
      city: json['city'],
      mobileNo: json['mobile_no'],
      factoryId: json['factory_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'person_id': personId,
      'person_name': personName,
      'address': address,
      'city': city,
      'mobile_no': mobileNo,
      'factory_id': factoryId,
    };
  }
}
