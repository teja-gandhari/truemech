import  'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/routes/app_route_config.dart';
import 'features/auth/screens/auth_screen/login_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (_ , child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'True Mech',
            routeInformationParser:MyAppRouter().router.routeInformationParser ,
            routerDelegate:MyAppRouter().router.routerDelegate ,
          );
        }
    );
  }
}
