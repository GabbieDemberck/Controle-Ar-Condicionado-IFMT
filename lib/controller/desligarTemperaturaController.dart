import 'package:mobx/mobx.dart';
part 'desligarTemperaturaController.g.dart';

class BotaoDesligar = DesligarTemperaturaController with _$BotaoDesligar;

abstract class DesligarTemperaturaController with Store {
  @observable
  bool ligado = true;

  @action
  desligar() {
    if (!ligado) {
      ligado = true;
    } else {
      ligado = false;
    }
  }
}
