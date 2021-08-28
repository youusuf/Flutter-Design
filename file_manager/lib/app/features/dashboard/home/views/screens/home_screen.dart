library home;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/home_binding.dart';

// controller
part '../../controllers/home_controller.dart';

// component

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
