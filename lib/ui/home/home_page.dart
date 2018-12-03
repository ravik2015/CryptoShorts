import 'dart:math' as Math;

import 'package:flutter/material.dart';

import 'home_page_body.dart';

import 'package:crypto_shadow/ui/common/gradient_appbar_with_back.dart';

import 'package:crypto_shadow/ui/news/news_page.dart';
import 'package:crypto_shadow/ui/settings/settings_page.dart';
import 'package:crypto_shadow/theme.dart' as Theme;

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController _controller;
  static const List<IconData> icons = const [Icons.settings, Icons.view_list];

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        new GradientAppBarWithBack("CryptoShorts"),
        new HomePageBody(),
      ],
    ));
  }
}
