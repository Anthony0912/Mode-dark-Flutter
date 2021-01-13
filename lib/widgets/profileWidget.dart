import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeSwitcher = ThemeSwitcher(
      builder: (context) {
        return AnimatedCrossFade(
          firstChild: GestureDetector(
            onTap: () =>
                ThemeSwitcher.of(context).changeTheme(theme: lightTheme),
            child: Icon(
              Icons.wb_sunny_outlined,
              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
            ),
          ),
          secondChild: GestureDetector(
            onTap: () =>
                ThemeSwitcher.of(context).changeTheme(theme: darkTheme),
            child: Icon(
              Icons.bedtime_outlined,
              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
            ),
          ),
          crossFadeState:
              ThemeProvider.of(context).brightness == Brightness.dark
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        );
      },
    );

    final header = Padding(
      padding: EdgeInsets.only(top: 45.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [themeSwitcher],
          )
        ],
      ),
    );

    final profile = Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 5.0,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: kSpacingUnit.w * 7,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Text(
                "Batman B.",
                style: TextStyle(
                  fontWeight: titleTextStyle.fontWeight,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    final infoProfile = Expanded(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nombre Completo",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "Batmat B.",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Correo electrónico",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "batmatbatimovil.cr0912@gmail.com",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "País",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "Costa Rica",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Provincia",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "Alajuela",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Telefono",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "+506 88001155",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fecha de nacimiento",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.0,
                        )
                      ],
                    ),
                    subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        "12 de octub. del 1968",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return Column(
      children: [header, profile, infoProfile],
    );
  }
}
