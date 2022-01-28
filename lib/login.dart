import 'package:cubos_academy/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // !

            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 80,
              ),
            ),

            const SizedBox(height: 16.0),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
              ),
            ),

            _forms(),

            // !

            const SizedBox(height: 8.0),

            ElevatedButton(
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (contex) => HomeScreen(),
                  ),
                  (_) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _forms() {
    return Column(
      children: [
        _inputs(
          hintText: 'Email',
          suffixIcon: const Icon(Icons.person),
        ),
        const SizedBox(height: 8.0),
        _inputs(
          hintText: 'Password',
          suffixIcon: const Icon(Icons.password),
        ),
      ],
    );
  }

  Widget _inputs({String? hintText, Icon? suffixIcon}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
