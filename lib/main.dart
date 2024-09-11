import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utilities/my_them_data.dart';
import 'package:news_app/core/utilities/setup_service_locator.dart';
import 'package:news_app/features/home/data/home_repository_implementation.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/general_news_cubit/world_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_state.dart';
import 'package:news_app/features/home/presentation/views/category_news_view.dart';
import 'package:news_app/features/home/presentation/views/home_view.dart';
import 'package:news_app/features/home/presentation/views/details_news_view.dart';

void main() async {
  setupServiceLoacator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => WorldNewsCubit(
              homeRepository: getIt.get<HomeRepositoryImplementation>()),
        ),
        BlocProvider(
          create: (context) => CardNewsCubit(
              homeRepository: getIt.get<HomeRepositoryImplementation>()),
        )
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          var themeCubit = ThemeCubit.get(context);
          return MaterialApp(
            routes: {
              '/home': (context) => const HomeView(),
              '/details': (context) => const DetailsNewsView(),
              '/category': (context) => const CategoryNewsView(),
            },
            debugShowCheckedModeBanner: false,
            theme: MyThemeData.lightTheme(context),
            darkTheme: MyThemeData.darkTheme(context),
            themeMode: themeCubit.isDark ? ThemeMode.dark : ThemeMode.light,
            home: HomeView(),
          );
        },
      ),
    );
  }
}
