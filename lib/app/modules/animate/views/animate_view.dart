import 'package:flutter/material.dart';
import 'package:flutter_animation/app/modules/animate/widgets/common.dart';

import 'package:get/get.dart';

import '../controllers/animate_controller.dart';

class AnimateView extends GetView<AnimateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimateView'),
        centerTitle: true,
      ),
      body: Common(),
    );
  }
}
