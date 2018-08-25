import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/cart_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/custom_float.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingAction extends StatefulWidget {
  final Product product;
  ShoppingAction({this.product});

  @override
  ShoppingActionState createState() {
    return new ShoppingActionState();
  }
}

class ShoppingActionState extends State<ShoppingAction> {
  String _value = "Cyan";
  String _sizeValue = "M";

  Widget colorsCard() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Colors",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: widget.product.colors
                .map((pc) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                          selectedColor: pc.color,
                          label: Text(
                            pc.colorName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          selected: _value == pc.colorName,
                          onSelected: (selected) {
                            setState(() {
                              _value = selected ? pc.colorName : null;
                            });
                          }),
                    ))
                .toList(),
          ),
        ],
      );

  Widget sizesCard() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Sizes",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: widget.product.sizes
                .map((pc) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                          selectedColor: Colors.yellow,
                          label: Text(
                            pc,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          selected: _sizeValue == pc,
                          onSelected: (selected) {
                            setState(() {
                              _sizeValue = selected ? pc : null;
                            });
                          }),
                    ))
                .toList(),
          ),
        ],
      );

  Widget quantityCard() {
    CartBloc cartBloc = CartBloc(widget.product);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Sizes",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomFloat(
              isMini: true,
              icon: FontAwesomeIcons.minus,
              qrCallback: () => cartBloc.subtractionController.add(true),
            ),
            StreamBuilder<int>(
              stream: cartBloc.getCount,
              initialData: 0,
              builder: (context, snapshot) => Text(
                    snapshot.data.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
            ),
            CustomFloat(
              isMini: true,
              icon: FontAwesomeIcons.plus,
              qrCallback: () => cartBloc.additionalController.add(true),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        colorsCard(),
        CommonDivider(),
        SizedBox(
          height: 5.0,
        ),
        sizesCard(),
        CommonDivider(),
        SizedBox(
          height: 5.0,
        ),
        quantityCard(),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
