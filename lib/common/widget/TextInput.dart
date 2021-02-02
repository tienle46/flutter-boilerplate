import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final double width;
  final TextStyle titleTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;
  final double paddingHorizontal;
  final bool obscureText;

  const TextInput({
    Key key,
    this.controller,
    this.title,
    this.obscureText: false,
    this.width,
    this.titleTextStyle,
    this.hintText,
    this.hintTextStyle,
    this.paddingHorizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: this.paddingHorizontal, right: this.paddingHorizontal),
      child: Container(
        width: this.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            this.title != null
                ? Container(
                    width: this.width,
                    child: Text(
                      this.title,
                      style: this.titleTextStyle != null
                          ? this.titleTextStyle
                          : TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Color(0xFF022262),
                              fontWeight: FontWeight.bold,
                            ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 10),
                  )
                : null,
            TextField(
              obscureText: this.obscureText,
              decoration: InputDecoration(
                fillColor: Color(0xFFF7F7F7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: this.hintText != null ? this.hintText : null,
                hintStyle: this.hintTextStyle != null
                    ? this.hintTextStyle
                    : TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Color(0xFF9EA4B1),
                      ),
                contentPadding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              ),
              controller: this.controller,
            ),
          ],
        ),
      ),
    );
  }
}
