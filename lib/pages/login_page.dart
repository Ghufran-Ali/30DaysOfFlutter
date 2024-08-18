import 'package:flutter/material.dart';
import 'package:test_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome $name',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter username',
                      labelText: 'Username',
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 60 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changeButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle),
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                  )

                  // ElevatedButton(
                  //   //style: TextButton.styleFrom(),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     //print("Hi Sparlay");
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(150, 40),
                  //   ),
                  //   child: const Text('Login'),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
