import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(
    const ScreenLogin(),
  );
}

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  final _formKey = GlobalKey<FormState>();

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildEmailTextField(),
              const SizedBox(height: 10),
              _buildPasswordTextField(),
              const SizedBox(height: 10),
              _buildLoginButton(),
              const SizedBox(height: 10),
              _buildSignupTextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignupTextButton() {
    return TextButton(
      onPressed: () {},
      child: const Text("Create a New Account"),
    );
  }

  final _emailCtrl = TextEditingController();

  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailCtrl,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink.shade400,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.email),
        hintText: "Enter Email",
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.newline,
      validator: (String? text) {
        if (text!.isEmpty) {
          return "Email is required";
        }
        return null; // null means no problem
      },
    );
  }

  final _passwordCtrl = TextEditingController();
  bool _hide = true;

  Widget _buildPasswordTextField() {
    return TextFormField(
      controller: _passwordCtrl,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: "Enter Password",
        hintStyle: const TextStyle(color: Colors.grey),
        // icon: Icon(Icons.password),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink.shade400,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.key),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _hide = !_hide;
            });
          },
          icon: Icon(_hide ? Icons.visibility : Icons.visibility_off),
        ),
      ),
      obscureText: _hide,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.send,
      validator: (String? text) {
        if (text!.isEmpty) {
          return "Password is required";
        }

        if (text.length < 6) {
          return "Password length must be at leat 6 characters";
        }
        return null; // null means no problem
      },
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            if (_emailCtrl.text.trim() == "admin" &&
                _passwordCtrl.text.trim() == "admin123") {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Login Failed"),
                ),
              );
            }
          }
        },
        child: const Text("LOGIN"),
      ),
    );
  }
}
