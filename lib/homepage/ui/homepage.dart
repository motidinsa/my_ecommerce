import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_ecommerce/homepage/ui/suggestion.dart';

import 'category_single.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  splashRadius: 25,
                  alignment: Alignment.centerLeft,
                  icon: const Center(
                    child: FaIcon(FontAwesomeIcons.bars,
                        size: 20, color: Color(0xff5956E9)),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 20),
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                        cornerRadius: 10,
                        cornerSmoothing: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Search',
                                isDense: false,
                                contentPadding: EdgeInsets.zero,
                                // label: Text('data'),
                                border: InputBorder.none,
                              ),
                              // style: TextStyle(fontSize: 13),
                              maxLines: 1,
                              // onChanged: (text) => searchItemName = text,
                              // onEditingComplete: () {
                              //   // ctx.isSearchBarActive(false);
                              //   // ctx.searchBarFocusNode.unfocus();
                              // },
                            ),
                          ),
                        ),
                        IconButton(
                            splashRadius: 20,
                            icon: Icon(Icons.arrow_forward,
                                color: Color(0xff5956E9)),
                            onPressed: () {
                              // if (searchItemName.isNotEmpty) {
                              //   widget.onSearch(searchItemName);
                              // }
                            }),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // SizedBox(height: 5,),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
              child: Text(
                'Featured',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
            ),
            Suggestion(),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
            ),
            GridView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .8,
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              children: [
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
                CategorySingle(),
              ],
            )
          ],
        ))
      ],
    );
  }
}
