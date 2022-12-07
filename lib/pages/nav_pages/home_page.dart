import 'package:travell/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<ExploreMoreMenuItem> _exploreMoreItens = [
    ExploreMoreMenuItem(Images.balloning, "Balloning"),
    ExploreMoreMenuItem(Images.hiking, "Hiking"),
    ExploreMoreMenuItem(Images.kayaking, "Kayaking"),
    ExploreMoreMenuItem(Images.snorkling, "Snorkling")
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, size: 30, color: Colors.black),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const AppLargeText(text: "Discover"),
            ),
            const SizedBox(height: 30),
            Container(
              // margin: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: const CircleTabIndicator(
                    color: AppColors.mainColor,
                    radius: 4,
                  ),
                  isScrollable: true,
                  controller: _tabController,
                  tabs: const [
                    Tab(text: "Places"),
                    Tab(text: "Inspiration"),
                    Tab(text: "Emotions"),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 10,
                        ),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage(Images.mountain),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  const Text("tab1"),
                  const Text("tab2"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppLargeText(text: "Explore more", size: 22),
                  AppText(text: "See all", color: AppColors.textColor1)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemCount: _exploreMoreItens.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(_exploreMoreItens[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        AppText(
                          text: _exploreMoreItens[index].title,
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
