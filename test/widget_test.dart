// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  showData();
}

void showData() {
  startTask();
  String account = accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청 수행 시작';
  debugPrint(info1);
}

String accessData() {
  String account = '8,500만원';
  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    //sleep(time);
    Future.delayed(time, () {
      account = '데이터에 처리 완료';
      debugPrint(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    debugPrint(info2);
  }

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다.';
  debugPrint(info3);
}
