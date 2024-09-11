import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/sliver_author_and_date_section.dart';

class SliverMainSectionBody extends StatelessWidget {
  const SliverMainSectionBody({
    super.key,
    required this.model,
  });
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title ?? 'Unavailable',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        Text('Description :', style: Theme.of(context).textTheme.titleMedium),
        Text(model.description ?? 'Unavailable',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 12),
        Text('Content :', style: Theme.of(context).textTheme.titleMedium),
        Text(model.content ?? 'Unavailable',
            style: Theme.of(context).textTheme.bodyMedium),
         Expanded(child: SizedBox(height: getResponsiveSize(context, 30))),
        SliverAuthorAndDateSection(model: model),
      ],
    );
  }
}
