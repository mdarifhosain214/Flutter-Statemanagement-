import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDialog extends StatefulWidget {
  const GetXDialog({super.key});

  @override
  State<GetXDialog> createState() => _GetXDialogState();
}

class _GetXDialogState extends State<GetXDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Dialog')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Show Dialog'),
        onPressed: () {
          Get.defaultDialog(
              title: "Dialog",
              titleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              titlePadding: EdgeInsets.all(8),
              backgroundColor: Color.fromARGB(244, 155, 242, 245),
              middleText: "This is m9ddle tex placed");
        },
      )),
    );
  }
}
