import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/login/login_one/login_card.dart';

class LoginWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            LoginCard(),
            // new Padding(
            //   padding: const EdgeInsets.only(top: 30.0),
            //   child: new Text(
            //     ISRData.forgot_password,
            //     style: new TextStyle(fontWeight: FontWeight.normal),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
