import 'package:blogclub/models/latest_news.dart';
import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/latest_news_item.dart';
import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80, bottom: 20),
              child: Column(
                children: latestNewsList.map((news) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: LatestNewsItem(latestNews: news),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Center(
            child: Text(
              "Articles",
              style: blackTextStyle.copyWith(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
