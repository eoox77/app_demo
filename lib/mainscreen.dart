import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController idController = TextEditingController();
  String msg = "이 곳에 입력값이 업데이트 됩니다.";
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainScreen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: idController,
              decoration: InputDecoration(labelText: "ID를 입력하세요"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // setState(() {
              //   if (idController.text.toString().length != 0) {
              //     msg = idController.text.toString();
              //   }
              //   else{
              //     msg = "이 곳에 입력값이 업데이트 됩니다.";
              //   }
              // });
              counter.value ++;
              print(idController.text.toString());
            },
            child: Text("ID 입력값 가져오기"),
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 20),
          ),
          ValueListenableBuilder<int>(valueListenable: counter, builder: (context, value, child) {
            return Text("Count: $value");
          },)
        ],
      ),
    );
  }
}
