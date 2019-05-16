import 'package:flutter_web/material.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_two/dashboard_menu_row_two.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';

class DashboardTwoPage extends StatelessWidget {
  Widget bodyData() => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Pay Your Bills",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              DashboardMenuRowTwo(
                firstIcon: Icons.brightness_1,
                firstLabel: "ELECTRICITY",
                secondIcon: Icons.brightness_1,
                secondLabel: "WATER",
                thirdIcon: Icons.brightness_1,
                thirdLabel: "MOBILE",
              ),
              DashboardMenuRowTwo(
                firstIcon: Icons.phone,
                firstLabel: "LANDLINE",
                secondIcon: Icons.brightness_1,
                secondLabel: "CABLE TV",
                thirdIcon: Icons.brightness_1,
                thirdLabel: "INTERNET",
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Purchase Tickets",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                ),
              ),
              DashboardMenuRowTwo(
                firstIcon: Icons.brightness_1,
                firstLabel: "MOVIE",
                secondIcon: Icons.brightness_1,
                secondLabel: "EVENT",
                thirdIcon: Icons.brightness_1,
                thirdLabel: "SPORT",
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Pay",
      showFAB: false,
      bodyData: bodyData(),
    );
  }
}
