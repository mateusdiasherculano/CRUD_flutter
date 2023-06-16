import 'package:crud_flutter/components/user_tile.dart';
import 'package:crud_flutter/provider/user_provider.dart';
import 'package:crud_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = Provider.of<UsersProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        itemCount: users.count,
      ),
    );
  }
}
