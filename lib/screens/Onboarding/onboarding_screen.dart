import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'onboarding_data.dart';
import 'widgets/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  if (index == _current) {
                    _current = _current + 1;
                  } else if (_current > index) {
                    _current = _current - 1;
                  }
                });
              },
            ),
            items: onboardingData.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return OnboardingWidget(
                    title: item.title,
                    description: item.description,
                    image: item.image,
                    currentIndex: _current,
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
