import 'package:bingo_collection/ui/screen/bingo_list/bingo_list.dart';
import 'package:bingo_collection/ui/screen/home/home_screen_controller.dart';
import 'package:bingo_collection/ui/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.userId, this.bingoId})
    : _controller = Get.put(
        HomeScreenController(
          userId: userId ?? '',
          bingoId: bingoId ?? '',
        ),
      );

  final String? userId;
  final String? bingoId;
  final HomeScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          debugPrint('### title: ${_controller.state.value.title}');
          return Text(_controller.state.value.title);
          }),
      ),
      body:
          // 未ログインかつユーザIDが指定されていない場合はabout画面を表示
          // ログインしていて、ユーザIDが指定されていない場合は自分のビンゴリストを表示
          // ユーザIDが指定されている場合はそのユーザの公開ビンゴリストを表示
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > ScreenSize.browser) {
                // ブラウザ等の大画面
                return _browserView(context);
              } else {
                // スマホ等の小画面
                return _mobileView(context);
              }
            },
          ),
    );
  }

  Widget _browserView(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: BingoList(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }

  Widget _mobileView(BuildContext context) {
    return BingoList();
  }
}
