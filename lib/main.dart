import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_ecommerce/homepage/ui/homepage.dart';
import 'package:my_ecommerce/item/ui/category_select.dart';
import 'package:my_ecommerce/packages/salomon_bottom_bar.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    currentIndex = 0;
  }

  @override
  void dispose() {
    // _pageController.dispose();
    super.dispose();
  }

  late int currentIndex;

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        drawer: const Drawer(),

        body: const SafeArea(
          child: Homepage(),
        ),
        //   bottomNavigationBar: BubbleBottomBar(
        //     hasNotch: true,
        //     // fabLocation: BubbleBottomBarFabLocation.end,
        //     opacity: .2,
        //     currentIndex: currentIndex,
        //     onTap: changePage,
        //     borderRadius: BorderRadius.vertical(
        //       top: Radius.circular(16),
        //     ),
        //     //border radius doesn't work when the notch is enabled.
        //     elevation: 8,
        //     tilesPadding: EdgeInsets.symmetric(
        //       vertical: 8.0,
        //     ),
        //     items: <BubbleBottomBarItem>[
        //       BubbleBottomBarItem(
        //         // showBadge: true,
        //         badge: Text("5"),
        //         badgeColor: Colors.purple,
        //         backgroundColor: Colors.purple,
        //               icon: const FaIcon(
        //                 FontAwesomeIcons.house,
        //                 size: 20,color: Colors.black,
        //               ),
        //         activeIcon: const FaIcon(
        //   FontAwesomeIcons.house,
        //   size: 20,
        // ),
        //         title: Text("Home"),
        //       ),
        //       BubbleBottomBarItem(
        //           backgroundColor: Colors.deepPurple,
        //           icon: Icon(
        //             Icons.access_time,
        //             color: Colors.black,
        //           ),
        //           activeIcon: Icon(
        //             Icons.access_time,
        //             color: Colors.deepPurple,
        //           ),
        //           title: Text("Logs")), BubbleBottomBarItem(
        //           backgroundColor: Colors.deepPurple,
        //           icon: FloatingActionButton(
        //               onPressed: () {}, child: Icon(Icons.add)),
        //           activeIcon: FloatingActionButton(
        //               onPressed: () {}, child: Icon(Icons.add)),
        //           title: Text("Logs")),
        //       BubbleBottomBarItem(
        //           backgroundColor: Colors.indigo,
        //           icon: Icon(
        //             Icons.folder_open,
        //             color: Colors.black,
        //           ),
        //           activeIcon: Icon(
        //             Icons.folder_open,
        //             color: Colors.indigo,
        //           ),
        //           title: Text("Folders")),
        //       BubbleBottomBarItem(
        //           backgroundColor: Colors.green,
        //           icon: Icon(
        //             Icons.menu,
        //             color: Colors.black,
        //           ),
        //           activeIcon: Icon(
        //             Icons.menu,
        //             color: Colors.green,
        //           ),
        //           title: Text("Menu"))
        //     ],
        //   ),

        // bottomNavigationBar: BottomNavyBar(
        //
        //   selectedIndex: _selectedIndex,
        //   showElevation: true, // use this to remove appBar's elevation
        //   onItemSelected: (index) =>
        //       setState(() {
        //         _selectedIndex = index;
        //         _pageController.animateToPage(index,
        //             duration: Duration(milliseconds: 300), curve: Curves.ease);
        //       }),
        //   items: [
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.apps),
        //       title: Text('Home'),
        //       activeColor: Colors.red,
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.people),
        //         title: Text('Users'),
        //         activeColor: Colors.purpleAccent
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.message),
        //         title: Text('Messages'),
        //         activeColor: Colors.pink
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.settings),
        //         title: Text('Settings'),
        //         activeColor: Colors.blue
        //     ),
        //   ],
        // )

        bottomNavigationBar: SalomonBottomBar(
          hasFAB: true,
          // margin:  EdgeInsets.symmetric(vertical: 10),
          // itemPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const FaIcon(
                FontAwesomeIcons.house,
                size: 20,
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const FaIcon(
                FontAwesomeIcons.cartShopping,
                size: 20,
              ),
              title: const Text('Carts'),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
                icon: FloatingActionButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      Get.to(() => CategorySelect());
                    },
                    child: const Icon(Icons.add)),
                title: const Text('Add Item'),
                hasPadding: false),
            SalomonBottomBarItem(
              icon: const FaIcon(
                FontAwesomeIcons.solidMessage,
                size: 20,
              ),
              title: const Text('Messages'),
              selectedColor: Colors.green,
            ),
            SalomonBottomBarItem(
              icon: const FaIcon(
                FontAwesomeIcons.solidUser,
                size: 20,
              ),
              title: const Text('Profile'),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
