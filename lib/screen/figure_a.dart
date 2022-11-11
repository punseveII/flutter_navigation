import 'package:flutter/material.dart';
import 'figure_b.dart';

void main() => runApp(const FigureA());

class FigureA extends StatelessWidget {
  const FigureA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Figure A: Rows",
        home: Scaffold(
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Column(children: [
                const SizedBox(height: 50),

                //First Container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0X5A5A5A5a),
                ),
                const SizedBox(
                  height: 50,
                ),

                //Second Container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0xFF5A5A5a),
                ),
                const SizedBox(
                  height: 50,
                ),

                //Third Container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0xFF5A5A5a),
                ),
                const SizedBox(
                  height: 50,
                ),

                //Fourth Container
                Container(
                  height: 100,
                  width: 350,
                  color: const Color(0X5A5A5A5a),
                ),

                const SizedBox(
                  height: 50,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      elevation: 5.0,
                      minWidth: 100,
                      height: 60,
                      color: Colors.orange[200],
                      child: const Text('Next',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FigureB()));
                      },
                    ),
                  ),
                ])
              ])
            ])));
  }
}
