import 'package:aadhar_chamical/core/DB/database.dart';
import 'package:aadhar_chamical/core/DB/db_key.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? factoryID;

  final SecureStorageService _secureStorageService = SecureStorageService();
  // factory() async {
  //   String? fact =
  //       await _secureStorageService.getFactoryID(key: DBKeys.factoryIDKey);
  //   factoryID = fact;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(factoryID.toString()),
      ),
    );
  }
}
