import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
              'Book With Ease',
              style: GoogleFonts.poppins(fontSize: 40),
            ),
            const SizedBox(
              height: 45,
            ),
            Image.asset('assets/images/welcome3.png'),
            const SizedBox(
              height: 45,
            ),
            Text(
              'Save your time \nfor other important\nthings.',
              style: GoogleFonts.quicksand(fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
