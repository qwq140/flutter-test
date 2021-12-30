import 'package:flutter/material.dart';
import 'package:fluttertest/const/color_palette.dart';
import 'package:fluttertest/const/fonts/s_core_dream.dart';
import 'package:fluttertest/models/category.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest/models/goldbox.dart';
import 'package:fluttertest/pages/coupang_category_page.dart';
import 'package:fluttertest/pages/coupang_gold_box_page.dart';
import 'package:get/get.dart';
import 'const/fonts/font_famliy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tabs = ["상품", "골드박스"];

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Image.asset(
                  'assets/img_9.png',
                  width: 80,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 12,
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "쿠팡에서 검색",
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.notoSansKR,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/img_10.png',
                    height: 32,
                    width: 32,
                  ),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                      insets: EdgeInsets.only(left: 28, right: -5)),
                  labelColor: const Color(0xFF111111),
                  labelStyle: const TextStyle(
                    fontFamily: FontFamily.sCoreDream,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  labelPadding: const EdgeInsets.only(left: 33, right: 0),
                  unselectedLabelColor:
                      const Color(0xFF333333).withOpacity(0.6),
                  unselectedLabelStyle: const TextStyle(
                    fontFamily: FontFamily.sCoreDream,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  isScrollable: true,
                  tabs: _tabs
                      .map(
                        (label) => Tab(text: label),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildItemListView(),
              _buildGoldBoxListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGoldBoxListView() => ListView.builder(
        itemCount: goldBoxes.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 22,
                right: 22,
                bottom: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  goldBoxes[index].url,
                  height: 178,
                  fit: BoxFit.fill,
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(
                left: 22,
                right: 22,
                bottom: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  goldBoxes[index].url,
                  height: 178,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }
        },
      );

  Widget _buildItemListView() => ListView(
        children: [
          Container(
            color: const Color(0xFF00B1B3),
            padding:
                const EdgeInsets.only(top: 51, left: 24, right: 24, bottom: 51),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "자두앱이 자랑하는 웹툰^^",
                  style: TextStyle(
                    fontFamily: FontFamily.sCoreDream,
                    color: ColorPalette.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "자두를 모아주세요!\n자두 사용법을 알려드려요",
                  style: TextStyle(
                    fontFamily: FontFamily.sCoreDream,
                    color: ColorPalette.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 38),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "상품 카테고리",
                      style: SCoreDream.cFF333333_s18_w600,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => CoupangCategoryPage());
                      },
                      child: const Text(
                        "전체보기 +",
                        style: TextStyle(
                          fontFamily: FontFamily.sCoreDream,
                          color: Color(0xFF222222),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 98,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 4, top: 18),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(26),
                              child: Image.network(
                                categories[index].imageUrl,
                                fit: BoxFit.fill,
                                width: 52,
                                height: 52,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              categories[index].name,
                              style: const TextStyle(
                                  fontFamily: FontFamily.notoSansKR,
                                  color: Color(0xFF111111),
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEFEFEF),
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "쿠팡 제작 상품",
                          style: SCoreDream.cFF333333_s18_w600,
                        ),
                        const SizedBox(width: 6),
                        Image.asset(
                          'assets/img.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "전체보기 +",
                        style: TextStyle(
                          fontFamily: FontFamily.sCoreDream,
                          color: Color(0xFF222222),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(top: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://picsum.photos/seed/picsum/200/300',
                              height: 120,
                              width: 120,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2, left: 16),
                              child: Column(
                                children: [
                                  const Text(
                                    "클라스카 싱글 에티오피아 드립백커피, 10g, 10개",
                                    style: TextStyle(
                                      fontFamily: FontFamily.sCoreDream,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(0, 0, 0, 0.85),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: [
                                      const Text(
                                        "11,900",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(0, 0, 0, 0.85),
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      const Text(
                                        "원",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color.fromRGBO(0, 0, 0, 0.7),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Image.asset(
                                        'assets/img_7.png',
                                        width: 16,
                                        height: 19,
                                      ),
                                      const SizedBox(width: 2),
                                      const Text(
                                        "로켓배송",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF0CA4E4),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "골드박스",
                          style: SCoreDream.cFF333333_s18_w600,
                        ),
                        const SizedBox(width: 6),
                        Image.asset(
                          'assets/img_8.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const CoupangGoldBoxPage());
                      },
                      child: const Text(
                        "전체보기 +",
                        style: TextStyle(
                          fontFamily: FontFamily.sCoreDream,
                          color: Color(0xFF222222),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(top: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://picsum.photos/seed/picsum/200/300',
                              height: 120,
                              width: 120,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2, left: 16),
                              child: Column(
                                children: [
                                  const Text(
                                    "클라스카 싱글 에티오피아 드립백커피, 10g, 10개",
                                    style: TextStyle(
                                      fontFamily: FontFamily.sCoreDream,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(0, 0, 0, 0.85),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: [
                                      const Text(
                                        "11,900",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(0, 0, 0, 0.85),
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      const Text(
                                        "원",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color.fromRGBO(0, 0, 0, 0.7),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Image.asset(
                                        'assets/img_7.png',
                                        width: 16,
                                        height: 19,
                                      ),
                                      const SizedBox(width: 2),
                                      const Text(
                                        "로켓배송",
                                        style: TextStyle(
                                          fontFamily: FontFamily.sCoreDream,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF0CA4E4),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      );
}
