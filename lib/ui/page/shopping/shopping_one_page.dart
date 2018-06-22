import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/product_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingOnePage extends StatelessWidget {
  //stack1
  Widget imageStack(String img) => Image.network(
        img,
        fit: BoxFit.cover,
      );

  //stack2
  Widget descStack(Product product) => Positioned(
        bottom: 0.0,
        left: 0.0,
        right: 0.0,
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    product.name,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(product.price,
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      );

  //stack3
  Widget ratingStack(double rating) => Positioned(
        top: 0.0,
        left: 0.0,
        child: Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.9),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0))),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.cyanAccent,
                size: 10.0,
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                rating.toString(),
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
        ),
      );

  Widget productGrid(List<Product> products) => GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: products
            .map((product) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: Colors.yellow,
                    onTap: () {},
                    child: Material(
                      elevation: 2.0,
                      color: Colors.yellow,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          imageStack(product.image),
                          descStack(product),
                          ratingStack(product.rating),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      );

  Widget bodyData() {
    ProductBloc productBloc = ProductBloc();
    return StreamBuilder<List<Product>>(
        stream: productBloc.productItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? productGrid(snapshot.data)
              : Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "Products",
      showDrawer: true,
      showFAB: false,
      actionFirstIcon:Icons.shopping_cart,
      bodyData: bodyData(),
    );
  }
}
