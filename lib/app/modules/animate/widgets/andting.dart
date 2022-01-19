import 'package:flutter/material.dart';

class Andting extends StatelessWidget {
  final Animation<double> controller;
  late final Animation<double> height;
  late final Animation<EdgeInsets> padding;
  late final Animation<Color?> color;

  Andting({Key? key, required this.controller}) : super(key: key) {
    // 高度
    height = Tween<double>(begin: 0.0, end: 300).animate(
      CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.0,
            0.6,
            curve: Curves.ease,
          )),
    );

    // 颜色
    color = ColorTween(
      begin: Colors.green,
      end: Colors.red,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, 0.6, //间隔，前60%的动画时间
          curve: Curves.ease,
        ),
      ),
    );

    // 移动
    padding = Tween<EdgeInsets>(
      begin: EdgeInsets.only(left: .0),
      end: EdgeInsets.only(left: 100.0),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.6, 1.0, //间隔，后40%的动画时间
          curve: Curves.ease,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          alignment: Alignment.bottomCenter,
          padding: padding.value,
          child: Container(
            color: color.value,
            width: 50.0,
            height: height.value,
          ),
        );
      },
    );
  }
}
