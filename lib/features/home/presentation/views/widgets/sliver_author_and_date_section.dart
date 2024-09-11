import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_formmated_date.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';

class SliverAuthorAndDateSection extends StatelessWidget {
  const SliverAuthorAndDateSection({
    super.key,
    required this.model,
  });
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    var themeCubit = ThemeCubit.get(context);
    bool isDark = themeCubit.isDark;
    return Row(
      children: [
        Text(
          'Author : ',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: isDark ? Colors.orange : Colors.lightBlueAccent,
              ),
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  model.author != null ? model.author! : 'Unavailable',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Date : ',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: isDark ? Colors.orange : Colors.lightBlueAccent,
                  ),
            ),
          ],
        )),
        Text(
          model.publishedAt != null
              ? getFormmatedDate(model.publishedAt!)
              : 'Unavailable',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
