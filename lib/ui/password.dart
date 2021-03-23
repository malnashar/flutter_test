import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_test/ui/home.dart';
class Pass extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<Pass> {
  @override
  Widget build(BuildContext context) {


    /*final email = TextFormField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(

        hintText: 'ادخل رقم الهاتف',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );*/

    final password = TextFormField(
      textAlign: TextAlign.right,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'ادخل الرقم السري',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()));
        },
        padding: EdgeInsets.all(5),
        color: Colors.orangeAccent,
        child: Text('تسجيل الدخول', style: TextStyle(color: Colors.white,fontSize: 20.0),),
      ),
    );

    final forget = FlatButton(
      child: Text(

        'هل نسيت الرقم السري؟',
        style: TextStyle(color: Colors.lightBlueAccent,),
        textAlign: TextAlign.right,
      ),
      onPressed: () {},
    );

    final check = FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '  شترك الان  ',
              style: TextStyle(color: Colors.lightBlueAccent,),
              textAlign: TextAlign.right,
            ),
            Text(
              'ليس لديك بريد الكتروني؟ ',
              style: TextStyle(color: Colors.black,),
              //textAlign: TextAlign.right,
            ),
          ],
        )
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child: ListView(



          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            new Text("Trendo",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight:FontWeight.bold

              ),
              textAlign: TextAlign.center,
            ),
            new Text("تسجيل الدخول",
              style: new TextStyle(
                color: Colors.blue,
                fontSize: 25.0,
                //fontWeight:FontWeight.bold

              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48.0),
            Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0,top: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.lightBlue,
                      thickness: 0.4,
                    ),
                  ),
                  Divider(),
                  Text("  الرقم السري  ",
                      style: new TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.lightBlue,
                      thickness: 0.4,
                    ),
                  ),
                ],
              ),
            ),
            //email,
            //SizedBox(height: 8.0),
            password,
            SizedBox(height: 18.0),
            loginButton,
            forget,
            //SizedBox(height: 150.0),
            check
          ],
        ),
      ),
    );
  }
}