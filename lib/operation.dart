
import 'package:flutter/material.dart';

class operation extends StatefulWidget {
  const operation({Key? key}) : super(key: key);

  @override
  State<operation> createState() => _operationState();
}

class _operationState extends State<operation> {
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  String radio = "";
  double result = 0.0;
  void cal(){
    
    if(radio=="somme"){
      result = double.parse(t1.text) + double.parse(t2.text);
    }else if(radio =="moins"){
      result =  double.parse(t1.text) - double.parse(t2.text);
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "enter nbr 1",
            ),
            controller: t1,
          ),
          TextField(
            decoration: InputDecoration(labelText: "enter nbr2"),
            controller: t2,
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  title: Text("somme"),
                  value: "somme",
                  groupValue: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value!;
                    });
                  },
                ),
              ),
              Expanded(
                  child: RadioListTile(
                title: Text("moins"),
                    value: "moins",
                    groupValue: radio,
                    onChanged: (value){
                  setState(() {
                    radio=value!;
                  });
                    },
              ))
            ],
          ),
          ElevatedButton(onPressed:(){
            setState(() {
              cal();
            });
          }, child: Text("calculer")),
          Text("$result")
        ],
      ),
    );
  }
}
