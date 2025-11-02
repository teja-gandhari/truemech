import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:truemech/core/widgets/custom_icons_buttons.dart';
import 'package:truemech/core/widgets/custome_button.dart';
import '../../../../core/widgets/custom_textfield.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //first Name
                _labelText('First Name', 18,Colors.black),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: firstNameController,
                  nameHint: 'first name',
                  prefixIcon: Icons.person,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 4),

                //Last Name
                _labelText('Last Name', 18,Colors.black),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: lastNameController,
                  nameHint: 'last name',
                  prefixIcon: Icons.person,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 4),

                //Email
                _labelText('Email', 18,Colors.black),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: emailController,
                  nameHint: 'name@example.com',
                  prefixIcon: Icons.mail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 4),

                //password
                _labelText('Password', 18,Colors.black),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: passwordController,
                  nameHint: 'Enter your password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 4),

                //conform password
                //password
                _labelText('Conform password', 18,Colors.black),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: confirmPasswordController,
                  nameHint: 'conform password',
                  prefixIcon: Icons.lock,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 12),

                CustomeButton(
                  onPressed: () {},
                  borderRadius: 18.0,
                  child:
                  _labelText('Create Account', 18,Colors.white),
                ),
                const SizedBox(height: 12),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'By signing up, you agree to our ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),

                      // ✅ Clickable Terms

                      TextSpan(
                        text: 'Terms ',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(199, 72, 47, 247),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          },
                      ),

                      const TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),

                      // ✅ Clickable Privacy Policy
                      TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(199, 72, 47, 247),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
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
                _bottomsIcons()
              ],
            ),
          ),
        ),
    );
  }
  //text
  Widget _labelText(String name,double fontSize,Color color){
    return Text(name,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500,color: color),);
  }
  //bottom icons
_bottomsIcons(){
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