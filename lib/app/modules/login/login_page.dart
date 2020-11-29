import 'package:FlutterSlidyModular/app/modules/home/home_controller.dart';
import 'package:FlutterSlidyModular/app/shared/components/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  var controllerHome = Modular.get<HomeController>();

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
            Text(controllerHome.text ?? ""),
            SizedBox(
              height: 15,
            ),
            ButtonCustom(
              function: () {
                Modular.to.pushReplacementNamed('/');
              },
              labelText: "Home Module",
            ),
            SizedBox(
              height: 15,
            ),
            ButtonCustom(
              function: () {
                Modular.to.pushNamed('/login/reset');
              },
              labelText: "Reset Page",
            ),
          ],
        ),
      ),
    );
  }
}
