import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class CategorySingle extends StatelessWidget {
  const CategorySingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
        child: Column(
          children: [
            SizedBox(
                height: 100,
                child: Image.asset('assets/images/cpu.png',
                    fit: BoxFit.fitHeight)),
            Expanded(
              child: Center(
                child: Text(
                  'cat name',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
