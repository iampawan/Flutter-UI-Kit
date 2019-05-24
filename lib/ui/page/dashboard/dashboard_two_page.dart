import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_two/dashboard_menu_row_two.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                firstIcon: FontAwesomeIcons.bolt,
                firstLabel: "ELECTRICITY",
                secondIcon: FontAwesomeIcons.tint,
                secondLabel: "WATER",
                thirdIcon: FontAwesomeIcons.mobile,
                thirdLabel: "MOBILE",
              ),
              DashboardMenuRowTwo(
                firstIcon: Icons.phone,
                firstLabel: "LANDLINE",
                secondIcon: FontAwesomeIcons.tv,
                secondLabel: "CABLE TV",
                thirdIcon: FontAwesomeIcons.chrome,
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
                firstIcon: FontAwesomeIcons.film,
                firstLabel: "MOVIE",
                secondIcon: FontAwesomeIcons.calendarAlt,
                secondLabel: "EVENT",
                thirdIcon: FontAwesomeIcons.footballBall,
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
