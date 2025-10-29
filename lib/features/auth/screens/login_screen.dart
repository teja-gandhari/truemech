import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:truemech/features/auth/screens/login_form.dart';
import 'package:truemech/features/auth/screens/singup_form.dart';

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
      appBar: AppBar(title: Text('Git'),),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.4,
          child: Column(
            children: [
              ClipRect(
                child: Image.asset('',height:100 ,width:100 ,fit: BoxFit.cover,),
              ),
              const SizedBox(height: 5,),
              Text('True Mech',style: TextStyle(fontSize: 20, fontFamily: 'NunitoSanst',fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              Text('All in one vehicle service',style: TextStyle(fontSize: 18, fontFamily: 'NunitoSanst',fontWeight: FontWeight.w500),),
              const SizedBox(height: 8,),
              AnimatedToggleSwitch<bool>.size(current: loginPage,
                  values: const [false , true],
                iconOpacity: 0.2,
                indicatorSize: Size.fromWidth(220),height: 40,
                 customIconBuilder: (context,local,global)=>
                Text(local.value ? 'Sign up' : 'Login',style: TextStyle(fontSize: 18,color: Color.lerp(Colors.black, Colors.black, local.animationValue)),
                ),borderWidth: 2.0,
                iconAnimationType: AnimationType.onHover,
                style: ToggleStyle(
                  indicatorColor: Colors.deepPurpleAccent,
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(),
                      blurRadius: 2
                    )
                  ],
                ),
                selectedIconScale: 1.0,
                onChanged: (value)=> setState(()=>loginPage=value),
              ),
              SizedBox(
                height: 400,
                child: AnimatedSwitcher(duration:const Duration(milliseconds: 500)
                ,
                transitionBuilder: (child,animation)=>FadeTransition(opacity: animation,child: child)
                  ,child:loginPage
                        ? const SingUpScreen(key: ValueKey('siqnup'))
                        : const LoginPage(key: ValueKey('login'))),
              ),

            ],
          ),
        ),
      )
    );
  }
}