import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/drawer_item_model.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Table Data',
          style: GoogleFonts.poppins(),
        ),
      ),
      drawer: customDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // whole column
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: (screenSize.width * 5.155) / 7,
                    decoration: BoxDecoration(
                        border: Border.all(color: customMaterialColor)),
                    child: Column(
                      children: [
                        Container(
                          width: (screenSize.width * 6) / 7,
                          height: 30,
                          color: customMaterialColor,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10, 4.5, 4.5, 4.5),
                            child: Text(
                              'Dues',
                              style: borderTextStyle,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        Container(
                          color: customMaterialColor.shade50,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Previous Due',
                                    style: tableTextStyleBoldLarge),
                                Text('  01 January 2022', style: tableTextStyle)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: customMaterialColor),
                      color: customMaterialColor.shade50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(11.8, 17, 10.5, 17.5),
                      child: Column(
                        children: [
                          Text('Due', style: tableTextStyle),
                          Text('$takaSign 20000', style: takaTextStyle)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              buildRow1(screenSize),
              buildRow2(screenSize),
              buildRow3(screenSize),
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 50,
                    color: customMaterialColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                        Text(
                          '  Pay the balance',
                          style: tableTextStyleBoldLargeWhite,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow1(Size screenSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: (screenSize.width * 5.155) / 7,
          decoration:
              BoxDecoration(border: Border.all(color: customMaterialColor)),
          child: Column(
            children: [
              Container(
                width: (screenSize.width * 6) / 7,
                height: 30,
                color: customMaterialColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4.5, 4.5, 4.5),
                  child: Text(
                    'Purchase',
                    style: borderTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                color: customMaterialColor.shade50,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice Date :', style: tableTextStyle),
                          Text('  01 January 2022', style: tableTextStyleBold)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice No :', style: tableTextStyle),
                          Text('       5386328', style: tableTextStyleBold)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Test product 01', style: tableTextStyleBold),
                          Text('200 pcs x 200', style: tableTextStyle),
                          Text('Test product 01', style: tableTextStyleBold),
                          Text('20 pcs x 300', style: tableTextStyle),
                          Text('Test product 01', style: tableTextStyleBold),
                          Text('20 pcs x 200', style: tableTextStyle),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                                Text('$takaSign 40000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                                Text('$takaSign 6000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                                Text('$takaSign 4000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Discount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('VAT', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Grand Total', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Previous Due', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 50000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 20000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Total Amount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Total Payment',
                                style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 70000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 40000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Remaining Balance',
                                style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child:
                                Text('$takaSign 30000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 444,
          decoration: BoxDecoration(
            border: Border.all(color: customMaterialColor),
            color: customMaterialColor.shade50,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(11.8, 17, 10.5, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Due', style: tableTextStyle),
                Text('$takaSign 30000', style: takaTextStyle)
              ],
            ),
          ),
        )
      ],
    );
  }

  Row buildRow2(Size screenSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: (screenSize.width * 5.155) / 7,
          decoration:
              BoxDecoration(border: Border.all(color: customMaterialColor)),
          child: Column(
            children: [
              Container(
                width: (screenSize.width * 6) / 7,
                height: 30,
                color: customMaterialColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4.5, 4.5, 4.5),
                  child: Text(
                    'Payment',
                    style: borderTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                color: customMaterialColor.shade50,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice Date :', style: tableTextStyle),
                          Text('  01 January 2022', style: tableTextStyleBold)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice No :', style: tableTextStyle),
                          Text('       53863323', style: tableTextStyleBold)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Discount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('VAT', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Grand Total', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Previous Due', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 30000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Total Amount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Total Payment',
                                style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 30000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 10000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Remaining Balance',
                                style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child:
                                Text('$takaSign 20000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 326,
          decoration: BoxDecoration(
            border: Border.all(color: customMaterialColor),
            color: customMaterialColor.shade50,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(11.8, 17, 10.5, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Due', style: tableTextStyle),
                Text('$takaSign 20000', style: takaTextStyle)
              ],
            ),
          ),
        )
      ],
    );
  }

  Row buildRow3(Size screenSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: (screenSize.width * 5.155) / 7,
          decoration:
              BoxDecoration(border: Border.all(color: customMaterialColor)),
          child: Column(
            children: [
              Container(
                width: (screenSize.width * 6) / 7,
                height: 30,
                color: customMaterialColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4.5, 4.5, 4.5),
                  child: Text(
                    'Return',
                    style: borderTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                color: customMaterialColor.shade50,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice Date :', style: tableTextStyle),
                          Text('  01 January 2022', style: tableTextStyleBold)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice No :', style: tableTextStyle),
                          Text('       5386328', style: tableTextStyleBold)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: customMaterialColor.shade50,
                    border: Border.all(color: customMaterialColor)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Return Date :', style: tableTextStyle),
                          Text('  01 January 2022', style: tableTextStyleBold)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Return No. :', style: tableTextStyle),
                          Text('       5386328', style: tableTextStyleBold)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Test product 01', style: tableTextStyleBold),
                          Text('100 pcs x 50', style: tableTextStyle),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text('$takaSign 5000', style: tableTextStyle),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Discount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('VAT', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Grand Total', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Previous Due', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 5000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 20000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Total Amount', style: tableTextStyleBold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child:
                                Text('Total Paid', style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child:
                                Text('$takaSign 15000', style: tableTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text('$takaSign 0', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: customMaterialColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('Remaining Balance',
                                style: tableTextStyleBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 71,
                      decoration: BoxDecoration(
                          border: Border.all(color: customMaterialColor)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child:
                                Text('$takaSign 15000', style: tableTextStyle),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 418,
          decoration: BoxDecoration(
            border: Border.all(color: customMaterialColor),
            color: customMaterialColor.shade50,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(11.8, 17, 10.5, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Due', style: tableTextStyle),
                Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Text('$takaSign 15000', style: takaTextStyle),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Drawer customDrawer() {
    return Drawer(
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
    );
  }
}
