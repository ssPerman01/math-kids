import 'package:flutter/material.dart';

class Numpad extends StatefulWidget {
  
  
  @override
  _NumpadState createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NumpadButton extends StatelessWidget {
    final String text;
    final IconData icon;
    final bool haveBorder;
    final Function onPressed;

    const NumpadButton({this.text, this.icon, this.haveBorder = true, this.onPressed});

  @override
  Widget build(BuildContext context) {
      TextStyle buttonStyle = TextStyle(fontSize: 22.0, color: Theme.of(context).primaryColor);
      Widget label = icon != null ? Icon(icon, color: Theme.of(context).primaryColor.withOpacity(0.8), size: 35.0,)
          : Text(this.text ?? '', style: buttonStyle);
    
      return Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: OutlineButton(
              borderSide: haveBorder ? BorderSide(
                  color: Colors.grey[400]
              ) : BorderSide.none ,
              highlightedBorderColor: icon!=null ? Colors.transparent : Theme.of(context).primaryColor.withOpacity(0.3),
              splashColor: icon!=null ? Colors.transparent : Theme.of(context).primaryColor.withOpacity(0.1),
              padding: EdgeInsets.all(20.0),
              shape: CircleBorder(),
              onPressed: onPressed,
              child: label,
          ),
      );
  }
}

