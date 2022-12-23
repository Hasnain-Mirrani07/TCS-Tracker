// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';
import '../../utils/colors.dart';

class CstmTextFieldTemplate extends StatelessWidget {
  final String hintText;
  final fontColor;
  final String labelText;
  final bool hideText;
  final bool isPassword;
  final String ObscuringCharacter;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool isBorder;
  final void Function()? onTap;
  final void Function(String)? onChanged;

  const CstmTextFieldTemplate({
    Key? key,
    this.isBorder = true,
    this.hintText = '',
    this.labelText = '',
    this.fontColor = lightGreyColor,
    this.onChanged,
    this.ObscuringCharacter = '*',
    this.hideText = false,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.onTap,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onChanged: onChanged,
      obscuringCharacter: ObscuringCharacter,
      obscureText: hideText,
      keyboardType: TextInputType.number,
      style: GoogleFonts.yantramanav(
        color: blackColor,
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
      ),
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: GoogleFonts.yantramanav(
            fontSize: 15.sp, fontWeight: FontWeight.w500, color: fontColor),
        hintStyle: GoogleFonts.yantramanav(
            fontSize: 15.sp, fontWeight: FontWeight.w500, color: blackColor),
        // suffixIcon: GestureDetector(
        //   onTap: onTap,
        //   child: Icon(
        //     // Based on passwordVisible state choose the icon
        //     isPassword ? Icons.visibility_off : Icons.visibility,
        //     color: Theme.of(context).primaryColorDark,
        //   ),
        // ),
        border: outlineInputBorder,
        focusedBorder: isBorder ? outlineInputBorder : underlineInputBorder,
        enabledBorder: isBorder ? outlineInputBorder : underlineInputBorder,
      ),
    );
  }
}
