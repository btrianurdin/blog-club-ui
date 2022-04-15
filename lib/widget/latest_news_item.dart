import 'package:blogclub/models/latest_news.dart';
import 'package:blogclub/pages/detail_news.dart';
import 'package:blogclub/theme.dart';
import 'package:flutter/material.dart';

class LatestNewsItem extends StatelessWidget {
  final LatestNews latestNews;

  const LatestNewsItem({Key? key, required this.latestNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNews(news: latestNews)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Image.asset(
              latestNews.imgUrl,
              width: 92,
              height: 110,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    latestNews.category,
                    style: blackTextStyle.copyWith(fontSize: 14, color: blueColor),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    latestNews.title,
                    style:
                        regularTextStyle.copyWith(fontSize: 14, color: blackColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
