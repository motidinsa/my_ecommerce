import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
                              // Get.to(() => CategoryListPage());
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
                          Center(
                            child: TextButton(
                              child: Text('Add image'),
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) => SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            onTap: () {
                                              // _openImagePicker(
                                              //     'camera');
                                              // Navigator.pop(
                                              //     context);
                                            },
                                            child: Container(
                                                padding: EdgeInsets.all(20),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Add from camera',
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Icon(
                                                      Icons.add_a_photo,
                                                      size: 30,
                                                    )
                                                  ],
                                                )),
                                          ),
                                          InkWell(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            onTap: () {
                                              // _openImagePicker(
                                              //     'gallery');
                                              // Navigator.pop(
                                              //     context);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text('Add from gallery'),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Icon(
                                                    Icons.camera,
                                                    size: 30,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
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
