import 'package:flutter/material.dart';
import 'package:flutter_task_app/Models/dates_model.dart';
import 'package:flutter_task_app/Models/discount%20_model.dart';
import 'package:flutter_task_app/themes/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int cartItemCount = 03;
    final PageController controller = PageController();
    return Scaffold(
      backgroundColor: const Color(0xFFD5F4ED),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [Text("UAE"), Icon(Icons.arrow_drop_down)],
              ),
              Row(
                children: [
                  Image.asset(
                    "homescreenD.png",
                    width: 24,
                    height: 23,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "deelly.png",
                    width: 62,
                    height: 23,
                  ),
                ],
              ),
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // Handle cart click
                    },
                  ),
                  if (cartItemCount > 0)
                    Positioned(
                      right: 8,
                      top: -3,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2)),
                        constraints: const BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Text(
                          '$cartItemCount',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      suffixIconColor: UiColor.searchBarColor,
                      prefixIcon:
                          Icon(Icons.search, color: UiColor.searchBarColor),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.filter_alt_outlined,
                    color: Colors.white, size: 20),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 1100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Filter By Category",
                      style: TextStyle(
                          color: UiColor.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD5F4ED),
                            // Background color
                            borderRadius: BorderRadius.circular(20),
                            // Rounded border
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/dinner.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Dinning",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD5F4ED),
                            // Background color
                            borderRadius: BorderRadius.circular(20),
                            // Rounded border
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/saloon.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Saloon/Spa",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD5F4ED),
                            // Background color
                            borderRadius: BorderRadius.circular(20),
                            // Rounded border
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/entertainment.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Entertainment",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD5F4ED),
                            // Background color
                            borderRadius: BorderRadius.circular(20),
                            // Rounded border
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/cleaning.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Cleaning",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Divider(
                  color: UiColor.dividerColor,
                  thickness: 1,
                  height: 10,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Filter By Discount",
                      style: TextStyle(
                          color: UiColor.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ListView.separated(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 80, // Adjust size
                        height: 40, // Adjust size
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          // Transparent background
                          borderRadius: BorderRadius.circular(100),
                          // Circular shape
                          border: Border.all(
                            color: UiColor.borderColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(products[index].discount,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: UiColor.textColor2,
                              )),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Divider(
                  color: UiColor.dividerColor,
                  thickness: 1,
                  height: 10,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Upcoming Deal",
                      style: TextStyle(
                          color: UiColor.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 53,
                  child: ListView.separated(
                    itemCount: dealsmodel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 50,
                        height: 53,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: UiColor.borderColor)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dealsmodel[index].date,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(dealsmodel[index].day,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 171, // PageView height
                      child: PageView(
                        controller: controller,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 171,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/offerimage.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 171,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/offerimage.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 171,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/offerimage.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 171,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/offerimage.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 171,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/offerimage.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 5, // Number of dots
                      effect: const WormEffect(
                        dotColor: Colors.grey,
                        activeDotColor: UiColor.dotColor,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Deal of the Day",
                      style: TextStyle(
                          color: UiColor.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 265,
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/restaurent.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 77,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Colors.white, width: 2)),
                                        child: const Center(
                                          child: Text(
                                            '20% off',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Ristorante – Niko Romito",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Dine and enjoy a 20% Discount",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: UiColor.textColor3),
                            ),
                            const Divider(
                              color: UiColor.dividerColor,
                              thickness: 1, // Line thickness
                              height: 10, // Space above & below the divider
                            ),
                            const Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(
                                  "Ristorante L’Olivo at Al Mah.. +5 more",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: UiColor.textColor3),
                                )
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "5.0",
                                      style:
                                          TextStyle(color: UiColor.textColor3),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.star,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "(7 reviews,)",
                                      style:
                                          TextStyle(color: UiColor.textColor3),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Sold:",
                                        style: TextStyle(
                                            color: UiColor.textColor3)),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text("7350",
                                        style: TextStyle(
                                            color: UiColor.textColor3))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      "Our Partners",
                      style: TextStyle(
                          color: UiColor.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/bvlgari.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/nobu.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/staydubai.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/almuntaha.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/lila.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: UiColor.borderColor, width: 1)),
                      child: Center(
                        child: Image.asset(
                          "assets/zone.png",
                          width: 83,
                          height: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
