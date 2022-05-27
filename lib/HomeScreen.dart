import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'ImageSlider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({Key? key}) : super(key: key);

  Color red = Color.fromARGB(255, 7, 147, 247);

  void fun() {
    print("true");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: red.withOpacity(0.5),
      drawer: PhoneDrawer(fun, fun, fun),
      appBar: AppBar(
        title: const Text('All Categories '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: itemPhone('MacBook Pro')),
                  const SizedBox(width: 5),
                  Expanded(child: itemPhone('Mac Studio')),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: itemPhone('Iphone13')),
                  const SizedBox(width: 5),
                  Expanded(child: itemPhone('Iphone13ProMax')),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: itemPhone('iPad Pro')),
                  const SizedBox(width: 5),
                  Expanded(child: itemPhone('iPad mini')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemPhone(String Phone) {
    return Tooltip(
      verticalOffset: 0,
      height: 100,
      message: " Look at the beauty of Apple $Phone ",
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeImageSlider(),
              ));
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 5),
          padding: const EdgeInsets.all(10),
          // height: 150,
          // width: 150,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 132, 13, 102)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              Phone,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
