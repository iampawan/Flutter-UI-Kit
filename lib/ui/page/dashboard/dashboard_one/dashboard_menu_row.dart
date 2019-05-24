import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/label_below_icon.dart';

class DashboardMenuRow extends StatelessWidget {
  final firstLabel;
  final IconData firstIcon;
  final firstIconCircleColor;
  final secondLabel;
  final IconData secondIcon;
  final secondIconCircleColor;
  final thirdLabel;
  final IconData thirdIcon;
  final thirdIconCircleColor;
  final fourthLabel;
  final IconData fourthIcon;
  final fourthIconCircleColor;

  const DashboardMenuRow(
      {Key key,
      this.firstLabel,
      this.firstIcon,
      this.firstIconCircleColor,
      this.secondLabel,
      this.secondIcon,
      this.secondIconCircleColor,
      this.thirdLabel,
      this.thirdIcon,
      this.thirdIconCircleColor,
      this.fourthLabel,
      this.fourthIcon,
      this.fourthIconCircleColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          LabelBelowIcon(
            icon: firstIcon,
            label: firstLabel,
            circleColor: firstIconCircleColor,
          ),
          LabelBelowIcon(
            icon: secondIcon,
            label: secondLabel,
            circleColor: secondIconCircleColor,
          ),
          LabelBelowIcon(
            icon: thirdIcon,
            label: thirdLabel,
            circleColor: thirdIconCircleColor,
          ),
          LabelBelowIcon(
            icon: fourthIcon,
            label: fourthLabel,
            circleColor: fourthIconCircleColor,
          ),
        ],
      ),
    );
  }
}
