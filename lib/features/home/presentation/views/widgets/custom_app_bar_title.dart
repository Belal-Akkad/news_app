import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    var themeCubit=ThemeCubit.get(context);
    bool isDark=themeCubit.isDark;
    return Row(
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          text2,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color:isDark? Colors.orange:Colors.lightBlueAccent),
        ),
      ],
    );
  }
}
