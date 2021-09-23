// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desligarTemperaturaController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BotaoDesligar on DesligarTemperaturaController, Store {
  final _$ligadoAtom = Atom(name: 'DesligarTemperaturaController.ligado');

  @override
  bool get ligado {
    _$ligadoAtom.reportRead();
    return super.ligado;
  }

  @override
  set ligado(bool value) {
    _$ligadoAtom.reportWrite(value, super.ligado, () {
      super.ligado = value;
    });
  }

  final _$DesligarTemperaturaControllerActionController =
      ActionController(name: 'DesligarTemperaturaController');

  @override
  dynamic desligar() {
    final _$actionInfo = _$DesligarTemperaturaControllerActionController
        .startAction(name: 'DesligarTemperaturaController.desligar');
    try {
      return super.desligar();
    } finally {
      _$DesligarTemperaturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ligado: ${ligado}
    ''';
  }
}
