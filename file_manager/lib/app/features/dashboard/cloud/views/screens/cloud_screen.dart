library cloud;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/cloud_binding.dart';

// controller
part '../../controllers/cloud_controller.dart';

class CloudScreen extends GetView<CloudController> {
  const CloudScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("cloud"),
      ),
    );
  }
}
