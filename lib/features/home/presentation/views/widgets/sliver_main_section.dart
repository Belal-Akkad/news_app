import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/sliver_main_section_body.dart';

class SliverMainSection extends StatelessWidget {
  const SliverMainSection({
    super.key,
    required this.model,
  });
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    var myCubit = ThemeCubit.get(context);
    bool isDark = myCubit.isDark;
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Container(
        padding: EdgeInsets.all(
          getResponsiveSize(context, 16),
        ),
        decoration: BoxDecoration(
          color: isDark ? const Color(0xff6F6F6F) : const Color(0xffE4E4E4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getResponsiveSize(context, 22)),
            topRight: Radius.circular(getResponsiveSize(context, 22)),
          ),
        ),
        child: SliverMainSectionBody(model: model),
      ),
    );
  }
}
