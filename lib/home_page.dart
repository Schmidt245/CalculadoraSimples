import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0;
  var num2 = 0;
  dynamic total = 0;

  final TextEditingController textEditingController1 = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();

  void doAdd(){
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);
      total = num1 + num2;
    });
  }
  void doSub(){
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);
      total = num1 - num2;
    });
  }
  doMult(){
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);
      total = num1 * num2;
    });
  }
  doDiv(){
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);
      total = num1/num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  "Output: $total",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter a number 1",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                  controller: textEditingController1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter a number 2",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                  controller: textEditingController2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("+"),
                    onPressed: doAdd,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  ElevatedButton(
                    child: Text("-"),
                    onPressed: doSub,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("*"),
                    onPressed: doMult,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  ElevatedButton(
                    child: Text("/"),
                    onPressed: doDiv,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
