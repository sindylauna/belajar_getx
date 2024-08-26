// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hitungan ke :'),
            Obx(
              () =>Text(controller.bilangan.toString()),
            ),
            ElevatedButton(onPressed: () {
              controller.tambahSatu();
            }, 
            child: Icon(Icons.add),
            ),
            ElevatedButton(onPressed: () {
              controller.kurangSatu();
            }, 
            child: Icon(Icons.minimize_outlined),
            ), ElevatedButton(onPressed: () {
              controller.resetData();
            }, 
            child: Icon(Icons.restart_alt),
            )
          ],
        )
      )
    );
  }
}
