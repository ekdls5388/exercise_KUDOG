import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSwitched = false; // 스위치 상태를 관리할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCE4040),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/minilogo.png', width: 58, height: 22.23,),
            Text('마이페이지',
              style: TextStyle(
                fontFamily: "Noto Sans KR",
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.white,
            ),),
            Image.asset('assets/bell.png', width: 16, height: 21.89,),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 158/788),
          child: Container(),
        ),
      ),
      body: Stack(
        children: [
          CustomSwitch(
            value: _isSwitched,
            onChanged: (value) {
              setState(() {
                _isSwitched = value;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/subscribe_gray.png'),
            Image.asset('assets/hot_gray.png'),
            Image.asset('assets/home_gray.png'),
            Image.asset('assets/bookmark_gray.png'),
            Image.asset('assets/mypage_red.png'),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({required this.value, required this.onChanged});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 60, // 스위치의 가로 크기 조절
        height: 30, // 스위치의 세로 크기 조절
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), // 버튼의 모양을 원하는 대로 조절
          color: widget.value ? Color(0xFFCE4040) : Color(0xFFA4A4A4), // 활성 및 비활성 상태에 따른 색상 설정
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: widget.value ? 30.0 : 0.0, // 버튼의 위치를 움직이는 애니메이션
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // 원 모양 버튼
                  color: Colors.white, // 버튼의 색상
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
