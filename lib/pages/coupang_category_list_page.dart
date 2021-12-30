import 'package:flutter/material.dart';
import 'package:fluttertest/const/fonts/font_famliy.dart';
import 'package:fluttertest/const/fonts/s_core_dream.dart';
import 'package:fluttertest/models/category.dart';

class CoupangCategoryListPage extends StatelessWidget {
  const CoupangCategoryListPage({Key? key}) : super(key: key);

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
                "패션의류/잡화",
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
                    TextSpan(text: '쿠팡 이용자 ', style: keywordStyle),
                    const TextSpan(text: '인기 상품 '),
                    TextSpan(text: '100개 ', style: keywordStyle),
                    const TextSpan(text: '까지 노출됩니다.'),
                  ],
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
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
      ),
    );
  }
}
