import 'package:flutter/material.dart';
import 'package:webapplication/pages/containers/container1.dart';
import 'package:webapplication/pages/containers/container2.dart';
import 'package:webapplication/pages/containers/container3.dart';
import 'package:webapplication/pages/containers/container4.dart';
import 'package:webapplication/pages/containers/container5.dart';
import 'package:webapplication/utils/constants.dart';
import 'package:webapplication/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
        child: const Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5()
          ],
        ),
      )),
    );
  }
}
