import 'pages/reset/reset_controller.dart';
import 'pages/reset/reset_page.dart';
import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ResetController,
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter('/reset', child: (_, args) => ResetPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
