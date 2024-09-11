import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    var themeCubit=ThemeCubit.get(context);
    bool isDark=themeCubit.isDark;
    return Center(
      child: SizedBox(
        height: getResponsiveSize(context, 45),
        width: getResponsiveSize(context, 45),
        child: CircularProgressIndicator(
          strokeWidth: getResponsiveSize(context, 4),
          color: isDark? Colors.orange:Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
