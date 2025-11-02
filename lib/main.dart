import  'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/routes/app_route_config.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Create one instance here
  static final _appRouter = MyAppRouter().router;

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
            routerConfig: _appRouter,
          );
        }
    );
  }
}
