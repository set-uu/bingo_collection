import 'package:bingo_collection/ui/screen/bingo_list/bingo_list_controller.dart';
import 'package:bingo_collection/ui/screen/home/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BingoList extends StatelessWidget {
  const BingoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      child: TextButton(
        onPressed: () {
          final HomeScreenController controller = Get.find<HomeScreenController>();
          controller.changeTitle("test");
        },
        child: Text("change title"),
      ),
    );
  }
}
