import 'package:flutter/material.dart';
import 'package:flutter_wallet/theme/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          minimumSize: const Size(200, 46),
          backgroundColor: primaryColor,
          shape: const StadiumBorder(),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
