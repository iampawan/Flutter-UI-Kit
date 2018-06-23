import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/inherited/login_provider.dart';
import 'package:flutter_uikit/logic/bloc/login_bloc.dart';
import 'package:flutter_uikit/logic/viewmodel/user_login_view_model.dart';
import 'package:flutter_uikit/model/fetch_process.dart';
import 'package:flutter_uikit/ui/page/login/login_page.dart';
import 'package:flutter_uikit/ui/widgets/api_subscription.dart';
import 'package:flutter_uikit/ui/widgets/gradient_button.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => new _LoginCardState();
}

class _LoginCardState extends State<LoginCard>
    with SingleTickerProviderStateMixin {
  var deviceSize;
  AnimationController controller;
  Animation<double> animation;
  LoginBloc loginBloc;
  String phoneNumber, otp;
  StreamSubscription<FetchProcess> apiStreamSubscription;

  Widget loginBuilder() => StreamBuilder<bool>(
        stream: loginBloc.otpResult,
        initialData: false,
        builder: (context, snapshot) => Form(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                      onChanged: (phone) => phoneNumber = phone,
                      enabled: !snapshot.data,
                      style: new TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: new InputDecoration(
                          hintText: UIData.enter_code_hint,
                          labelText: UIData.enter_code_label),
                    ),
                    new SizedBox(
                      height: 10.0,
                    ),
                    snapshot.data == false
                        ? new Offstage()
                        : new TextField(
                            onChanged: (myotp) => otp = myotp,
                            keyboardType: TextInputType.number,
                            style: new TextStyle(
                                fontSize: 15.0, color: Colors.black),
                            decoration: new InputDecoration(
                                hintText: UIData.enter_otp_hint,
                                labelText: UIData.enter_otp_label),
                            obscureText: true,
                          ),
                    new SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      child: snapshot.data == false
                          ? new GradientButton(
                              onPressed: () => phoneNumber?.length == 10
                                  ? loginBloc.otpSink.add(UserLoginViewModel(
                                      phonenumber: phoneNumber))
                                  : showPhoneError(context),
                              text: UIData.get_otp)
                          : new GradientButton(
                              onPressed: () {
                                otp?.length == 4
                                    ? loginBloc.loginSink.add(
                                        new UserLoginViewModel.withOTP(
                                            phonenumber: phoneNumber, otp: otp))
                                    : showOTPError(context);
                              },
                              text: UIData.login),
                    ),
                    snapshot.data == true
                        ? new FlatButton(
                            child: Text(UIData.resend_otp),
                            onPressed: () => loginBloc.resendOtpSink.add(true),
                          )
                        : new Container()
                  ],
                ),
              ),
            ),
      );

  Widget loginCard() {
    return Opacity(
      opacity: animation.value,
      child: SizedBox(
        height: deviceSize.height / 2 - 20,
        width: deviceSize.width * 0.85,
        child: new Card(
            color: Colors.white, elevation: 2.0, child: loginBuilder()),
      ),
    );
  }

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    loginBloc = new LoginBloc();
    apiStreamSubscription = apiSubscription(loginBloc.apiResult, context);
    controller = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1500));
    animation = new Tween(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    animation.addListener(() => this.setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    controller?.dispose();
    loginBloc?.dispose();
    apiStreamSubscription?.cancel();
    super.dispose();
  }

  showPhoneError(BuildContext context) {
    LoginProvider
        .of(context)
        .validationErrorCallback(LoginValidationType.phone);
  }

  showOTPError(BuildContext context) {
    LoginProvider.of(context).validationErrorCallback(LoginValidationType.otp);
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return loginCard();
  }
}
