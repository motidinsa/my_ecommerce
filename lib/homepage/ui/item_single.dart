import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class ItemSingle extends StatelessWidget {
  const ItemSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Card(
        color: Colors.grey.shade300,
        elevation: 3,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              SizedBox(
                height: 100,
                child:
                    Image.asset('assets/images/cpu.png', fit: BoxFit.fitHeight),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'item name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'di price',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'price',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'electronics/mobile/samsung',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.favorite_border_rounded),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.add_shopping_cart)
                ],
              ),
              // Column(crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Row(
              //       children: [
              //         Text('item name'),
              //         Icon(Icons.favorite_border_rounded)
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Text('di price'),
              //         Text('price'),
              //         Icon(Icons.add_shopping_cart)
              //       ],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
