import 'package:flutter/material.dart';

import 'tokens/app_colors.dart';
import 'tokens/app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.base.light,
    disabledColor: Color.lerp(
      AppColors.base.light,
      AppColors.base.light.withOpacity(.3),
      .5,
    ),
    colorScheme: ThemeData.light().colorScheme.copyWith(
          brightness: Brightness.light,
          primary: AppColors.primary.light,
          secondary: AppColors.secondary.light,
        ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(17),
      ),
    ),
    // tooltipTheme: TooltipThemeData(
    //   decoration: BoxDecoration(
    //     color: const Color.fromRGBO(100, 100, 100, .8),
    //     borderRadius: BorderRadius.circular(3),
    //   ),
    //   textStyle: const TextStyle(
    //     color: Colors.white,
    //     fontSize: 14,
    //   ),
    //   verticalOffset: 50,
    // ),
    // appBarTheme: AppBarTheme(
    //   foregroundColor: Colors.black,
    //   backgroundColor: Colors.grey.shade50,
    //   elevation: 0,
    // ),
    // drawerTheme: const DrawerThemeData(
    //   backgroundColor: Color.fromRGBO(240, 240, 240, 1),
    //   elevation: 1.5,
    // ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   foregroundColor: Colors.white,
    //   backgroundColor: Colors.grey.shade50,
    //   elevation: 5,
    // ),
    // bottomAppBarTheme: const BottomAppBarTheme(
    //   color: Colors.white,
    //   elevation: 10,
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: Colors.white,
    //   selectedItemColor: Colors.indigo,
    //   unselectedItemColor: Colors.grey.withOpacity(0.9),
    //   selectedIconTheme: const IconThemeData(size: 28),
    //   showUnselectedLabels: false,
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.symmetric(
    //     horizontal: 16,
    //     vertical: 16,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: const BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       color: Colors.grey.shade900,
    //     ),
    //   ),
    //   focusedBorder: const OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       width: 1.8,
    //       color: Colors.indigo,
    //     ),
    //   ),
    //   disabledBorder: OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: const BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       color: Colors.grey.shade500,
    //     ),
    //   ),
    //   labelStyle: const TextStyle(
    //     color: Colors.black,
    //   ),
    //   floatingLabelStyle: const TextStyle(
    //     color: Colors.black,
    //   ),
    //   errorStyle: const TextStyle(
    //     fontSize: 12,
    //     letterSpacing: 1.1,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     padding: MaterialStateProperty.resolveWith((state) {
    //       return const EdgeInsets.symmetric(
    //         horizontal: 18,
    //         vertical: 12,
    //       );
    //     }),
    //   ),
    // ),
    // dividerTheme: DividerThemeData(
    //   indent: 15,
    //   endIndent: 15,
    //   thickness: 2,
    //   color: Colors.indigo.shade700,
    // ),
    // listTileTheme: const ListTileThemeData(
    //   dense: true,
    //   horizontalTitleGap: 0,
    //   iconColor: Colors.grey,
    //   textColor: Colors.black,
    //   tileColor: Colors.white,
    // ),
    // iconTheme: IconThemeData(
    //   color: Colors.grey.shade900,
    // ),
    // snackBarTheme: SnackBarThemeData(
    //   contentTextStyle: TextStyle(
    //     color: Colors.grey.shade50,
    //   ),
    // ),
    // bottomSheetTheme: const BottomSheetThemeData(
    //   backgroundColor: Colors.transparent,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 3,
    //   clipBehavior: Clip.antiAlias,
    //   color: Colors.white,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    // ),
    // sliderTheme: SliderThemeData(
    //   thumbColor: Colors.blue,
    //   thumbShape: const RoundSliderThumbShape(
    //     enabledThumbRadius: 5,
    //     pressedElevation: 0,
    //   ),
    //   overlayShape: const RoundSliderOverlayShape(
    //     overlayRadius: 12,
    //   ),
    //   activeTrackColor: Colors.blue,
    //   inactiveTrackColor: Colors.grey.shade200,
    //   overlayColor: Colors.black.withOpacity(.1),
    //   trackHeight: 1,
    // ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    disabledColor: Color.lerp(
      AppColors.base.dark,
      AppColors.base.dark.withOpacity(.3),
      .5,
    ),
    scaffoldBackgroundColor: AppColors.base.dark,
    colorScheme: ThemeData.dark().colorScheme.copyWith(
          brightness: Brightness.dark,
          primary: AppColors.primary.dark,
          secondary: AppColors.secondary.dark,
        ),
    // splashColor: const Color.fromRGBO(100, 100, 100, .1),
    // splashFactory: InkRipple.splashFactory,
    // highlightColor: Colors.transparent,
    // tooltipTheme: TooltipThemeData(
    //   decoration: BoxDecoration(
    //     color: const Color.fromRGBO(100, 100, 100, .5),
    //     borderRadius: BorderRadius.circular(3),
    //   ),
    //   textStyle: TextStyle(
    //     color: Colors.grey.shade100,
    //     fontSize: 14,
    //   ),
    //   verticalOffset: 50,
    // ),
    // appBarTheme: AppBarTheme(
    //   foregroundColor: Colors.grey.shade100,
    //   backgroundColor: Colors.black,
    //   elevation: 0,
    // ),
    // drawerTheme: const DrawerThemeData(
    //   backgroundColor: Color.fromRGBO(50, 50, 50, 1),
    //   elevation: 1.5,
    // ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Colors.grey.shade50,
    //   foregroundColor: const Color.fromARGB(255, 57, 61, 72),
    //   elevation: 5,
    // ),
    // bottomAppBarTheme: const BottomAppBarTheme(
    //   color: Colors.black,
    //   elevation: 10,
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: const Color.fromRGBO(15, 23, 42, 1),
    //   selectedItemColor: Colors.blue,
    //   unselectedItemColor: Colors.grey.withOpacity(0.9),
    //   selectedLabelStyle: const TextStyle(
    //     fontSize: 15,
    //   ),
    //   showUnselectedLabels: true,
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.symmetric(
    //     horizontal: 16,
    //     vertical: 16,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: const BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       color: Colors.grey.shade100,
    //     ),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: const BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       width: 1.8,
    //       color: Colors.indigo.shade600,
    //     ),
    //   ),
    //   disabledBorder: OutlineInputBorder(
    //     gapPadding: 5,
    //     borderRadius: const BorderRadius.all(Radius.circular(12)),
    //     borderSide: BorderSide(
    //       color: Colors.grey.shade500,
    //     ),
    //   ),
    //   labelStyle: TextStyle(
    //     color: Colors.grey.shade100,
    //   ),
    //   floatingLabelStyle: TextStyle(
    //     color: Colors.grey.shade100,
    //   ),
    //   errorStyle: const TextStyle(
    //     fontSize: 12,
    //     letterSpacing: 1.1,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     padding: MaterialStateProperty.resolveWith((state) {
    //       return const EdgeInsets.symmetric(
    //         horizontal: 18,
    //         vertical: 12,
    //       );
    //     }),
    //   ),
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     foregroundColor: MaterialStateColor.resolveWith((states) {
    //       return Colors.grey.shade50;
    //     }),
    //   ),
    // ),
    // dividerTheme: const DividerThemeData(
    //   thickness: 2,
    //   indent: 15,
    //   endIndent: 15,
    //   color: Color.fromRGBO(200, 200, 200, 1),
    // ),
    // listTileTheme: const ListTileThemeData(
    //   dense: true,
    //   horizontalTitleGap: 0,
    //   iconColor: Colors.grey,
    //   textColor: Color.fromARGB(195, 253, 255, 255),
    //   tileColor: Colors.black,
    // ),
    // iconTheme: const IconThemeData(
    //   color: Colors.white,
    // ),
    // snackBarTheme: SnackBarThemeData(
    //   contentTextStyle: TextStyle(
    //     color: Colors.grey.shade100,
    //   ),
    // ),
    // bottomSheetTheme: const BottomSheetThemeData(
    //   backgroundColor: Colors.transparent,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 3,
    //   clipBehavior: Clip.antiAlias,
    //   color: Colors.black,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    // ),
    // sliderTheme: SliderThemeData(
    //   thumbColor: Colors.blue,
    //   activeTrackColor: Colors.blue,
    //   inactiveTrackColor: Colors.grey.shade900,
    //   overlayColor: Colors.grey.withOpacity(.1),
    //   trackHeight: 1,
    // ),
  );
}
