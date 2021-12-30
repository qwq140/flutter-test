import 'package:flutter/material.dart';
import 'package:fluttertest/const/fonts/font_famliy.dart';
import 'package:fluttertest/const/fonts/s_core_dream.dart';
import 'package:fluttertest/models/category.dart';
import 'package:fluttertest/pages/coupang_category_list_page.dart';
import 'package:get/get.dart';

class CoupangCategoryPage extends StatelessWidget {
  const CoupangCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle keywordStyle = TextStyle(
      fontFamily: FontFamily.sCoreDream,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: Color(0xFFC9C9D3),
    );

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "상품 카테고리",
                style: SCoreDream.cFF333333_s18_w600,
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: FontFamily.sCoreDream,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC9C9D3),
                  ),
                  children: [
                    TextSpan(text: '쿠팡 ', style: keywordStyle),
                    const TextSpan(text: '상품 '),
                    TextSpan(text: '카테고리', style: keywordStyle),
                    const TextSpan(text: '를 모아보세요'),
                  ],
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 32),
                itemCount: categories.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(() => const CoupangCategoryListPage());
                        },
                        child: Text(
                          categories[index].name,
                          style: SCoreDream.black_s14_w300,
                        ),
                      ),
                      const Divider(
                        height: 40.8,
                        thickness: 0.8,
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
