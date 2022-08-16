// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'count.store.g.dart';

abstract class _CountStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}

class CountStore = _CountStore with _$CountStore;
