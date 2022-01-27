import 'package:flutter/material.dart';
import 'package:flutter_wallet/theme/constants.dart';

class OutlinerButton extends StatelessWidget {
  const OutlinerButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(200, 46),
          shape: const StadiumBorder(),
          side: const BorderSide(
            width: 1.0,
            color: primaryColor,
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
