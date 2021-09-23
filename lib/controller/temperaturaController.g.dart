// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperaturaController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Temperatura on TemperaturaController, Store {
  final _$temperaturaAtom = Atom(name: 'TemperaturaController.temperatura');

  @override
  int get temperatura {
    _$temperaturaAtom.reportRead();
    return super.temperatura;
  }

  @override
  set temperatura(int value) {
    _$temperaturaAtom.reportWrite(value, super.temperatura, () {
      super.temperatura = value;
    });
  }

  final _$TemperaturaControllerActionController =
      ActionController(name: 'TemperaturaController');

  @override
  dynamic aumentar() {
    final _$actionInfo = _$TemperaturaControllerActionController.startAction(
        name: 'TemperaturaController.aumentar');
    try {
      return super.aumentar();
    } finally {
      _$TemperaturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic diminuir() {
    final _$actionInfo = _$TemperaturaControllerActionController.startAction(
        name: 'TemperaturaController.diminuir');
    try {
      return super.diminuir();
    } finally {
      _$TemperaturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
temperatura: ${temperatura}
    ''';
  }
}
