import 'package:my_first_clean_architecture_demo/domain/entity/user_domain.dart';

class UserJsonModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;

  UserJsonModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  UserJsonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    username = json['username'] ?? "";
    email = json['email'] ?? "";
    phone = json['phone'] ?? "";
    website = json['website'] ?? "";
  }

  UserDomain toDomain() => UserDomain(
        id: id,
        name: name,
        email: email!.split("@").first,
        phone: phone,
        website: website,
      );
}
