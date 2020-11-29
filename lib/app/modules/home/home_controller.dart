import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String text;

  @action
  setText(value) => this.text = value;

  @computed
  String get getText => (this.text == null || this.text.isEmpty)
      ? "Text cannot be empity."
      : null;
}
