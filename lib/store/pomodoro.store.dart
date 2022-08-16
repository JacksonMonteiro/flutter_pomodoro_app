// ignore_for_file: library_private_types_in_public_api
import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 25;

  @observable
  int restTime = 5;

  @observable
  int minutes = 25;

  @observable
  int seconds = 0;

  @observable
  bool isStarted = false;

  @observable
  IntervalType intervalType = IntervalType.work;

  Timer? cronometer;

  @action
  void incrementWorkTime() {
    workTime++;
    if (isWorking()) restart();
  }

  @action
  void incrementRestTime() {
    restTime++;
    if (isResting()) restart();
  }

  @action
  void decrementWorkTime() {
    workTime--;
    if (isWorking()) restart();
  }

  @action
  void decrementRestTime() {
    restTime--;
    if (isResting()) restart();
  }

  @action
  void start() {
    isStarted = true;
    cronometer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _switchIntervalType();
        stop();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    isStarted = false;
    cronometer?.cancel();

    minutes = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  @action
  bool isResting() {
    return intervalType == IntervalType.rest;
  }

  void _switchIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.rest;
      minutes = workTime;
    } else {
      intervalType = IntervalType.work;
      minutes = restTime;
    }

    seconds = 0;
  }
}

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { work, rest }
