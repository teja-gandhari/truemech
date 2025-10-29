import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_textfield.dart';
import '../../../../core/widgets/custome_button.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    controller: emailController,
                    nameHint: 'name@example.com',
                    prefixIcon: Icons.mail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        "Password",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
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
                  const SizedBox(height: 14,),

                ],
              ),
            ),
          ),
        ),
    );
  }
}
