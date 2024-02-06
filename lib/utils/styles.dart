import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';

abstract class AppStyles {

  static  TextStyle styleRegular16(context)
  {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsiveFontSize(context,baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: responsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: responsiveFontSize(context, baseFontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: responsiveFontSize(context, baseFontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: responsiveFontSize(context, baseFontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: responsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: responsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }



/*static  TextStyle styleRegular16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: responsiveFontSize(context,baseFontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static  TextStyle styleMedium16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: responsiveFontSize(context,baseFontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static  TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: responsiveFontSize(context,baseFontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static  TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: responsiveFontSize(context,baseFontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static  TextStyle styleRegular12 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: responsiveFontSize(context,baseFontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static  TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: responsiveFontSize(context,baseFontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static  TextStyle styleRegular14 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: responsiveFontSize(context,baseFontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: responsiveFontSize(context,baseFontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static  TextStyle styleBold16 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: responsiveFontSize(context,baseFontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static  TextStyle styleMedium20 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: responsiveFontSize(context,baseFontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );*/
}



double responsiveFontSize(context, {required baseFontSize}) {
  // 1-calculate scale factor
  double scaleFactor = getScaleFactor(context);

  // 2-calculate the responsive font size
  double responsiveFontSize = baseFontSize * scaleFactor;

  // 3- ensure the size at our range
  double maxFontSize = baseFontSize * 1.2;
  double miFontSize = baseFontSize * 0.7;
  return responsiveFontSize.clamp(miFontSize, maxFontSize);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 600;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 1400;
  }


  if (width > SizeConfig.desktopBreakPoint) {
    return width / 1400;
  } else if (width > SizeConfig.tabletBreakPoint) {
    return width / 1000;
  } else {
    return width / 600;
  }
}

