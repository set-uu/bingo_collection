/// BingoDataの保持、編集を行うコントローラー
import 'package:bingo_collection/entity/bingo.dart';
import 'package:bingo_collection/repository/bingo_data/bingo_data_repository.dart';
import 'package:get/get.dart';

class BingoController extends GetxController {
  BingoController({BingoDataRepository? repository})
    : _repository = repository ?? BingoDataRepositoryImpl();

  final BingoDataRepository _repository;

  var state = BingoState().obs;

  Future<void> fetchBingoList(String userId) async {
    final bingoList = await _repository.fetchBingoList(userId: userId);
    state.update((value) {
      value?.bingoList = bingoList;
    });
  }

  Future<void> addBingo(Bingo bingo) async {
    state.update((value) {
      value?.bingoList.add(bingo);
    });
  }

  Future<void> removeBingo(String bingoId) async {
    state.update((value) {
      value?.bingoList.removeWhere((bingo) => bingo.id == bingoId);
    });
  }

  Future<void> updateBingo(Bingo updatedBingo) async {
    state.update((value) {
      value?.bingoList = value.bingoList.map((bingo) {
        if (bingo.id == updatedBingo.id) {
          return updatedBingo;
        }
        return bingo;
      }).toList();
    });
  }

  Future<void> saveToServer() async {
  }
}

class BingoState {
  List<Bingo> bingoList = [];
}
