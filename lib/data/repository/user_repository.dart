import 'package:my_first_clean_architecture_demo/domain/entity/user_domain.dart';

abstract class UserRepository {
  Future<List<UserDomain>> getUsers();
}
