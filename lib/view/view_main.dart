import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ShaderMask(
                    blendMode: BlendMode.dstIn,
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.transparent],
                        stops: [0.6, 0.80], // 여기를 조정하여 투명도를 조절할 수 있습니다.
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      'assets/ai-generated-8364029_1280.jpg',
                      height: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: MediaQuery.of(context).size.width - 370,
                  child: Column(
                    children: [
                      Text(
                        '스타벅스 케이크와 함께',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '2023년을 마무리 해요',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 220,
                  left: MediaQuery.of(context).size.width - 100,
                  child: Row(
                    children: [
                      Text(
                        '내용보기',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            'until Green Level',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 230,
                        height: 10,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.black),
                          value: 0.8,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    '/',
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  Text(
                    '5',
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 33,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                    size: 33,
                  ),
                  Text(
                    '''What's New''',
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                  Icon(
                    Icons.local_activity,
                    color: Colors.grey,
                    size: 33,
                  ),
                  Text(
                    '''Coupon''',
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                    size: 33,
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/background-8277133_1280.jpg',
                        fit: BoxFit.fitWidth,
                        width: 500,
                      )),
                  Positioned(
                      top: 30,
                      left: MediaQuery.of(context).size.width - 400,
                      child: Text(
                        '2023 WINTER e-Frequency',
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      )),
                  Positioned(
                      top: 60,
                      left: MediaQuery.of(context).size.width - 400,
                      child: Text(
                        '[행사기간] 11/2(Thu)~ 12/31(Sun)',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                  Positioned(
                    top: 120,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.coffee,
                            color: Colors.grey,
                            size: 33,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Icon(
                            Icons.local_cafe,
                            color: Colors.grey,
                            size: 33,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Text(
                      '증정품은 한정 수량 제작되어 ,매당별 예약 가능 일자 및',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Text(
                      '제고가 상이할 수 있으며 조기 소진될 수 있습니다',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/background-8277133_1280.jpg',
                        fit: BoxFit.fitWidth,
                        width: 500,
                      )),
                  Positioned(
                      top: 30,
                      left: MediaQuery.of(context).size.width - 400,
                      child: Text(
                        '2023 WINTER e-Frequency',
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      )),
                  Positioned(
                      top: 60,
                      left: MediaQuery.of(context).size.width - 400,
                      child: Text(
                        '[행사기간] 11/2(Thu)~ 12/31(Sun)',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                  Positioned(
                    top: 120,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.coffee,
                            color: Colors.grey,
                            size: 33,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Icon(
                            Icons.local_cafe,
                            color: Colors.grey,
                            size: 33,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Text(
                      '증정품은 한정 수량 제작되어 ,매당별 예약 가능 일자 및',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: MediaQuery.of(context).size.width - 400,
                    child: Text(
                      '제고가 상이할 수 있으며 조기 소진될 수 있습니다',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        child: FloatingActionButton(
          onPressed: () {
            // 버튼을 눌렀을 때 수행할 작업을 여기에 추가하세요.
          },
          child: Row(
            children: [
            Icon(
            Icons.motorcycle,
            color: Colors.white,
            size: 23,
          ),
              Text('Delivers',style: TextStyle(fontSize: 20, color: Colors.white),)
            ],
          ),
          backgroundColor: Colors.green,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 0,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '알림',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: '내 계정',
          ),
        ],
        selectedIconTheme: IconThemeData(color: Colors.green), // 선택된 아이콘 스타일
        unselectedIconTheme: IconThemeData(color: Colors.grey), // 선택되지 않은 아이콘 스타일
      ),
    );
  }
}
