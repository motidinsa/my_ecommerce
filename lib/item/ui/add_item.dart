import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_ecommerce/item/ui/category_select.dart';

import 'image_select_option.dart';

class ItemAdd extends StatefulWidget {
  const ItemAdd({Key? key}) : super(key: key);

  @override
  State<ItemAdd> createState() => _ItemAddState();
}

class _ItemAddState extends State<ItemAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  IconButton(
                    splashRadius: 25,
                    alignment: Alignment.centerLeft,
                    icon: const Center(
                      child: FaIcon(FontAwesomeIcons.arrowLeft,
                          size: 20, color: Color(0xff5956E9)),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Add Item',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    elevation: 3,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                        cornerRadius: 15,
                        cornerSmoothing: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            // style: Text,
                            // onChanged: (text) => name = text,
                            decoration: InputDecoration(
                              label: Text('Name'),
                              // labelText: 'Name',
                              // labelStyle: TextStyle(
                              //   fontSize: 16,
                              //   // color: Colors.blue,
                              // ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.grey,
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff5956E9),
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            minLines: 1,
                            maxLines: 10,
                            readOnly: true,
                            // controller: TextEditingController(
                            //     text: ctx.selectedCategoryName
                            //         .isEmpty
                            //         ? ''
                            //         : ctx.selectedCategoryName
                            //         .join(' / ')),
                            onTap: () {
                              Get.to(() => CategorySelect());
                              // addItemController.getMockCategory();
                              // Navigator.pushNamed(
                              //     context, "/select_category");
                              // addItemController
                              //     .categorySelectPages++;
                            },
                            decoration: InputDecoration(
                              label: Text('Select Category'),
                              suffixIcon: Icon(Icons.arrow_drop_down_rounded,
                                  size: 30, color: Color(0xff5956E9)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  // width: 0.75,
                                  color: Colors.grey,
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  // width: 0.75,
                                  color: Color(0xff5956E9),
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            // onChanged: (text) =>
                            // price = double.tryParse(text),
                            decoration: InputDecoration(
                              label: Text('Price'),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  // width: 0.75,
                                  color: Colors.grey,
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    // width: 0.75,
                                    color: Color(0xff5956E9)),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            maxLines: 5,
                            minLines: 1,
                            // onChanged: (text) =>
                            // description = text,
                            decoration: InputDecoration(
                              label: Text('Description'),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  // width: 0.75,
                                  color: Colors.grey,
                                ),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    // width: 0.75,
                                    color: Color(0xff5956E9)),
                                borderRadius: SmoothBorderRadius(
                                  cornerRadius: 10,
                                  cornerSmoothing: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          StaggeredGrid.count(
                            crossAxisCount: 4,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    shape: SmoothRectangleBorder(
                                      borderRadius: SmoothBorderRadius(
                                        cornerRadius: 10,
                                        cornerSmoothing: 1,
                                      ),
                                    ),
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 1,
                                child: Container(
                                  // height: 100,
                                  color: Colors.green,
                                ),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 1,
                                child: Container(
                                  // height: 100,
                                  color: Colors.green,
                                ),
                              ),
                              // StaggeredGridTile.count(
                              //   crossAxisCellCount: 1,
                              //   mainAxisCellCount: 1,
                              //   child: Container(height: 100,color: Colors.green,),
                              // ),
                            ],
                          ),
                          Center(
                            child: TextButton(
                              child: Text('Add image'),
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: const SmoothRectangleBorder(
                                    borderRadius: SmoothBorderRadius.only(
                                      topLeft: SmoothRadius(
                                        cornerRadius: 15,
                                        cornerSmoothing: 1,
                                      ),
                                      topRight: SmoothRadius(
                                        cornerRadius: 15,
                                        cornerSmoothing: 1,
                                      ),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) => ImageSelectOption(),
                                );
                              },
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: SmoothRectangleBorder(
                                  borderRadius: SmoothBorderRadius(
                                    cornerRadius: 10,
                                    cornerSmoothing: 1,
                                  ),
                                ),
                                primary: const Color(0xff5956E9),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15)),
                            onPressed: () async {
                              // User? user =
                              // await Authentication.signUp(email, password);
                              // if (user != null) {
                              //   Get.to(() => const VerifyEmail());
                              // }
                            },
                            child: const Text(
                              'Add Item',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
