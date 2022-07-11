import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_ecommerce/item/ui/single_category_select.dart';

class CategorySelect extends StatelessWidget {
  const CategorySelect({Key? key}) : super(key: key);

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
                        'Categories',
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
              child: ListView(
                shrinkWrap: true,
                children: [
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                  CategorySelectSingle(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
