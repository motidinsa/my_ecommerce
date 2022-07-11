import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySelectSingle extends StatelessWidget {
  const CategorySelectSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 1,
        color: Colors.grey.shade50,
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
          onTap: () {},
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/cpu.png',
                        fit: BoxFit.fitHeight),
                  )),
              SizedBox(
                width: 30,
              ),
              Text(
                'cat name',
                style: TextStyle(fontSize: 16),
              ),
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
