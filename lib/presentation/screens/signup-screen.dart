import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/assets-manager.dart';
import 'package:flutter_task/presentation/resources/values-manager.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
