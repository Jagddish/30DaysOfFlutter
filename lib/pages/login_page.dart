import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          LoginForm(),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]")
                        .hasMatch(value)) {
                  return 'Enter a valid Username!';
                }
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]")
                        .hasMatch(value)) {
                  return 'Enter correct password!';
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
