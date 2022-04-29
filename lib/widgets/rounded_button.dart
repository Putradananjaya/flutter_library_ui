import 'package:flutter/material.dart';
import 'package:flutter_library_ui/screens/home_screen.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double verticalPadding;
  final double fontsize;

  const RoundedButton({
    Key? key,
    required this.text,
    this.verticalPadding = 16,
    this.fontsize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: verticalPadding),
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
