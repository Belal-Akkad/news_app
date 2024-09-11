import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_news_view_builder.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_app_bar_title.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context)?.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.06,
          title: CustomAppBarTitle(text1: category, text2: ' News'),
        ),
        body:  CategoryNewsViewBuilder(categorName: category,),
      ),
    );
  }
}
