import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapplication/utils/colors.dart'; // Adjust import as needed
import 'package:webapplication/utils/constants.dart'; // Ensure 'logo' is defined here
import 'package:webapplication/utils/styles.dart'; // Ensure 'borderedButtonStyle' is defined here

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DeskTopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        navLogo(),
      ],
    ),
  );
}

Widget DeskTopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        navLogo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback'),
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(
            style: borderedButtonStyle,
            onPressed: () {},
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(logo),
        fit: BoxFit.contain,
      ),
    ),
  );
}
