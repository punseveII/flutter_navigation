import 'package:flutter/material.dart';
import 'figure_c.dart';

void main() => runApp(const FigureB());

class FigureB extends StatelessWidget {
  const FigureB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Figure B: Columns",
        home: Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //first square container
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),

                //second square container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0XFF5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),

                //third square container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
              ]),
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                          builder: (context) => const FigureC()));
                    },
                  ),
                ),
              ])
            ])));
  }
}
