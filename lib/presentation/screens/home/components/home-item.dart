import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/components/custom-divider.dart';
import 'package:flutter_task/presentation/resources/assets-manager.dart';
import 'package:flutter_task/presentation/resources/color-manager.dart';
import 'package:flutter_task/presentation/resources/strings-manager.dart';
import 'package:flutter_task/presentation/resources/styles-manager.dart';
class HomeItem extends StatelessWidget {
  const HomeItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(ImageAssets.avatar, width: 40, height: 40,),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("robertfox", style: getRegularStyle(),),
                  Text("3 hours ago", style: getRegularStyle(color: ColorManager.grey2),),
                ],
              ),
              Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {

                  },
                  child: Image.asset(ImageAssets.dots,height: 24, width: 24,)),


            ],
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: CustomDivider()),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(AppStrings.sampleText, style: getRegularStyle(
              lineHeight: 1.6,
              color: ColorManager.textGrey),),
        ),
        Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(ImageAssets.image,)
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(ImageAssets.favourite,
                width: 18.5,
                height: 18.5,
                color: ColorManager.textColor,),
              SizedBox(
                width: 5,
              ),
              Text("2.5k", style: getRegularStyle(),),
              SizedBox(width: 20,),
              Image.asset(ImageAssets.favourite,
                width: 18.5,
                height: 18.5,
                color: ColorManager.textColor,),
              SizedBox(
                width: 5,
              ),
              Text("250", style: getRegularStyle(),),
            ],
          ),
        )
      ],
    );
  }
}