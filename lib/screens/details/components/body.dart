import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_app/screens/details/components/description.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 1.6,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.55), // Adjust top margin
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.8), 
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 5),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 5),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPadding / 7),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
