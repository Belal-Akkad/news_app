import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeCubit = ThemeCubit.get(context);
    bool darkMode = themeCubit.isDark;
    return Container(
      padding: EdgeInsets.all(getResponsiveSize(context, 4)),
      decoration: BoxDecoration(
        border: Border.all(
          width: getResponsiveSize(context, 1),
          color: darkMode ? Colors.white : Colors.black,
        ),
        borderRadius: BorderRadius.circular(getResponsiveSize(context, 8)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.lightBlueAccent,
            size: getResponsiveSize(context, 20),
          ),
          const SizedBox(width: 6),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.orange : Colors.grey,
            size: getResponsiveSize(context, 20),
          )
        ],
      ),
    );
  }
}
