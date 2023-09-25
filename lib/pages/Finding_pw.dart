import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(), // LoginPage는 앱의 첫 화면입니다.
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 405,
            height: 720,
            color: Colors.white,
          ),
          Positioned(
            width: 14,
            height: 22.38,
            top: 59.69,
            left: 32,
            child: Image.asset('assets/left_sign.png'),
          ),
          Positioned(
              width: 184,
              height: 46,
              top: 51,
              left: 77,
                child: Text("비밀번호 찾기",
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Colors.black,
              ),
              ),
          ),
          Positioned(
            width: 42,
            height: 22,
            top: 123,
            left: 49,
              child: Text("이메일",
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xFF7E7E7E),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFD9D9D9),
                  decorationThickness: 0.2,
                ),
              ),
          ),
          Positioned(
            top: 150,
            left: 24,
            child: SizedBox(
              width: 238,
              height: 47,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(24, 12, 22, 12), // 질문
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(208),
                  border: Border.all(color: Color(0xFFCDCDCD), width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Image.asset('assets/i.png',width: 14, height: 14,)
                    ),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "학교 이메일로 입력해 주세요",
                        hintStyle: TextStyle(
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xFFA4A4A4),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 270,
            child: SizedBox(
              width: 111,
              height: 47,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(58),
                  border: Border.all(color: Color(0xFFCE4040), width: 2),
                ),
                child: Text(
                  "인증번호 받기",
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xFFCE4040),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 205,
            left: 54,
            child: Image.asset('assets/red_i.png', width: 12, height: 12,)
          ),
          Positioned(
              top: 202,
              left: 74,
              child: Text(
                '학교 이메일로 입력해 주세요.',
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xFFCE4040),
                    decoration: TextDecoration.underline, // 텍스트 주위에 선 추가
                    decorationColor: Color(0xFFD9D9D9), // 선의 색상
                    decorationThickness: 0.2,
                  ),
              ),
              ),
          Positioned(
            top: 229,
            left: 24,
            child: SizedBox(
              width: 238,
              height: 47,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12), // 질문
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(208),
                  border: Border.all(color: Color(0xFFCDCDCD), width: 2),
                ),
                child: Row(
                  children: [
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                    ),
                    Text("02:47",
                      style: TextStyle(
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFFDB4A4A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 229,
            left: 270,
            child: SizedBox(
              width: 111,
              height: 47,
              child: Container(
                alignment: Alignment.center,
                //padding: EdgeInsets.all(12), // 질문
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(58),
                  border: Border.all(color: Color(0xFFCE4040), width: 2),
                ),
                child: Text(
                  "확인",
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xFFCE4040),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 284,
              left: 54,
              child: Image.asset('assets/red_i.png', width: 12, height: 12,)
          ),
          Positioned(
            top: 281,
            left: 74,
            child: Text(
              '잘못된 인증번호입니다.',
              style: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Color(0xFFCE4040),
                decoration: TextDecoration.underline, // 텍스트 주위에 선 추가
                decorationColor: Color(0xFFD9D9D9), // 선의 색상
                decorationThickness: 0.2,
              ),
            ),
          ),














        ],
      ),
    );
  }
}