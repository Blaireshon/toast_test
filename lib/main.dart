import 'package:flutter/material.dart';
import 'package:toast_practice/toast_practice.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(children: [
          Center(
            child: Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  _showToast('position', context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFCAF17),
                  elevation: 0,
                ),
                child: const Text('position',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ]) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  ///toast 실행
  void _showToast(String msg, BuildContext context) {
    /// 객체 선언(인스턴스)
    final toastView = ToastView();

    ///child 위젯 설정
    Widget toast = Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xff67CC36),
      ),
      child: Center(
          child: Text(msg,
              style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20),
              textAlign: TextAlign.center)),
    );

    ///toast 생성
    toastView.createToast(
        child: toast,
        context: context,
        duration: const Duration(seconds: 3), //시간 설정
        fadeDuration:  const Duration(milliseconds: 350), // 스르륵 사라짐
       //animation: toastAnimation.RIGHT,
        position: toastPosition.BOTTOM,
      presentation: toastpresentation.LAYER,

       // positionBuilder:  (context, child) {
       //    return Stack(
       //      alignment: Alignment.center,
       //      children: [
       //        Positioned(child: child,
       //            top: 200,
       //            left: 300),
       //      ],
       //    );
       //  }
        );
  }
}
