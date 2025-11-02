import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:truemech/core/widgets/custom_icons_buttons.dart';
import 'package:truemech/core/widgets/custome_button.dart';
import '../../../../core/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //email
                  _labelText('Email', 18),
                  const SizedBox(height: 4),
                  CustomTextField(
                    controller: emailController,
                    nameHint: 'name@example.com',
                    prefixIcon: Icons.mail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Row(
                    children: <Widget>[
                      _labelText('Password', 18),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot?'),
                      ),
                    ],
                  ),
                  CustomTextField(
                    controller: passwordController,
                    nameHint: 'Enter your password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 12),
                  CustomeButton(
                    onPressed: () {},
                    borderRadius: 18.0,
                    child: const Text('Login',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color:Colors.white ),),
                  ),
                  const SizedBox(height: 48,),
                  //divider
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 0.8,color: Colors.grey,)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                      Expanded(child: Divider(thickness: 0.8,color: Colors.grey,)),
                    ],
                  ),
                  const SizedBox(height: 36),
                  //bottomsIcons
                  _bottomsIcons(),

                ],
              ),
            ),
          ),
        ),
    );
  }
  //text
  Widget _labelText(String name,double fontSize){
    return Text(name,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500),);
  }
  //bottom icons
  Widget _bottomsIcons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomIconsButtons(onPressed: _onGoogleButtonPress, icon: FontAwesomeIcons.google),
        CustomIconsButtons(onPressed: _onAppleButtonPress, icon: FontAwesomeIcons.apple),
        CustomIconsButtons(onPressed: _onFacebookButtonPress, icon: FontAwesomeIcons.facebookF),
      ],
    );
  }
  static void _onGoogleButtonPress(){}
  static void _onAppleButtonPress(){}
  static void _onFacebookButtonPress(){}
}