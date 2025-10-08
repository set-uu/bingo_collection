import 'package:bingo_collection/entity/user.dart';

abstract class UserRepository {
  Future<User> fetchUser({required String userId});
}

/// 実際にサーバーから取得する時に使う
class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> fetchUser({required String userId}) async {
        // TODO: implement fetchBingoDetail
    throw UnimplementedError();
  }
}

class UserRepositoryMock implements UserRepository {
  @override
  Future<User> fetchUser({required String userId}) {
    return Future.value(mockUser);
  }
}

final mockUser = User(
  id: 'user1',
  name: 'Test User',
);
