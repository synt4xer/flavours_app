import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flavours/main_bloc/bloc.dart';
import 'package:flavours/screens/splashscreen/splash_screen.dart';
import 'package:flavours/screens/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MainBloc mainBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainBloc = MainBloc();
    mainBloc.dispatch(AuthenticationCheckEvent());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: mainBloc,
      child: MaterialApp(
        home: BlocBuilder(bloc: mainBloc, builder: (BuildContext context, state) {
          if (state is InitialMainState) {
            return SplashScreen();
          } else if (state is AuthenticateState) {
            return Container();
          } else {
            return LoginScreen();
          }
        }),
      ),
    );
  }
}
