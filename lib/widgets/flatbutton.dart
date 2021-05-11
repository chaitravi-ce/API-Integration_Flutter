import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonName,
    this.func
  }) : super(key: key);

  final String buttonName;
  final Function func;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 35),
      child: Container( 
        height: size.height * 0.08,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue
        ),
        child: FlatButton(
          onPressed: () => func(),
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 22, 
              color: Colors.white, 
              height: 1.5,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}