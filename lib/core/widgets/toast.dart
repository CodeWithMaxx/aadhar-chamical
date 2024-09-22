import 'package:aadhar_chamical/core/theme/color_pallets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastMsg({required String msgTxt}){
  return Fluttertoast.showToast(
        msg: msgTxt,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: ColorPallets.primaryColor,
        textColor: Colors.white,
        fontSize: 16.0
    );
}