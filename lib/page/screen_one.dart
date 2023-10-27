import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              'Welcome',
              style: GoogleFonts.poppins(fontSize: 40),
            ),
            const SizedBox(
              height: 65,
            ),
            Image.asset('assets/images/welcome1.png'),
            const SizedBox(
              height: 65,
            ),
            Text(
              'You can go anywher \nfrom here',
              style: GoogleFonts.quicksand(fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
