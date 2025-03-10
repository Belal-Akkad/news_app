import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/features/home/presentation/manager/world_news_cubit/world_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_app_bar_title.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_view_body_builder.dart';
import 'package:news_app/features/home/presentation/views/widgets/switch_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    WorldNewsCubit.get(context).fetchNews('world');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var themeCubit = ThemeCubit.get(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.06,
          title: const CustomAppBarTitle(text1: 'News ', text2: 'App'),
          actions: [
            InkWell(
              borderRadius: BorderRadius.circular(
                getResponsiveSize(context, 22),
              ),
              onTap: () {
                themeCubit.switchTheme();
              },
              child: SwitchButton(),
            ),
          ],
        ),
        body: HomeViewBodyBuilder(),
      ),
    );
  }
}
