import 'package:flutter_riverpod/flutter_riverpod.dart';

//色固定の状態管理用プロバイダー
final fixed_colorNotifierProvider =
    StateNotifierProvider<fixed_colorNotifier, List<bool>>((ref) {
  return fixed_colorNotifier([false, false, false]);
});

class fixed_colorNotifier extends StateNotifier<List<bool>> {
  bool OPEN = false;
  bool LOCK = true;
  fixed_colorNotifier(List<bool> notifier_fix) : super(notifier_fix);

  void updateState(int id) {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    oldState[id] = !oldState[id];
    final newState = oldState;
    // データを上書き
    state = newState;
  }
}
















/*
//import 'dart:math' ;
//import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'fixed_color.g.dart';

@riverpod
class Fixed_colorNotifier extends _$Fixed_colorNotifier {
  @override
  List<bool> build() {
    // 最初のデータ
    bool OPEN = false;
    bool LOCK = true;
    return [OPEN, OPEN, OPEN];
  }

  // データを変更する関数
  void updateState() {

  }


}
*/