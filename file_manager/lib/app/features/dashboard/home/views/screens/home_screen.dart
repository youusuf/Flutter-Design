library home;

import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/shared_components/search_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// binding
part '../../bindings/home_binding.dart';

// controller
part '../../controllers/home_controller.dart';

// component
part '../components/header.dart';
part '../components/storage_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  child: _Header(username: "firgia"),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultSpacing),
                  child: _StorageChart(
                    totalFree: 80,
                    totalUsed: 785,
                  ),
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
