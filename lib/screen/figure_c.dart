import 'package:flutter/material.dart';

void main() => runApp(const FigureC());

class FigureC extends StatelessWidget {
  const FigureC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "3 circle container",
        home: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //first circle container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),

                //second circle container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0XFF5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
              ]),
              const SizedBox(height: 50),
              Column(children: [
                //first container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0X5A5A5A5a),
                ),
                const SizedBox(
                  height: 50,
                ),

                //second container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0XFF5A5A5a),
                ),
                const SizedBox(
                  height: 50,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    elevation: 5.0,
                    minWidth: 100,
                    height: 60,
                    color: Colors.orange[200],
                    child: const Text('Back',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ])
            ])));
  }
}
