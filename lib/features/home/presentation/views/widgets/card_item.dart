import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/card_item_model.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/label_card.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.model,
  });

  final CardItemModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var cardNewsCuit = CardNewsCubit.get(context);
        cardNewsCuit.fetchNews(model.title);
        Navigator.pushNamed(context, '/category', arguments: model.title);
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getResponsiveSize(context, 22)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(model.image),
            ),
          ),
          child: CardLabel(title: model.title)),
    );
  }
}
