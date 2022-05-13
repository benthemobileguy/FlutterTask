import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/assets-manager.dart';
import 'package:flutter_task/presentation/resources/values-manager.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: AppMargin.m12),
        child: Column(
          children: [
            Row(
              children: [
                new IconButton(
                  icon: Icon(Icons.arrow_back,),
                  onPressed: () {
                  Navigator.pop(context);
                  },),
                Spacer(),
                Image.asset(ImageAssets.splashLogo, width: 120, height: 24,),
                Spacer(),
                SizedBox(
                  width: AppPadding.p20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
