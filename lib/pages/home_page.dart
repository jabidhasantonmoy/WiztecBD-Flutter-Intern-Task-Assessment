import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/drawer_item_model.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(15)),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: customColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 145, 8, 8),
                  child: Text(
                    'Demo Limited Company',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            ...itemList
                .map((item) => ExpansionTile(
                      backgroundColor: customMaterialColor.shade50,
                      leading: Icon(item.itemIcon),
                      title: Text(item.itemName, style: GoogleFonts.poppins()),
                      children: [
                        ...?item.subItemList
                            ?.map((subItem) => SizedBox(
                                  height: 55,
                                  child: ListTile(
                                    leading: const Text('               '),
                                    title: Text(
                                      subItem.itemName,
                                      style: GoogleFonts.poppins(fontSize: 12),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ],
                    ))
                .toList(),
          ],
        ),
      ),
      body: const SingleChildScrollView(),
    );
  }
}
