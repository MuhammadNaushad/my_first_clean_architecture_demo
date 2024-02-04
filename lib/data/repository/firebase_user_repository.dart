import 'package:my_first_clean_architecture_demo/data/repository/user_repository.dart';
import 'package:my_first_clean_architecture_demo/domain/entity/user_domain.dart';

class FirebaseUserRepository implements UserRepository {
  @override
  Future<List<UserDomain>> getUsers() async => [
        UserDomain(
            id: 123, name: "Username", email: "email", website: "", phone: "")
      ];
}
