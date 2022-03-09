import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            // return ItemWidget(item: CatalogModel.items[index]);
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
