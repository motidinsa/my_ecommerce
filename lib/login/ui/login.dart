import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff5956E9).withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome!',
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? Icon(Icons.visibility_off_rounded)
                            : Icon(Icons.visibility),
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
                  ),
                  // SizedBox(height: 10,),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style:
                            TextStyle(color: Color(0xff5956E9), fontSize: 15),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff5956E9),
                          padding: EdgeInsets.symmetric(vertical: 15)),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.google,
                            color: Color(0xff5956E9)),
                        Expanded(
                            child: Text(
                          'Sign in with Google',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff5956E9), fontSize: 16),
                        ))
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.facebookF,
                            color: Color(0xff5956E9)),
                        Expanded(
                            child: Text(
                          'Sign in with Facebook',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff5956E9), fontSize: 16),
                        ))
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create account',
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
