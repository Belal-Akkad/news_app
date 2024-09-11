import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_app_bar_title.dart';
import 'package:news_app/features/home/presentation/views/widgets/details_news_view_body.dart';

class DetailsNewsView extends StatelessWidget {
  const DetailsNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    NewsModel model = ModalRoute.of(context)?.settings.arguments as NewsModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const CustomAppBarTitle(text1: 'Detailse ', text2: 'View'),
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        ),
        body: DetailsNewsViewBody(model: model),
      ),
    );
  }
}
