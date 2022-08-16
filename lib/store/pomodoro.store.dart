// ignore_for_file: library_private_types_in_public_api
import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  bool isStarted = false;

  @observable
  IntervalType intervalType = IntervalType.rest;

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

  @action
  void start() {
    isStarted = true;
  }

  @action
  void stop() {
    isStarted = false;
  }

  @action
  void restart() {
    isStarted = false;
  }

  @action
  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  @action
  bool isResting() {
    return intervalType == IntervalType.rest;
  }
}

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { work, rest }
