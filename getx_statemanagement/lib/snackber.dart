import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBer extends StatefulWidget {
  const SnackBer({super.key});

  @override
  State<SnackBer> createState() => _SnackBerState();
}

class _SnackBerState extends State<SnackBer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackber in GetX')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar('Title', "Message",
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    snackPosition: SnackPosition.BOTTOM,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(30),
                    animationDuration: const Duration(microseconds: 2000),
                    borderColor: Colors.yellow,
                    borderWidth: 2,
                    mainButton: TextButton(
                      onPressed: () {
                        print('Main button');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey.shade300)),
                      child: const Text('main button clicked'),
                    ),
                    onTap: (value) {
                      print('snackbar clicked');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    overlayBlur: 4,
                    overlayColor: Colors.red,
                    snackbarStatus: (value) {
                      print(value);
                    });
              },
              child: const Text("Show snackber"))
        ]),
      ),
    );
  }
}
