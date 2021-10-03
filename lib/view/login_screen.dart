import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  String mail = "";
  String password = "";
  String errorMsg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020228),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 112.0),
                // メールアドレス入力
                Padding(
                    padding: EdgeInsets.fromLTRB(32.0, 0, 32.0, 0),
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: "mail",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                        )
                      ),
                      onChanged: (String value) {
                        mail = value;
                      },
                    )
                ),
                SizedBox(height: 64.0),
                // パスワード入力
                Padding(
                  padding: EdgeInsets.fromLTRB(32.0, 0, 32.0, 0.0),
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      )
                    ),
                    obscureText: true,  // パスワードが見えないようRにする
                    maxLength: 20,  // 入力可能な文字数
                    onChanged: (String value) {
                      password = value;
                    },
                  ),
                ),
                SizedBox(height: 64),
                Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "→",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 32),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}