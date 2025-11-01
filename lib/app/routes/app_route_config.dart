import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truemech/features/auth/screens/auth_screen/login_screen.dart';

class MyAppRouter{

  GoRouter router = GoRouter(
    routes: [
      //Login_screen
      GoRoute(
        name: 'loginAuth',
        path: '/',
        pageBuilder: (context,state){
          return MaterialPage(child: LoginAuth());
        }
      )

    ]

  );
}