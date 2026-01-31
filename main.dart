import 'package:flutter/material.dart';
class BillCalculator extends StatefulWidget {
  const BillCalculator({super.key});

  @override
  State<BillCalculator> createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  String name = "";
  String description = "";
  double age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 400.0,
          child: Padding(
            padding: EdgeInsetsGeometry.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  } ,
                  decoration: InputDecoration(
                    labelText: "Name",
          
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Choose your age"
                ),
                SizedBox(
                  height: 30,
          
                ),
                Center(child: Text("$age")),
                Slider(
                  value: age,
                  min: 0,
                  max: 100,
                  divisions: 100, 
                 onChanged: (value) {
                  setState(() {
                 age = value;  
                  });
                  
                 }),
                 SizedBox(
                  height: 30.0,
                 ),
                 ElevatedButton(
                  onPressed: () {
                    setState(() {
                      description = "Your name is $name and you are $age years old";
                  }); },
                 child: Text(
                  "Generate information"
                 )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    description
                  ),
                ) 
              ]
            ), 
          ),
        ),
      ),
    );
  }
}