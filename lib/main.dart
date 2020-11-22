import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: AlertWithIcon()
              )
            )
          );
  }
}
 
class AlertWithIcon extends StatefulWidget {
  AlertWithIconWidget createState() => AlertWithIconWidget();
}
 
class AlertWithIconWidget extends State {
  showAlert(BuildContext context) {
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children:[
            Image.network('https://img.icons8.com/color/452/flutter.png',
              width: 50, height: 50, fit: BoxFit.contain,),
            Text('  Alert Dialog Image. ')
            ]
          ),
        content: Text("Are You Sure Want To Proceed?"),
        actions: <Widget>[
          FlatButton(
            child: Text("ตกลง"),
            onPressed: () {
              // ใส่เงื่อนไขการกดตกลง
              Toast.show("ตกลง", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              Navigator.of(context).pop();
            },
          ),
 
           FlatButton(
            child: Text("ยกเลิก"),
            onPressed: () {
              // ใส่เงื่อนไขการกดยกเลิก
              Toast.show("ยกเลิก", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
     },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Center(
        child:
            RaisedButton(
              onPressed: () => showAlert(context),
              child: Text('แสดงผล',style: TextStyle(fontSize: 20),),
              textColor: Colors.white,
              color: Colors.red[400],
              padding: EdgeInsets.fromLTRB(15, 12, 15, 12),
            ),
      ),
    );
  }
}