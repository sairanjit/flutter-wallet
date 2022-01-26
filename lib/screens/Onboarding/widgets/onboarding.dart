import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/theme/constants.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.currentIndex,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Container(
            height: 350,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: SvgPicture.asset(image),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3, 4].map((entry) {
                      return GestureDetector(
                        onTap: () => {},
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == entry
                                ? primaryColor
                                : backgroundColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: secondaryColor),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
