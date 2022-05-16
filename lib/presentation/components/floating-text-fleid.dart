import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/presentation/resources/color-manager.dart';
import 'package:flutter_task/presentation/resources/font-manager.dart';
import 'package:flutter_task/presentation/resources/styles-manager.dart';
import 'package:hexcolor/hexcolor.dart' as hex;

class FloatingTextFormField extends StatelessWidget {
  final Function onChanged;
  final String prefixIcon;
  final String hintText;
  final int maxLength;
  final Color underlineColor;
  final Color borderColor;
  final  List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final FocusNode focus, nextFocus;
  final TextInputAction textInputAction;
  final Widget suffixIcon;
  final Color textColor;
  final TextCapitalization textCapitalization;
  final bool enableInteractiveSession;
  final bool obscureText, disabled;
  final String initialValue;
  final Function(String) validator;
  final TextEditingController controller;
  final VoidCallback onTap;

  FloatingTextFormField({
    this.onChanged,
    this.textColor,
    this.textCapitalization,
    this.enableInteractiveSession,
    this.underlineColor,
    this.maxLength,
    this.prefixIcon,
    this.inputFormatters,
    this.keyboardType,
    this.focus,
    this.nextFocus,
    this.disabled = false,
    this.textInputAction,
    this.validator,
    this.onTap,
    this.suffixIcon,
    this.initialValue,
    this.obscureText = false,
    this.controller,
    @required this.hintText,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0,
          right: 0),
      height: 56,
      child: TextFormField(
        enableInteractiveSelection: enableInteractiveSession
            !=null?enableInteractiveSession:true,
        cursorColor: ColorManager.textColor,
        controller: controller,
        onChanged: this.onChanged,
        inputFormatters: inputFormatters,
        onTap: onTap,
        textCapitalization: textCapitalization!=null?
        textCapitalization:TextCapitalization.none,
        initialValue: initialValue,
        textAlignVertical: TextAlignVertical.bottom,
        enabled: !disabled,
        validator: validator,
        style: TextStyle(
            fontSize: 16.0,
            fontFamily: FontConstants.fontFamilyNunito,
            fontWeight: FontWeight.w400,
            color: textColor!=null?
            textColor:
            Colors.black
        ),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          filled: true,
          fillColor:ColorManager.textFormFieldColor,
          contentPadding: EdgeInsets.all(18.0),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(34.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(4.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(4.0),
            ),
          ),
          hintText: this.hintText,
          prefixIcon: new Padding(
            padding: const EdgeInsets.only( top: 10, left: 5, right: 0, bottom: 10),
            child: new SizedBox(
              height: 4,
              child: Image.asset(prefixIcon),
            ),
          ),
          prefixStyle: getRegularStyle(),
          hintStyle: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            fontFamily: FontConstants.fontFamilyNunito,
            color: hex.HexColor("#6B6A6A"),
          ),
        ),
        focusNode: this.focus,
        obscureText: obscureText,
        textInputAction: this.textInputAction != null
            ? this.textInputAction
            : TextInputAction.done,
        onFieldSubmitted: (v) {
          if (this.nextFocus != null) {
            FocusScope.of(context).requestFocus(this.nextFocus);
          }
        },
        keyboardType:
        this.keyboardType != null ?
        this.keyboardType
            : TextInputType.text,
      ),
    );
  }
}
