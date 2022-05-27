
import 'package:as3/Helpers/helpers.dart';
import 'package:as3/HomeScreen.dart';
import 'package:as3/controller/fb_auth_controller.dart';
import 'package:as3/screens/forget_password.dart';
import 'package:as3/screens/register.dart';
import 'package:as3/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigateToRegisterScreen;
    // _tapGestureRecognizer.onTap = navigateToRegisterScreen;
  }

  void navigateToRegisterScreen() {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Text(
            'Welcome back...',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const Text(
            'Enter your email & password',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 15),
          AppTextField(
            hint: 'Email',
            controller: _emailTextController,
            prefixIcon: Icons.email,
          ),
          const SizedBox(height: 10),
          AppTextField(
            hint: 'Password',
            controller: _passwordTextController,
            prefixIcon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () async => await performLogin(),
            child: const Text('LOGIN'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Don\'t have an account?',
              style: const TextStyle(
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: ' '),
                TextSpan(
                  recognizer: _tapGestureRecognizer,
                  text: 'Create Now!',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          TextButton(
            onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
            }
              ,
            child: const Text("Forget Password?"),
          )
        ],
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(
      context: context,
      message: 'Enter required data!',
      error: true,
    );
    return false;
  }

  Future<void> login() async {
    bool status = await FbAuthController().signIn(
        context: context,
        email: _emailTextController.text,
        password: _passwordTextController.text);
    if (status) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }
  }
}
