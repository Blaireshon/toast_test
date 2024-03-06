import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast_practice/toast_practice.dart';

import 'StickyHeadersText.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String svgString = '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30" width="30" height="30"
         preserveAspectRatio="xMidYMid meet"
         style="width: 100%; height: 100%; content-visibility: visible;">
        <defs>
            <clipPath id="__lottie_element_224">
                <rect width="30" height="30" x="0" y="0"></rect>
            </clipPath>
        </defs>
        <g clip-path="url(#__lottie_element_224)">
            <g transform="matrix(-1,0,0,-1,30,29.437999725341797)" opacity="1"
               style="display: block;">
                <g opacity="1" transform="matrix(1,0,0,1,15,13.824999809265137)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M13,5.263999938964844 C13,8.57800006866455 10.314000129699707,11.263999938964844 7,11.263999938964844 C7,11.263999938964844 -7,11.263999938964844 -7,11.263999938964844 C-10.314000129699707,11.263999938964844 -13,8.57800006866455 -13,5.263999938964844 C-13,5.263999938964844 -13,-1.9149999618530273 -13,-1.9149999618530273 C-13,-5.228000164031982 -10.314000129699707,-7.914999961853027 -7,-7.914999961853027 C-7,-7.914999961853027 -2.191999912261963,-7.914999961853027 -2.191999912261963,-7.914999961853027 C-1.6399999856948853,-7.914999961853027 -1.1920000314712524,-7.4679999351501465 -1.1920000314712524,-6.914999961853027 C-1.1920000314712524,-6.36299991607666 -1.6399999856948853,-5.914999961853027 -2.191999912261963,-5.914999961853027 C-2.191999912261963,-5.914999961853027 -7,-5.914999961853027 -7,-5.914999961853027 C-9.208999633789062,-5.914999961853027 -11,-4.124000072479248 -11,-1.9149999618530273 C-11,-1.9149999618530273 -11,5.263999938964844 -11,5.263999938964844 C-11,7.4730000495910645 -9.208999633789062,9.263999938964844 -7,9.263999938964844 C-7,9.263999938964844 7,9.263999938964844 7,9.263999938964844 C9.208999633789062,9.263999938964844 11,7.4730000495910645 11,5.263999938964844 C11,5.263999938964844 11,-1.9149999618530273 11,-1.9149999618530273 C11,-4.124000072479248 9.208999633789062,-5.914999961853027 7,-5.914999961853027 C7,-5.914999961853027 3.4600000381469727,-5.914999961853027 3.4600000381469727,-5.914999961853027 C2.313999891281128,-5.914999961853027 1.2680000066757202,-6.567999839782715 0.7649999856948853,-7.5980000495910645 C0.7649999856948853,-7.5980000495910645 -0.597000002861023,-10.38700008392334 -0.597000002861023,-10.38700008392334 C-0.597000002861023,-10.38700008392334 1.2000000476837158,-11.263999938964844 1.2000000476837158,-11.263999938964844 C1.2000000476837158,-11.263999938964844 2.562000036239624,-8.47700023651123 2.562000036239624,-8.47700023651123 C2.7300000190734863,-8.133000373840332 3.078000068664551,-7.914999961853027 3.4600000381469727,-7.914999961853027 C3.4600000381469727,-7.914999961853027 7,-7.914999961853027 7,-7.914999961853027 C10.314000129699707,-7.914999961853027 13,-5.228000164031982 13,-1.9149999618530273 C13,-1.9149999618530273 13,5.263999938964844 13,5.263999938964844z"></path>
                </g>
                <g opacity="0" transform="matrix(1,0,0,1,21,17.62700080871582)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M1,2 C1,2 -1,2 -1,2 C-1,2 -1,-5.25 -1,-5.25 C-1,-5.802000045776367 -0.5519999861717224,-6.25 0,-6.25 C0.5519999861717224,-6.25 1,-5.802000045776367 1,-5.25 C1,-5.25 1,2 1,2z"></path>
                </g>
                <g opacity="0" transform="matrix(1,0,0,1,9,16)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M1,2 C1,2 -1,2 -1,2 C-1,2 -1,-1 -1,-1 C-1,-1.5520000457763672 -0.5519999861717224,-2 0,-2 C0.5519999861717224,-2 1,-1.5520000457763672 1,-1 C1,-1 1,2 1,2z"></path>
                </g>
            </g>
            <g transform="matrix(1,0,0,1,0,0)" opacity="1" style="display: block;">
                <g opacity="1" transform="matrix(1,0,0,1,9.364999771118164,13.847999572753906)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M0.625,-2.3450000286102295 C1.2669999599456787,-2.3450000286102295 1.9210000038146973,-2.183000087738037 2.5889999866485596,-1.8480000495910645 C2.5889999866485596,-1.8480000495910645 3.365999937057495,-3.134999990463257 3.365999937057495,-3.134999990463257 C3.365999937057495,-3.134999990463257 3.181999921798706,-3.2119998931884766 3.181999921798706,-3.2119998931884766 C2.6440000534057617,-3.437999963760376 2.187000036239624,-3.5969998836517334 1.8170000314712524,-3.684999942779541 C1.4450000524520874,-3.7760000228881836 1.0529999732971191,-3.821000099182129 0.6449999809265137,-3.821000099182129 C-0.48899999260902405,-3.821000099182129 -1.4500000476837158,-3.4539999961853027 -2.2160000801086426,-2.7130000591278076 C-2.9830000400543213,-1.9709999561309814 -3.365999937057495,-1.0379999876022339 -3.365999937057495,0.06599999964237213 C-3.365999937057495,1.11899995803833 -2.994999885559082,2.0169999599456787 -2.256999969482422,2.740999937057495 C-2.256999969482422,2.740999937057495 -2.25600004196167,2.742000102996826 -2.25600004196167,2.742000102996826 C-1.5069999694824219,3.4690001010894775 -0.515999972820282,3.821000099182129 0.6840000152587891,3.821000099182129 C1.3589999675750732,3.821000099182129 2.0350000858306885,3.7060000896453857 2.7109999656677246,3.4800000190734863 C3.0880000591278076,3.3540000915527344 3.322999954223633,2.986999988555908 3.322999954223633,2.5889999866485596 C3.322999954223633,2.5889999866485596 3.322999954223633,-0.24300000071525574 3.322999954223633,-0.24300000071525574 C3.322999954223633,-0.24300000071525574 0.5960000157356262,-0.24300000071525574 0.5960000157356262,-0.24300000071525574 C0.5960000157356262,-0.24300000071525574 0.5960000157356262,1.2319999933242798 0.5960000157356262,1.2319999933242798 C0.5960000157356262,1.2319999933242798 1.9190000295639038,1.2319999933242798 1.9190000295639038,1.2319999933242798 C1.9190000295639038,1.2319999933242798 1.9190000295639038,2.1449999809265137 1.9190000295639038,2.1449999809265137 C1.4390000104904175,2.2950000762939453 1.0390000343322754,2.365000009536743 0.7139999866485596,2.365000009536743 C-0.029999999329447746,2.365000009536743 -0.6150000095367432,2.1389999389648438 -1.065999984741211,1.7050000429153442 C-1.5169999599456787,1.2719999551773071 -1.746999979019165,0.7149999737739563 -1.746999979019165,0.007000000216066837 C-1.746999979019165,-0.6600000262260437 -1.5199999809265137,-1.2109999656677246 -1.062999963760376,-1.6649999618530273 C-0.6060000061988831,-2.118000030517578 -0.05000000074505806,-2.3450000286102295 0.625,-2.3450000286102295z"></path>
                </g>
            </g>
            <g transform="matrix(1,0,0,1,0,0)" opacity="1" style="display: block;">
                <g opacity="1" transform="matrix(1,0,0,1,16.118999481201172,13.847999572753906)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M0.012000000104308128,-3.743000030517578 C0.012000000104308128,-3.743000030517578 -1.4670000076293945,-3.743000030517578 -1.4670000076293945,-3.743000030517578 C-2.0190000534057617,-3.743000030517578 -2.4670000076293945,-3.2950000762939453 -2.4670000076293945,-2.743000030517578 C-2.4670000076293945,-2.743000030517578 -2.4670000076293945,3.743000030517578 -2.4670000076293945,3.743000030517578 C-2.4670000076293945,3.743000030517578 -0.878000020980835,3.743000030517578 -0.878000020980835,3.743000030517578 C-0.878000020980835,3.743000030517578 -0.878000020980835,0.7599999904632568 -0.878000020980835,0.7599999904632568 C-0.878000020980835,0.7599999904632568 -0.4490000009536743,0.7599999904632568 -0.4490000009536743,0.7599999904632568 C0.21400000154972076,0.7599999904632568 0.7559999823570251,0.6909999847412109 1.156000018119812,0.5329999923706055 C1.156000018119812,0.5329999923706055 1.1579999923706055,0.531000018119812 1.1579999923706055,0.531000018119812 C1.562000036239624,0.367000013589859 1.8860000371932983,0.10300000011920929 2.119999885559082,-0.257999986410141 C2.3540000915527344,-0.6190000176429749 2.4670000076293945,-1.031000018119812 2.4670000076293945,-1.4839999675750732 C2.4670000076293945,-2.1530001163482666 2.244999885559082,-2.7139999866485596 1.7829999923706055,-3.132999897003174 C1.3250000476837158,-3.5490000247955322 0.7239999771118164,-3.743000030517578 0.012000000104308128,-3.743000030517578z M0.628000020980835,-0.9229999780654907 C0.48399999737739563,-0.7990000247955322 0.25600001215934753,-0.7149999737739563 -0.10000000149011612,-0.7149999737739563 C-0.10000000149011612,-0.7149999737739563 -0.878000020980835,-0.7149999737739563 -0.878000020980835,-0.7149999737739563 C-0.878000020980835,-0.7149999737739563 -0.878000020980835,-2.2660000324249268 -0.878000020980835,-2.2660000324249268 C-0.878000020980835,-2.2660000324249268 -0.1599999964237213,-2.2660000324249268 -0.1599999964237213,-2.2660000324249268 C0.24400000274181366,-2.2660000324249268 0.4909999966621399,-2.183000087738037 0.6330000162124634,-2.068000078201294 C0.7630000114440918,-1.9630000591278076 0.8500000238418579,-1.7949999570846558 0.8500000238418579,-1.5080000162124634 C0.8500000238418579,-1.2230000495910645 0.7649999856948853,-1.0440000295639038 0.628000020980835,-0.9229999780654907z"></path>
                </g>
            </g>
            <g transform="matrix(1,0,0,1,0,0)" opacity="1" style="display: block;">
                <g opacity="1" transform="matrix(1,0,0,1,21.42099952697754,13.847999572753906)">
                    <path fill="rgb(21,19,26)" fill-opacity="1"
                          d=" M-2.4210000038146973,-3.742000102996826 C-2.4210000038146973,-3.742000102996826 -2.4210000038146973,-2.2660000324249268 -2.4210000038146973,-2.2660000324249268 C-2.4210000038146973,-2.2660000324249268 -0.6800000071525574,-2.2660000324249268 -0.6800000071525574,-2.2660000324249268 C-0.6800000071525574,-2.2660000324249268 -0.6800000071525574,3.742000102996826 -0.6800000071525574,3.742000102996826 C-0.6800000071525574,3.742000102996826 0.9100000262260437,3.742000102996826 0.9100000262260437,3.742000102996826 C0.9100000262260437,3.742000102996826 0.9100000262260437,-2.2660000324249268 0.9100000262260437,-2.2660000324249268 C0.9100000262260437,-2.2660000324249268 2.4210000038146973,-2.2660000324249268 2.4210000038146973,-2.2660000324249268 C2.4210000038146973,-2.2660000324249268 2.4210000038146973,-3.742000102996826 2.4210000038146973,-3.742000102996826 C2.4210000038146973,-3.742000102996826 -2.4210000038146973,-3.742000102996826 -2.4210000038146973,-3.742000102996826z"></path>
                </g>
            </g>
        </g>
    </svg>
''';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  final String title;


   @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  late  List<List<String>> data= [];
  late List<String> titleColumn =[];
  late List<String> titleRow =[];

  @override
  void initState() {

      var datacnt = 1;
      for (int i = 0; i < 200; i++) {
        final List<String> row = [];
        for (int j = 0; j < 5; j++) {
          row.add(datacnt.toString());
          datacnt++;
        }
        data.add(row);
      }
        for (var i = 0; i < 200; i++) {
          titleRow.add('Row ' + (i + 1).toString());
        }
        for (var i = 0; i < 5; i++) {
          titleColumn.add('Column ' + (i + 1).toString());
        }

  }

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
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                     // print(data);
                    // print(titleColumn);
                    // print(titleRow);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  StickyHeadersText(data: data, titleColumn: titleColumn , titleRow: titleRow)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  child: const Text('StickyHeadersTable',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width:100,
                height: 100,
                child: SvgPicture.string(svgString,width: 100, height: 100),
              )

              // Transform.translate(
              //       offset: Offset(100,100),
              //       child: Container(
              //           width: 100,
              //           height:50,
              //           decoration: BoxDecoration(
              //             color: Colors.red,
              //             border: Border.all(color:Colors.red),
              //           ),
              //           child: ElevatedButton(
              //             onPressed: () {
              //               print('버튼 눌림');
              //             },
              //             child: Text(
              //               "hi",
              //               softWrap: false,
              //             ),
              //           ))),

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
        position: toastPosition.TOP,
      presentation: toastpresentation.LAYER,
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