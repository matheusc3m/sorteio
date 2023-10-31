import 'package:flutter/material.dart';

class BotaoModel {
  late String lane;
  late TextEditingController controller;
  late bool enable;

  BotaoModel({
    required this.lane,
    required this.controller,
    this.enable = true,
  });

  set setEnable(bool value) {
    enable = value;
  }

}
