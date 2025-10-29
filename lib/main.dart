import  'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/text_theme.dart';
import 'features/auth/screens/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "AR One Sans", "Roboto");
    AppTheme theme = AppTheme(textTheme);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (_ , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'True Mech',
            themeMode: ThemeMode.system,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: LoginAuth(),
          );
        }
    );
  }
}
