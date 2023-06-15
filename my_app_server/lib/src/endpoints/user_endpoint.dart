import 'package:serverpod/server.dart';
import '../generated/user_class.dart';

class UserEndpoint extends Endpoint {

  Future<User> create(User user,Session session) async {
    await User.insert(session,user);
    return user;
  }

  Future<User?> read(int id,Session session) async {
    return await User.findById(session,id);
  }

  Future<List<User>> readAll(Session session) async {
    return await User.find(session);
  }

  Future<User> update(User user,Session session) async {
    await User.update(session,user);
    return user;
  }

  Future<int> delete(int id,Session session) async {
    return await User.delete(session,where: (user) => user.id.equals(id));
  }

}
