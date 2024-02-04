import 'package:flutter/material.dart';
import 'package:my_first_clean_architecture_demo/data/repository/rest_api_user_repository.dart';
import 'package:my_first_clean_architecture_demo/data/repository/user_repository.dart';
import '../domain/entity/user_domain.dart';

class UserListScreen extends StatefulWidget {
  final UserRepository userRepository;
  const UserListScreen({super.key, required this.userRepository});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<UserDomain> users = [];

  // RestApiUserRepository userModel = RestApiUserRepository();
  late UserRepository userRepository;

  Future<void> _fetchUsers() async {
    users = await userRepository.getUsers();
  }

  @override
  void initState() {
    super.initState();
    userRepository = widget.userRepository;
    _init();
  }

  void _init() async {
    await _fetchUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clean Arch Demo"),
      ),
      body: users.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(users[index].name!),
                    subtitle: Text(users[index].email!),
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
