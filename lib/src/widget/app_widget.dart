import 'package:crud_flutter/pages/user_form_page.dart';
import 'package:crud_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../pages/user_list.dart';
import '../../provider/user_provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => UsersProvider(),
      child: MaterialApp(
        title: 'CRUD Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const UserListPage(),
        routes: {
          AppRoutes.USER_FORM: (ctx) => UserFormPage(),
        },
      ),
    );
  }
}
