import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_button.dart';
import 'package:twitter_clone/components/my_textfield.dart';

/*

  REGISTER PAGE

  On this page, user can create a new account  

  The data we want from the user:
   - name 
   - email
   - password
   - confirm password 

   ---------------------------------------------------------

   Once the account is created -> user is redirected to homepage

*/

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

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

                // create an account
                Text(
                  "Cerate an account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // name Textfeild
                MyTextfield(
                  controller: nameController,
                  hintText: "Enter name",
                  obscureText: false,
                ),

                const SizedBox(
                  height: 10,
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

                const SizedBox(
                  height: 10,
                ),

                // confirm Password textfield
                MyTextfield(
                  controller: confirmPwController,
                  hintText: "Confirm password",
                  obscureText: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                // sign up button
                MyButton(
                  text: "Register",
                  onTap: () {},
                ),

                const SizedBox(
                  height: 20,
                ),

                // already a member? Login here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a memeber?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),

                    // width
                    const SizedBox(
                      width: 6,
                    ),

                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login here",
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
