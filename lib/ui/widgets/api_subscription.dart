import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/fetch_process.dart';
import 'package:flutter_uikit/ui/widgets/common_dialogs.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

apiSubscription(Stream<FetchProcess> apiResult, BuildContext context) {
  apiResult.listen((FetchProcess p) {
    if (p.loading) {
      showProgress(context);
    } else {
      hideProgress(context);
      if (p.response.success == false) {
        fetchApiResult(context, p.response);
      } else {
        switch (p.type) {
          case ApiType.performLogin:
            showSuccess(context, UIData.success, FontAwesomeIcons.check);
            break;
          case ApiType.getProductInfo:
            break;
          case ApiType.performOTP:
            break;
        }
      }
    }
  });
}

// void afterLogin(FetchProcess p, BuildContext context) {
//   NetworkServiceResponse<OTPResponse> res = p.response;
//   ISRData.prefs.setString(ISRData.pref_auth_token, res.content.data.authToken);
//   ISRData.prefs.setString(ISRData.pref_user_id, res.content.data.userId);
//   ISRData.prefs.setBool(ISRData.pref_logged_in, true);
//   Navigator.of(context).pushReplacementNamed(ISRData.homeRoute);
// }
