import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  /// Poppins Regular
  static TextStyle regular({
    required double fontSize ,
    required Color color 
  }) {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Poppins Medium
  static TextStyle medium({
    required double fontSize ,
    required Color color 
  }) {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Poppins Black
  static TextStyle black({
    required double fontSize ,
    required Color color 
  }) {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.w900,
      fontSize: fontSize,
      color: color,
    );
  }
}
