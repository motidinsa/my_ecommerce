import 'package:figma_squircle/figma_squircle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_ecommerce/authentication/authentication.dart';
import 'package:my_ecommerce/signup/ui/verify_email.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  String firstName = '';
  String lastName = '';
  String email = '';
  String phone = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff5956E9).withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 100,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 15,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      labelText: 'First Name',
                    ),
                    onChanged: (value) => firstName = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      labelText: 'Last Name',
                    ),
                    onChanged: (value) => lastName = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                    ),
                    onChanged: (value) => email = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone_outlined),
                      labelText: 'Phone (Optional)',
                    ),
                    onChanged: (value) => phone = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility_off_rounded)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          setState(
                            () {
                              isPasswordVisible = !isPasswordVisible;
                            },
                          );
                        },
                      ),
                      labelText: 'Password',
                    ),
                    onChanged: (value) => password = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: isConfirmPasswordVisible ? false : true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      suffixIcon: IconButton(
                        icon: isConfirmPasswordVisible
                            ? const Icon(Icons.visibility_off_rounded)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          setState(
                            () {
                              isConfirmPasswordVisible =
                                  !isConfirmPasswordVisible;
                            },
                          );
                        },
                      ),
                      labelText: 'Confirm Password',
                    ),
                    onChanged: (value) => confirmPassword = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff5956E9),
                          padding: const EdgeInsets.symmetric(vertical: 15)),
                      onPressed: () async {
                        User? user =
                            await Authentication.signUp(email, password);
                        if (user != null) {
                          Get.to(() => VerifyEmail());
                        }
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10)),
                    child: Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.google,
                            color: Color(0xff5956E9)),
                        Expanded(
                            child: Text(
                          'Sign up with Google',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff5956E9), fontSize: 16),
                        ))
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10)),
                    child: Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.facebookF,
                            color: Color(0xff5956E9)),
                        Expanded(
                            child: Text(
                          'Sign up with Facebook',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff5956E9), fontSize: 16),
                        ))
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xff5956E9), fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
