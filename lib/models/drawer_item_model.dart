import 'package:flutter/material.dart';

class MainExpandableItem {
  String itemName;
  List<SubExpandableItem>? subItemList;
  IconData? itemIcon;

  MainExpandableItem({required this.itemName, this.subItemList, this.itemIcon});
}

class SubExpandableItem {
  String itemName;
  InkWell? onTap;

  SubExpandableItem({required this.itemName, this.onTap});
}

List<MainExpandableItem> itemList = [
  MainExpandableItem(
    itemName: 'Purchase',
    subItemList: subPurchaseList,
    itemIcon: Icons.shopping_cart,
  ),
  MainExpandableItem(itemName: 'Sell', itemIcon: Icons.shopping_bag),
  MainExpandableItem(
      itemName: 'Stock / Inventory', itemIcon: Icons.house_siding),
];

List<SubExpandableItem> subPurchaseList = [
  SubExpandableItem(itemName: 'Purchase List'),
  SubExpandableItem(itemName: 'Order List'),
  SubExpandableItem(itemName: 'VAT List'),
  SubExpandableItem(itemName: 'Product Unit'),
  SubExpandableItem(itemName: 'Purchase Report'),
];
