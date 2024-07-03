import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  textField(
      {this.Ltext,
      this.Htext,
      this.iconT,
      this.iconS,
      required this.isObscure,
      this.Lstyle,
      this.Hstyle});
  String? Ltext;
  String? Htext;
  Widget? iconT;
  Widget? iconS;
  TextStyle? Lstyle;
  TextStyle? Hstyle;

  bool isObscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          labelStyle: Lstyle,
          labelText: Ltext,
          hintStyle: Hstyle,
          hintText: Htext,
          prefixIcon: iconT,
          suffixIcon: iconS,
          floatingLabelStyle: TextStyle(color: Colors.purple),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.purple),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.purple),
          ),
        ),
      ),
    );
  }
}
