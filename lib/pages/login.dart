import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(), // LoginPage는 앱의 첫 화면입니다. 원하는 페이지로 대체 가능합니다.
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경
          Container(
            width: 405,
            height: 720,
            color: Colors.white,
          ),
          // 빨간색 바
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 158,
            child: Card(
              elevation: 4,
              margin: EdgeInsets.zero,
              color: Color(0xFFCE4040),
            ),
          ),
          // 흰색 바
          Positioned(
            top: 79,
            left: 0,
            right: 0,
            height: 641,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.zero,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
            ),
          ),
          Positioned(
            top: 159,
            left: 49.13,
            child: Text(
              "로그인",
              style: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 183,
            left: 146,
            child: Container(
              width: 116,
              height: 17,
              child: Text(
                "공지사항 쿠독 시작하기",
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF7E7E7E),
                  decoration: TextDecoration.underline, // 텍스트 주위에 선 추가
                  decorationColor: Color(0xFFD9D9D9), // 텍스트 테두리 색상
                  decorationThickness: 0.2, // 텍스트 테두리 두께
                ),
              ),
            ),
          ),
          // 로그인 컨테이너
          Positioned(
            top: 238,
            left: 24,
            child : SizedBox(
              width: 357,
              height: 47,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(208),
                  border: Border.all(color: Color(0xFFCDCDCD), width: 2),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 62,
                      child: Image.asset('assets/login_email.png'),
                    ),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "example@korea.ac.kr",
                        hintStyle: TextStyle(
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFA4A4A4),
                        ),
                      ),
                    ),
                    )
                  ], // children
                ),
              ),
            ),
          ),
      Positioned(
        top: 295,
        left: 24,
        child : SizedBox(
          width: 357,
          height: 47,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(208),
              border: Border.all(color: Color(0xFFCDCDCD), width: 2),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 62,
                  child: Image.asset('assets/login_password.png'),
                ),
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "비밀번호",
                    hintStyle: TextStyle(
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFFA4A4A4),
                    ),
                  ),
                ),
                )
              ], // children
            ),
          ),
        ),
      ),

          // 로그인 버튼
          Positioned(
            top: 382,
            left: 25,
            width : 357,
            height: 47,
            child: Container(
              width: 39,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFCE4040),
                borderRadius: BorderRadius.circular(58),
              ),
              child: Text(
                "로그인",
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // 또는 텍스트
          Positioned(
            top: 438,
            left: 190,
            child: Text(
              "또는",
              style: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFFD33434),
              ),
            ),
          ),
          // 회원가입 버튼
          Positioned(
            top: 466,
            left: 25,
            width : 357,
            height: 47,
            child: Container(
              width: 39,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(58),
                border: Border.all(color: Color(0xFFCE4040), width: 2),
              ),
              child: Text(
                "회원가입",
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFFCE4040),
                ),
              ),
            ),
          ),
          // 비밀번호 찾기
          Positioned(
            top: 522,
            left: 165,
            child: Text(
              "비밀번호 찾기",
              style: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Color(0xFFD33434),
              ),
            ),
          ),
          // 로고 또는 아이콘
          Positioned(
            top: 31,
            left: 26,
            width: 60,
            height: 23,
            child: Image.asset('assets/minilogo.png'), // 이미지 리소스 경로 설정
          ),
          // 로그인 텍스트

        ],
      ),
    );
  }
}
