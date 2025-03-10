import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';

class CardLabel extends StatelessWidget {
  const CardLabel({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(getResponsiveSize(context, 18))),
          margin: EdgeInsets.only(
              left: getResponsiveSize(context, 10),
              top: getResponsiveSize(context, 8)),
          color: Colors.white.withOpacity(0.7),
          child: Padding(
            padding: EdgeInsets.all(
              getResponsiveSize(context, 8),
            ),
            child: Text(title, style: Theme.of(context).textTheme.labelMedium),
          ),
        ),
      ],
    );
  }
}
