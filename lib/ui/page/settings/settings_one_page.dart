import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/common_switch.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class SettingsOnePage extends StatelessWidget {
  Widget bodyData() => SingleChildScrollView(
        child: Theme(
          data: ThemeData(fontFamily: UIData.ralewayFont),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //1
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "General Setting",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      title: Text("Account"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                      title: Text("Gmail"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.sync,
                        color: Colors.blue,
                      ),
                      title: Text("Sync Data"),
                      trailing: Icon(Icons.arrow_right),
                    )
                  ],
                ),
              ),

              //2
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Network",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.sim_card,
                        color: Colors.grey,
                      ),
                      title: Text("Simcard & Network"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                        leading: Icon(
                          Icons.wifi,
                          color: Colors.amber,
                        ),
                        title: Text("Wifi"),
                        trailing: CommonSwitch(
                          defValue: true,
                        )),
                    ListTile(
                      leading: Icon(
                        Icons.bluetooth,
                        color: Colors.blue,
                      ),
                      title: Text("Bluetooth"),
                      trailing: CommonSwitch(
                        defValue: false,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                      title: Text("More"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),

              //3
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Sound",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.do_not_disturb_off,
                        color: Colors.orange,
                      ),
                      title: Text("Silent Mode"),
                      trailing: CommonSwitch(
                        defValue: false,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.vibration,
                        color: Colors.purple,
                      ),
                      title: Text("Vibrate Mode"),
                      trailing: CommonSwitch(
                        defValue: true,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.green,
                      ),
                      title: Text("Sound Volume"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phonelink_ring,
                        color: Colors.grey,
                      ),
                      title: Text("Ringtone"),
                      trailing: Icon(Icons.arrow_right),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Device Settings",
      showDrawer: false,
      showFAB: false,
      backGroundColor: Colors.grey.shade300,
      bodyData: bodyData(),
    );
  }
}
