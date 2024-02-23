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
  int _counter = 0;

  ///숫자 증가
  void _incrementCounter() {
    _counter = ToastView().addOne(_counter);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _topToast('top position', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFCAF17),
                    elevation: 0,
                  ),
                  child: const Text('top position',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _centerToast('center position', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFCAF17),
                    elevation: 0,
                  ),
                  child: const Text('center position',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _bottomToast('bottom position', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFCAF17),
                    elevation: 0,
                  ),
                  child: const Text('bottom position',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _customPositionToast('custom position', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFCAF17),
                    elevation: 0,
                  ),
                  child: const Text('custom position',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _topAnimationToast('top animation', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    elevation: 0,
                  ),
                  child: const Text('top animation',
                      style: TextStyle(color: Colors.white)),
                ),
              ),SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _fadeAnimationToast('fade animation', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    elevation: 0,
                  ),
                  child: const Text('fade animation',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                    _layerToast('$_counter', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 0,
                  ),
                  child: const Text('LAYER',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                    _normalToast('$_counter', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 0,
                  ),
                  child: const Text('NORMAL',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                     _incrementCounter();
                     _stackToast('$_counter', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 0,
                  ),
                  child: const Text('STACK',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                     _shortToast('short toast', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  child: const Text('short toast',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                     _longToast('long toast', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  child: const Text('long toast',
                      style: TextStyle(color: Colors.white)),
                ),
              ),

            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  ///toast 실행
  void _topToast(String msg, BuildContext context) {
    /// 객체 선언(인스턴스)
    final toastView = ToastView();

    ///toast 생성
    toastView.createToast(
        child: toast(msg),
        context: context,
        duration: const Duration(milliseconds: 400), //시간 설정
       //fadeDuration:  const Duration(milliseconds: 350), // 스르륵 사라짐
       //animation: toastAnimation.RIGHT,
        position: toastPosition.TOP,
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


  void _centerToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(milliseconds: 400), //시간 설정
      position: toastPosition.CENTER,
      presentation: toastpresentation.LAYER,
    );
  }
  void _bottomToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(milliseconds: 400), //시간 설정
      position: toastPosition.BOTTOM,
      presentation: toastpresentation.LAYER,
    );
  }
  void _customPositionToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(milliseconds: 400), //시간 설정
      //position: toastPosition.BOTTOM,
      presentation: toastpresentation.LAYER,
      positionBuilder:  (context, child) {
         return Stack(
           alignment: Alignment.center,
           children: [
             Positioned(child: child,
                 top: 200,
                 left: 50),
           ],
         );
       }
    );
  }
  void _topAnimationToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 3), //시간 설정
      animation: toastAnimation.TOP,
      position: toastPosition.BOTTOM,
      presentation: toastpresentation.LAYER,
    );
  }
  void _fadeAnimationToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 2), //시간 설정
      animation: toastAnimation.RIGHT,
      position: toastPosition.CENTER,
      fadeDuration: Duration(seconds: 1),
      presentation: toastpresentation.LAYER,
    );
  }
  void _layerToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 2), //시간 설정
      animation: toastAnimation.LEFT,
      position: toastPosition.BOTTOM,
      fadeDuration: Duration(seconds: 1),
      presentation: toastpresentation.LAYER,
    );
  }
  void _normalToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 2), //시간 설정
      animation: toastAnimation.LEFT,
      position: toastPosition.BOTTOM,
      fadeDuration: Duration(seconds: 1),
      presentation: toastpresentation.NORMAL,
    );
  }
  void _stackToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      presentation: toastpresentation.LIST,
    );
  }
  void _shortToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 2), //시간 설정
      animation: toastAnimation.LEFT,
      position: toastPosition.TOP,
      presentation: toastpresentation.LAYER,
    );
  }
  void _longToast(String msg, BuildContext context) {
    final toastView = ToastView();

    toastView.createToast(
      child: toast(msg),
      context: context,
      duration: const Duration(seconds: 5), //시간 설정
      animation: toastAnimation.RIGHT,
      position: toastPosition.BOTTOM,
      presentation: toastpresentation.LAYER,
    );
  }
}
///child 위젯 설정
Widget toast(String msg) {
  return Container(
    height: 50,
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(),
      // color: const Color(0xff67CC36),
      color: Colors.white,
    ),
    child: Center(
        child: Text(msg,
            style: const TextStyle(
                color: Colors.black54,
                decoration: TextDecoration.none,
                fontSize: 20),
            textAlign: TextAlign.center)),
  );
}