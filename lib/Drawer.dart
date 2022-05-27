import 'package:as3/controller/fb_auth_controller.dart';
import 'package:as3/screens/login.dart';
import 'package:flutter/material.dart';

class PhoneDrawer extends StatelessWidget {
  late Function fun1;
  late Function fun2;
  late Function fun3;
  PhoneDrawer(
    this.fun1,
    this.fun2,
    this.fun3,
  );
  Color white = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 7, 147, 247),
      width: 300,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: Color.fromARGB(255, 241, 246, 247),
            child: const Text(
              'Menu',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          itemListTile("shop"),
          const SizedBox(height: 20),
          itemListTile("Orders"),
          const SizedBox(height: 20),
          itemListTile("Manage Product"),
          const SizedBox(height: 20),
          itemListTile("Manage Product"),
          const SizedBox(height: 20),
          itemListTile("category"),
          const SizedBox(height: 20),
          ListTile(
            onTap: () async {

       await  FbAuthController().signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            } ,
            title: const Text(
              "logout",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            trailing: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }

  ListTile itemListTile(String text) {
    return ListTile(
      onTap: () {},
      title: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
