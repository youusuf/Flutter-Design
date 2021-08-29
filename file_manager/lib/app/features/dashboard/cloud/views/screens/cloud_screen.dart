library cloud;

import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/shared_components/search_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/cloud_binding.dart';

// controller
part '../../controllers/cloud_controller.dart';

// component
part '../components/header.dart';

class CloudScreen extends GetView<CloudController> {
  const CloudScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(kDefaultSpacing),
                  child: _Header(),
                ),
              ]),
              hasScrollBody: false,
            )
          ],
        ),
      ),
    );
  }
}
