import 'dart:convert';
import 'dart:developer';

import 'package:aadhar_chamical/core/DB/database.dart';
import 'package:aadhar_chamical/core/DB/db_key.dart';
import 'package:aadhar_chamical/core/constants/apiconst.dart';
import 'package:aadhar_chamical/core/widgets/toast.dart';
import 'package:aadhar_chamical/feature/auth/login/model/login_model.dart';
import 'package:aadhar_chamical/feature/home/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider extends ChangeNotifier {
  final httpClient = http.Client();
  final SecureStorageService _secureStorageService = SecureStorageService();
  Future<void> UserLogin(
      String mobileNumber, String password, BuildContext context) async {
    final url = Uri.parse(ApiURLs.userLoginApiUrl);
    var response = await httpClient
        .post(url, body: {'mobile_no': mobileNumber, 'password': password});
    if (response.statusCode == 200) {
      var responseDecoded = jsonDecode(response.body);
      log(responseDecoded.toString());

      print(responseDecoded);
      LoginApiModel loginApiModel = LoginApiModel.fromJson(responseDecoded);
      toastMsg(msgTxt: loginApiModel.message.toString());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomePage()));
      _secureStorageService.savePersonID(
        value:  loginApiModel.data.personId.toString(),
          key:DBKeys.personIDKey);
      _secureStorageService.saveFactoryID(
          value: loginApiModel.data.factoryId.toString(),
          key: DBKeys.factoryIDKey
          );
      _secureStorageService.saveAddress(
          value: loginApiModel.data.address.toString(),
          key: DBKeys.addressKey
          );
      _secureStorageService.saveCity(value: loginApiModel.data.city.toString(),
      key: DBKeys.cityKey
      );
      _secureStorageService.saveMobileNo(
          value: loginApiModel.data.mobileNo.toString(),
          key: DBKeys.mobileKey
          );
      _secureStorageService.savePersonName(
          value: loginApiModel.data.personName.toString(),
          key: DBKeys.personNameKey
          );
    }
  }
}
