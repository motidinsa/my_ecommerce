import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Center(
                  child: const FaIcon(FontAwesomeIcons.bars,
                      size: 20, color: Color(0xff5956E9)),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
