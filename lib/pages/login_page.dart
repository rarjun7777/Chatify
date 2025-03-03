import 'package:chat_tutorial/services/auth/auth_service.dart';
import 'package:chat_tutorial/components/my_button.dart';
import 'package:chat_tutorial/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  //login method
  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    //try login

    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _pwController.text);
    }

    //catch any errors
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            //welcome back message
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //email textfield
            MyTextField(
              controller: _emailController,
              hintText: "Email",
              obscureText: false,
            ),
            //pw textfield
            SizedBox(
              height: 10,
            ),
            //login button

            MyTextField(
              controller: _pwController,
              hintText: "Password",
              obscureText: true,
            ),

            SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),

            const SizedBox(
              height: 25,
            ),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
