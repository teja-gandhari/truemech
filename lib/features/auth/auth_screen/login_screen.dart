import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truemech/features/auth/auth_screen/singup_form.dart';

import 'login_form.dart';


class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  bool loginPage= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body:SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: ScreenUtil().screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset('assets/images/20250912_161326.png',height: 110,width: 110,fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 5,),
                    //add fonts
                    Text(
                      'True Mech',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: const Color(0xFF222222),
                      ),
                    ),
                    Text(
                      'All in one vehicle service',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                      ),
                    ),

                    const SizedBox(height: 8,),
                    //toggler
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.85 ,
                        child: _animatedToogle()
                      ),
                    //toogle swticher
                    SizedBox(
                      child: AnimatedSwitcher(duration:const Duration(milliseconds: 500),
                        transitionBuilder: (child,animation)=>FadeTransition(opacity: animation,child: child)
                          ,child:loginPage
                                ? const SingUpScreen(key: ValueKey('siqnup'))
                                : const LoginPage(key: ValueKey('login'))),
                      ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
//toggle button
  _animatedToogle(){
    return AnimatedToggleSwitch<bool>.size(current: loginPage,
      values: const [false , true],
      iconOpacity: 1,
      indicatorSize: Size.fromWidth(220),height: 40,
      customIconBuilder: (context,local,global)=>
          Text(local.value ? 'Sign up' : 'Login',style: TextStyle(fontSize: 18,color: Color.lerp(Colors.black, Colors.black, local.animationValue)),
          ),borderWidth: 2.0,
      iconAnimationType: AnimationType.onHover,
      style: ToggleStyle(
        indicatorColor: Color.fromARGB(199, 72,47,247),
        borderColor: Colors.grey,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2
          )
        ],
      ),
      selectedIconScale: 1.0,
      onChanged: (value)=> setState(()=>loginPage=value),
    );
  }

}
