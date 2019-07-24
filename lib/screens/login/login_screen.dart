import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flavours/screens/login/bloc/bloc.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc loginBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: loginBloc,
      child: Scaffold(
        appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
        backgroundColor: Colors.orange[200],
        body: Container(
          child: BlocBuilder(
              bloc: loginBloc,
              builder: (context, state) {
                if (state is InitialLoginState) {
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            "images/logo.png",
                            height: 30,
                          ),
                          margin: EdgeInsets.only(top: 100),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.black54,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15)),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 50),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.black54,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15),
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    color: Colors.white)),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 50),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Expanded(child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),),
                            SizedBox(width: 50,),
                            Expanded(child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),)
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 50),),
                        SizedBox(height: 25,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: GestureDetector(
                            child: Text("Forgot Password?"),
                          ),
                        )
                      ],
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
