import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/pages/content.dart';
import 'package:test_app/utils/text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: SizedBox(
              height: 30,
              child: Image.asset('assets/images/Visa_Logo.png'),
            ),
          ),
          Positioned(
            top: 50,
            left: 25,
            child: TextWidget(
              text: "It's where you want to be",
              color: Colors.grey.shade900,
              size: 14,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5432 03423 03234 3233',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                Text(
                  'ZAHED HASAN RABBI',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            child: SizedBox(
              height: 80,
              child: Image.asset('assets/images/chip.png'),
            ),
          ),
        ],
      ),
    );
  }
}
