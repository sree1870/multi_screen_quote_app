import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:multi_screen_quote_app/model.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Quote detail = ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [Colors.greenAccent, Colors.grey]),
          ),
          child: Center(
            child: Column(
              children: [
                Text("${detail.quote}", style: GoogleFonts.mySoul(fontSize: 30,color:Colors.pinkAccent)),
                SizedBox(height: 20),
                Text(
                  "${detail.author}",
                  style: GoogleFonts.eduNswActFoundation(fontSize: 30,color: Colors.limeAccent),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
