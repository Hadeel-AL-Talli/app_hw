// import 'package:as3/HomeScreen.dart';
// import 'package:flutter/material.dart';


// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   var formKey = GlobalKey<FormState>();
//   bool passwordVisible = true;
//   Color white = Colors.white;
//   Color blue = Colors.blue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Sign in',
//           style: TextStyle(fontSize: 30, color: white),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //User name
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: 'Enter UserName',
//                     hintStyle: const TextStyle(fontSize: 15),
//                     prefixIcon: const Icon(Icons.person_outlined)),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Enter your User Name';
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.text,
//               ),
//               const SizedBox(height: 10),
//               //Email
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: 'Enter Email',
//                     hintStyle: const TextStyle(fontSize: 15),
//                     prefixIcon: const Icon(Icons.alternate_email)),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Enter your email';
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               const SizedBox(height: 10),

//               //Password
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Enter Password',
//                   hintStyle: const TextStyle(fontSize: 15),
//                   prefixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           passwordVisible = !passwordVisible;
//                         });
//                       },
//                       icon: Icon(passwordVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off)),
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Enter your Password';
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: passwordVisible,
//               ),
//               const SizedBox(height: 10),

//               //Button
//               Container(
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: blue,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: MaterialButton(
//                   padding: const EdgeInsets.all(20),
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => HomeScreen(),
//                           ));
//                     }
//                   },
//                   child: const Text(
//                     "Sign In",
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),

//               TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Sign UP!',
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontWeight: FontWeight.normal),
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
