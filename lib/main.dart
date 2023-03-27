import 'package:bmi_calculator/calResult.dart';
import 'package:flutter/material.dart';

import 'resultScreen.dart';

enum Gender {
  male,
  female,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFF24232F),
          hintColor: Color.fromARGB(255, 53, 46, 123),
          scaffoldBackgroundColor: const Color(0xFF2F2E3A)),
      debugShowCheckedModeBanner: false,
      home: const InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color inactiveColor = const Color(0xFF24232F);
  Color active_m_Color = Color.fromARGB(255, 234, 41, 211);
  Color active_h_Color = Color.fromARGB(255, 41, 27, 246);
  int height = 180;
  int weight = 30;
  int age = 15;
  Gender? selectedGender;

  // _InputScreenState(this.selectedGender);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F2E3A),
        elevation: 0,
        title: const Text(
          "Calculadora de IMC",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: selectedGender == Gender.male
                              ? active_h_Color
                              : inactiveColor),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 85,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Homem",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: selectedGender == Gender.female
                              ? active_m_Color
                              : inactiveColor),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 85,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Mulher",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: inactiveColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "altura",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      overlayColor: const Color(0x291DE986),
                      inactiveTrackColor: Colors.grey,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 16.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color.fromARGB(255, 202, 108, 236),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 250.0,
                      onChanged: (double v) {
                        setState(() {
                          height = v.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      color: inactiveColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Peso",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTickMarkColor: Colors.white,
                                  overlayColor: const Color(0x291DE986),
                                  inactiveTrackColor: Colors.grey,
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 30.0),
                                  thumbColor:
                                      Color.fromARGB(255, 108, 236, 136),
                                ),
                                child: Slider(
                                  value: weight.toDouble(),
                                  min: 30.0,
                                  max: 180.0,
                                  label: weight.round().toString(),
                                  onChanged: (double v) {
                                    setState(() {
                                      if (weight > 10) {
                                        weight = v.round();
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      color: inactiveColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Idade",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTickMarkColor: Colors.white,
                                  overlayColor: const Color(0x291DE986),
                                  inactiveTrackColor: Colors.grey,
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 30.0),
                                  thumbColor:
                                      Color.fromARGB(255, 108, 236, 136),
                                ),
                                child: Slider(
                                  value: age.toDouble(),
                                  min: 15.0,
                                  max: 70.0,
                                  onChanged: (double v) {
                                    setState(() {
                                      if (age > 5) {
                                        age = v.round();
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              color: const Color(0xFF1DE9B6),
              child: const Center(
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () {
              navigateToResultScreen(12.0);
            },
          ),
        ],
      ),
    );
  }

  void navigateToResultScreen(double result) {
    CalculateResult obj = CalculateResult(weight, height, result, "");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultScreen(obj.calculateResult(), obj.msg, obj.getDescription()),
      ),
    );
  }
}
