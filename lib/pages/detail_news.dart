import 'package:blogclub/models/latest_news.dart';
import 'package:blogclub/theme.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatelessWidget {
  final LatestNews news;

  const DetailNews({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          AppBar().preferredSize.height,
        ),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "News",
            style: blackTextStyle,
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 32,
              color: blackColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: blackColor,
                size: 32,
              ),
            ))
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(
                    news.title,
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('images/status_photo_1.png', width: 38),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.author,
                              style: regularTextStyle.copyWith(fontSize: 14),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "2m ago",
                              style: regularTextStyle.copyWith(
                                  fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.ios_share, size: 24, color: blueColor),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.bookmark_outline, size: 24, color: blueColor),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(height: 200),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    news.imgUrl,
                    height: 219,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: whiteColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 30,
                  ),
                  child: Text(
                    news.content,
                    style: regularTextStyle.copyWith(
                      color: blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
