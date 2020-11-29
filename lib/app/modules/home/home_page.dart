import 'package:FlutterSlidyModular/app/components/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Observer(
              builder: (_) => TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Text",
                  errorText: controller.getText,
                ),
                onChanged: controller.setText,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonCustom(
              function: () {
                Modular.to.pushReplacementNamed('/login');
                // Modular.to.pushNamed('/login');
              },
              labelText: "Login Module",
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
              builder: (_) => Text(
                  "Text... ${controller.text == null ? "" : controller.text}"),
            ),
          ],
        ),
      ),
    );
  }
}
