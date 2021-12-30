import 'package:flutter/cupertino.dart';
import 'package:tuskmaster/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.all(4.0),
          middle: Image.asset("lib/assets/sonoro_logo2.png"),
        ),
        child: SafeArea(
            child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 32.0),
                  child: Text(
                    "Crear Cuenta",
                    style: textH3Blue,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Nombre",
                    style: textH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.text,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/User.png")),
                    // placeholder: "Usuario",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        )));
  }
}
