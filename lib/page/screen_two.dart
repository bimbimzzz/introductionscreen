import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
            Text(
              'Plan Your Trip',
              style: GoogleFonts.poppins(fontSize: 40),
            ),
            const SizedBox(
              height: 45,
            ),
            Image.asset('assets/images/welcome2.png'),
            const SizedBox(
              height: 45,
            ),
            Text(
              'Plan where you want \nto go with ease.',
              style: GoogleFonts.quicksand(fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
