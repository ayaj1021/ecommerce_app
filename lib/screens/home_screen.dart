import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/categories/chairs_categories.dart';
import 'package:furniture_ecommerce_app/categories/tables_categories.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  List<String> productCategories = [
    'Chairs',
    'Cupboards',
    'Tables',
    'Lampholders',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBgColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Discover the Best \nFurniture',
                  style: AppStyles.headLine2,
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/profile_image.jpg'),
                ),
              ],
            ),
            40.height,
            //Search bar
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade300,
                    )),
                child: Row(
                  children: const [Icon(Icons.search)],
                )),
            30.height,
            Text(
              'Categories',
              style: AppStyles.headLine2,
            ),
            20.height,

            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    controller: controller,
                    isScrollable: true,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    labelColor: AppStyles.primaryColor,
                    indicatorColor: AppStyles.primaryColor,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        child: TabBarContainer(
                          tabName: 'Chairs',
                        ),
                      ),
                      Tab(
                        child: TabBarContainer(
                          tabName: 'Cupboards',
                        ),
                      ),
                      Tab(
                        child: TabBarContainer(
                          tabName: 'Tables',
                        ),
                      ),
                      Tab(
                        child: TabBarContainer(
                          tabName: 'Lampstands',
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              height: 380,
              width: double.maxFinite,
              child: TabBarView(controller: controller, children: [
                ChairCategory(),
                const Text('there'),
                TableCategory(),
                const Text('you'),
              ]),
            ),

            Text(
              'Best Seller',
              style: AppStyles.headLine2,
            )
          ],
        ),
      )),
    );
  }
}

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({
    super.key,
    required this.tabName,
    this.textColor,
  });

  final String tabName;

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        tabName,
        style: TextStyle(color: textColor),
      )),
    );
  }
}
