// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Caculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Container button (String text1,Color color1){
  return Container(
    margin: const EdgeInsets.all(1), 
          color: color1, 
          child:SizedBox(
            width:115,
            height:60,
            // ignore: deprecated_member_use
            child: OutlineButton(
            borderSide: const BorderSide(
                    color: Colors.transparent,
                    style: BorderStyle.none,
            ),
                onPressed:(){},
                          child:Text(text1,style:const TextStyle(color:Colors.white, fontSize: 19)),
                ),
          )
  );
}

Row rowvalue(String text1,Color color1,String text2,Color color2, String text3,Color color3, String text4, Color color4){
  return Row(
              mainAxisAlignment: MainAxisAlignment.center,

    children: [ 
      button(text1,color1),
      button(text2,color2),
      button(text3,color3),
      button(text4,color4),

  ],);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 200,
                width: 465,
                color: Colors.grey,
                child: Column(children: [
                      Container(
                      margin: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                      height: 50,
                      alignment: Alignment.topLeft,
                      child: Flexible(
                        child: RichText(
                        overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              style: const TextStyle(color: Colors.black,fontSize: 30),
                            text: "Dữ liệu nhập ở đây nha",
                          ),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 10, 0),
                      height: 30,
                      alignment: Alignment.topRight,
                      child: Text("Còn Đây là kết quả",style: TextStyle(fontSize:30))
                  ),
              ],),
            ),
            
            rowvalue('(',Colors.grey,')',Colors.grey,'DEL',Colors.red,'AC',Colors.red),
            rowvalue('7',Colors.grey.shade700,'8',Colors.grey.shade700,'9',Colors.grey.shade700,'÷',Colors.grey),
            rowvalue('4',Colors.grey.shade700,'5',Colors.grey.shade700,'6',Colors.grey.shade700,'x',Colors.grey),
            rowvalue('1',Colors.grey.shade700,'2',Colors.grey.shade700,'3',Colors.grey.shade700,'-',Colors.grey),
            rowvalue('0',Colors.grey.shade700,'.',Colors.grey.shade700,'=',Colors.blue,'+',Colors.grey,),
            rowvalue('sin',Colors.grey,'cos',Colors.grey,'tan',Colors.grey,'^',Colors.grey),
            rowvalue('√(',Colors.grey,'π',Colors.grey,'%',Colors.grey,'e',Colors.grey),
          ],
        ),
      ),
    );
  }
}
