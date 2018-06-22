import 'package:flutter/material.dart';
import 'package:flutter_uikit/services/network_service_response.dart';
import 'package:flutter_uikit/utils/uidata.dart';


fetchApiResult(BuildContext context, NetworkServiceResponse snapshot) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
          title: Text(UIData.error),
          content: Text(snapshot.message),
          actions: <Widget>[
            FlatButton(
              child: Text(UIData.ok),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
  );
}

showProgress(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
            child: CircularProgressIndicator(),
          ));
}

hideProgress(BuildContext context) {
  Navigator.pop(context);
}
