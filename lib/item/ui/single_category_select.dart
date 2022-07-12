import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/item/ui/subcategory_select.dart';

class CategorySelectSingle extends StatelessWidget {
  final bool hasSubcategory;
  final bool? isOnSubcategoryPage;
  final int? subcategoryFrequency;

  const CategorySelectSingle(
      {Key? key,
      this.subcategoryFrequency,
      required this.hasSubcategory,
      this.isOnSubcategoryPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: isOnSubcategoryPage == true ? 2 : 1,
        color: isOnSubcategoryPage == true
            ? Colors.grey.shade300
            : Colors.grey.shade50,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 1,
          ),
        ),
        child: InkWell(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 1,
          ),
          onTap: isOnSubcategoryPage == true
              ? null
              : () {
                  Get.to(
                    () => SubcategorySelect(),
                    preventDuplicates: false,
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                  );
                  // Get.back();
                },
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: subcategoryFrequency == null ? 60 : 80,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/cpu.png',
                        fit: BoxFit.fitHeight),
                  )),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'cat name',
                    style: TextStyle(fontSize: 16),
                  ),
                  if (isOnSubcategoryPage == true)
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3 sub categories',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black54,
                              fontSize: 15),
                        ),
                      ],
                    )
                ],
              ),
              if (hasSubcategory)
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      splashRadius: 25,
                      alignment: Alignment.centerLeft,
                      icon: Center(
                        child: FaIcon(
                          FontAwesomeIcons.angleRight,
                          size: 20,
                          color: Color(0xff5956E9).withOpacity(.6),
                        ),
                      ),
                      onPressed: () {
                        // Get.back();
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
