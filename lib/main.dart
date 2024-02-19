import 'package:flutter/material.dart';
import 'package:toast_practice/toast_practice.dart' ;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  ///숫자 증가
  void _incrementCounter() {
    _counter = ToastView.addOne(_counter);
    setState(() {});
  }

  ///toast 실행
  void _showToast(String msg, BuildContext context) {

    /// 객체 선언(인스턴스)
    final toastView = ToastView();

    ///child 위젯 설정
    Widget toast =
    Container(
      //width: MediaQuery.of(context).size.width-50,
      //padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff67CC36),
      ),
      child: Center(child: Text(msg,style: TextStyle(color:Colors.white, decoration: TextDecoration.none,), textAlign: TextAlign.center)),
    );

    ///toast 생성
    toastView.createToast(
      child: toast,
      context: context,
      duration: const Duration(seconds: 1), //시간 설정
      positionBuilder: (context, child){ //custom
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: child,
              top: 200,
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

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          _incrementCounter();// 숫자 증가
          _showToast('$_counter',context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
