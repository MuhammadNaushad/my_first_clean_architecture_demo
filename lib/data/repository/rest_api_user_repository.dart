import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_clean_architecture_demo/data/repository/user_repository.dart';
import 'package:my_first_clean_architecture_demo/domain/entity/user_domain.dart';
import 'package:my_first_clean_architecture_demo/domain/models/user_json_model.dart';

class RestApiUserRepository implements UserRepository {
  @override
  Future<List<UserDomain>> getUsers() async {
    List<UserDomain> userModelDomainList = [];
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      debugPrint(jsonDecode(response.body).toString());
      //domain layer logic
      userModelDomainList = (jsonDecode(response.body) as List)
          .map((e) => UserJsonModel.fromJson(e).toDomain())
          .toList();

      return userModelDomainList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
