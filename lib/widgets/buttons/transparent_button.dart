import 'package:flutter/material.dart';
import 'package:flutter_wallet/theme/constants.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(
        'Skip',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
