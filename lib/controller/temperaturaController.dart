import 'package:mobx/mobx.dart';
part 'temperaturaController.g.dart';

class Temperatura = TemperaturaController with _$Temperatura;

abstract class TemperaturaController with Store {
  @observable
  int temperatura = 0;

  @action
  aumentar() {
    temperatura++;
  }

  @action
  diminuir() {
    temperatura--;
  }
}
