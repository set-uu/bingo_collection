import 'package:bingo_collection/entity/bingo.dart';

abstract class BingoDataRepository {
  Future<List<Bingo>> fetchBingoList({required String userId});
  Future<Bingo> fetchBingoDetail({required String userId, required String bingoId});
  
}

/// 実際にサーバーから取得する時に使う
class BingoDataRepositoryImpl implements BingoDataRepository {
  @override
  Future<List<Bingo>> fetchBingoList({required String userId}) async {
    // TODO: implement fetchBingoDetail
    throw UnimplementedError();
  }
  
  @override
  Future<Bingo> fetchBingoDetail({required String userId, required String bingoId}) {
    // TODO: implement fetchBingoDetail
    throw UnimplementedError();
  }
}

/// テスト用のモック
class BingoDataRepositoryMock implements BingoDataRepository {
  @override
  Future<List<Bingo>> fetchBingoList({required String userId}) {

    // TODO: implement fetchBingoData
    throw UnimplementedError();
  }

  @override
  Future<Bingo> fetchBingoDetail({required String userId, required String bingoId}) {
    // TODO: implement fetchBingoDetail
    throw UnimplementedError();
  }

}

final List<Bingo> mockData = [
  Bingo(
    id: '1',
    title: 'Sample Bingo 1',
    description: 'This is a sample bingo description.',
    ownerId: 'user1',
    items: [
      BingoItem(id: '1', content: 'Item 1', imageUrl: ''),
      BingoItem(id: '2', content: 'Item 2', imageUrl: ''),
      BingoItem(id: '3', content: 'Item 3', imageUrl: ''),
    ],
  ),
  Bingo(
    id: '2',
    title: 'Sample Bingo 2',
    description: 'This is another sample bingo description.',
    ownerId: 'user2',
    items: [
      BingoItem(id: '4', content: 'Item A', imageUrl: ''),
      BingoItem(id: '5', content: 'Item B', imageUrl: ''),
      BingoItem(id: '6', content: 'Item C', imageUrl: ''),
    ],
  ),
];