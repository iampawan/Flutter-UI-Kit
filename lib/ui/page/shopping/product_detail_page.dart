import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/inherited/product_provider.dart';
import 'package:flutter_uikit/logic/bloc/product_bloc.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_two/product_detail_widgets.dart';
import 'package:flutter_uikit/ui/widgets/login_background.dart';

class ProductDetailPage extends StatelessWidget {
  Widget productScaffold(Stream<List<Product>> products) => new Scaffold(
      backgroundColor: new Color(0xffeeeeee),
      body: StreamBuilder<List<Product>>(
          stream: products,
          builder: (context, snapshot) {
            return snapshot.hasData
                ? Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      LoginBackground(
                        showIcon: false,
                      ),
                      ProductDetailWidgets(product:snapshot.data[0]),
                    ],
                  )
                : Center(child: CircularProgressIndicator());
          }));
  @override
  Widget build(BuildContext context) {
    ProductBloc productBloc = ProductBloc();
    return ProductProvider(
        productBloc: productBloc,
        child: productScaffold(productBloc.productItems));
  }
}
