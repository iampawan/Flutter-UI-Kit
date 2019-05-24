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

showSuccess(BuildContext context, String message, IconData icon) {
  showDialog(
      context: context,
      builder: (context) => Center(
            child: Material(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.black,
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      message,
                      style: TextStyle(
                          fontFamily: UIData.ralewayFont, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ));
}

showProgress(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.yellow,
            ),
          ));
}

hideProgress(BuildContext context) {
  Navigator.pop(context);
}
