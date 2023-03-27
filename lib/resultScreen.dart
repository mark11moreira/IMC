import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  String result;
  String msg;
  String des;

  ResultScreen(this.result, this.msg, this.des, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2E3A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2F2E3A),
        //  title: Text("Resultado"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Text(
              "O seu resultado",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xFF24232F),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.result,
                    style: const TextStyle(color: Colors.green, fontSize: 50),
                  ),
                  //   Text(
                  //    widget.msg,
                  //    textAlign: TextAlign.center,
                  //    style: TextStyle(
                  //      color: Colors.white,
                  //     fontSize: 30,
                  //   ),
                  //  ),
                  Text(
                    widget.des,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              color: const Color(0xFF1DE9B6),
              margin: const EdgeInsets.only(bottom: 10.0),
              child: const Text(
                "Recalcular",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
