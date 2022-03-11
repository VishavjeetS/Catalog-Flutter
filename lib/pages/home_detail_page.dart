import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                child: "Add to cart".text.xl.make(),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor),
                    shape: MaterialStateProperty.all(const StadiumBorder())),
              ).wh(120, 45)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image, colorBlendMode: BlendMode.color,
                    // scale: 3.0,
                  )).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.xl3.bold.make(),
                      catalog.desc.text.xl.make(),
                      "Et eirmod sadipscing amet lorem eos amet consetetur accusam elitr, magna et accusam et dolor tempor tempor sea voluptua erat, lorem vero sadipscing vero magna clita, labore dolor elitr voluptua magna amet et at sed labore. Dolor sed diam clita."
                          .text
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ))
            ],
          ),
        ));
  }
}
