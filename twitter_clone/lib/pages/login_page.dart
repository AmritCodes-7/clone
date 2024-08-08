import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_button.dart';
import 'package:twitter_clone/components/my_textfield.dart';

/*

  LOGIN PAGE 

  An exixting user can login with their email and password.

  Once the user successfully logs in, they will be redirected to HomePage()

  If the user doesn't havd an account yet, they can go to the register page from here.

*/

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // adding sizedbox
                const SizedBox(
                  height: 20,
                ),

                // Logo
                Icon(
                  Icons.lock_open_outlined,
                  size: 70,
                  color: Theme.of(context).colorScheme.primary,
                ),

                const SizedBox(
                  height: 50,
                ),

                // Welcome back message
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // email Textfeild
                MyTextfield(
                  controller: emailController,
                  hintText: "Enter Email",
                  obscureText: false,
                ),

                const SizedBox(
                  height: 10,
                ),

                // Password textfield
                MyTextfield(
                  controller: pwController,
                  hintText: "Enter password",
                  obscureText: true,
                ),

                // forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // sign in button
                MyButton(
                  text: "Login",
                  onTap: () {},
                ),

                const SizedBox(
                  height: 20,
                ),
                // not registered?? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a memeber?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
