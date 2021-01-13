import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/widgets/profileWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 414, height: 896, allowFontScaling: true);

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: ProfileWidget(),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 30.0,
                  ),
                  label: 'Perfil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book,
                    size: 30.0,
                  ),
                  label: 'Cursos',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                    size: 30.0,
                  ),
                  label: 'Universidad',
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.amber[800],
            ),
          );
        },
      ),
    );
  }
}
