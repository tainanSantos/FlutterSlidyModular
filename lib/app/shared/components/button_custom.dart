import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';

class ButtonCustom extends StatelessWidget {
  final String labelText;
  final Function function;

  const ButtonCustom({
    Key key,
    @required this.labelText,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: RaisedButton(
        onPressed: function,
        child: Text(labelText),
      ),
    );
  }
}
