import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @action
  void incrementWorkTime() {
    workTime++;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementWorkTime() {
    workTime--;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }
}

class PomodoroStore = _PomodoroStore with _$PomodoroStore;
