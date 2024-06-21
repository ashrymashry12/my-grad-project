import 'package:flutter/material.dart';
import 'package:flutter_application_grad_app/screens/routs.dart';
import 'package:flutter_application_grad_app/screens/select_use_screen.dart';



void main(List<String> args) {
  runApp(const Graduation_app());
}

// ignore: camel_case_types`  
class Graduation_app extends StatelessWidget {
  const Graduation_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Graduation App',
      onGenerateRoute:Routs.materialPageRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectUseScreen(),
    );
  }
}