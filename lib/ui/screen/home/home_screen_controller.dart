import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  HomeScreenController({
    required this.userId,
    required this.bingoId,
  });

  String userId;
  String bingoId;

  var state = HomeScreenState().obs;
  void changeTitle(String newTitle) {
    state.update((value) {
      value?.title = newTitle;
    });
  }
}

class HomeScreenState {
  String title = "Bingo Collection";
}
