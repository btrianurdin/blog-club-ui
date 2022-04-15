import 'package:blogclub/models/latest_news.dart';
import 'package:blogclub/models/slider_image.dart';
import 'package:blogclub/theme.dart';
import 'package:blogclub/widget/latest_news_item.dart';
import 'package:blogclub/widget/status_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hi, Bagus!",
                style: regularTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 28,
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Explore today's",
            style: blackTextStyle.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 92,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(width: 24),
              StatusItem(imgUrl: 'images/status_photo_1.png'),
              StatusItem(imgUrl: 'images/status_photo_2.png'),
              StatusItem(imgUrl: 'images/status_photo_3.png'),
              StatusItem(imgUrl: 'images/status_photo_4.png'),
              StatusItem(imgUrl: 'images/status_photo_5.png'),
              SizedBox(width: 8),
            ],
          ),
        ),
        const SizedBox(height: 32),
        CarouselSlider(
          items: imageSliderList.map((item) {
            return Stack(
              children: [
                Positioned(
                  left: 20,
                  bottom: 30,
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 15,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Image.asset(item.imgUrl,
                      height: 273, width: 236, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    item.title,
                    style: whiteTextStyle.copyWith(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          }).toList(),
          options: CarouselOptions(
            height: 300,
            enlargeCenterPage: true,
            initialPage: 5,
            viewportFraction: 0.7,
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest News",
                style: blackTextStyle.copyWith(fontSize: 20),
              ),
              Text(
                "More",
                style: regularTextStyle.copyWith(
                  fontSize: 14,
                  color: blueColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        Column(
          children: latestNewsList.sublist(0, 3).map((news) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: LatestNewsItem(latestNews: news),
            );
          }).toList(),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
