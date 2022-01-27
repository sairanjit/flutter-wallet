import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/theme/constants.dart';
import 'package:flutter_wallet/widgets/buttons/outline_button.dart';
import 'package:flutter_wallet/widgets/buttons/primary_button.dart';
import 'package:flutter_wallet/widgets/buttons/transparent_button.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.currentIndex,
    required this.onNextPress,
    required this.onSkipPress,
    required this.onDonePress,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  final int currentIndex;
  final void Function() onNextPress;
  final void Function() onSkipPress;
  final void Function() onDonePress;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: SvgPicture.asset(image),
              ),
              currentIndex < 4
                  ? Positioned(
                      top: 50,
                      right: 40,
                      child: TransparentButton(
                        title: 'Skip',
                        onPress: onSkipPress,
                      ),
                    )
                  : Container(),
            ],
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3, 4].map((entry) {
                        return GestureDetector(
                          onTap: () => {},
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
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
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  currentIndex < 4
                      ? OutlinerButton(
                          title: 'Next Step',
                          onPress: onNextPress,
                        )
                      : PrimaryButton(
                          title: 'Lets Get Started',
                          onPress: onDonePress,
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
