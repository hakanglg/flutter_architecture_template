// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TestViewModel on _TestViewModelBase, Store {
  late final _$valueAtom =
      Atom(name: '_TestViewModelBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_TestViewModelBaseActionController =
      ActionController(name: '_TestViewModelBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_TestViewModelBaseActionController.startAction(
        name: '_TestViewModelBase.increment');
    try {
      return super.increment();
    } finally {
      _$_TestViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
