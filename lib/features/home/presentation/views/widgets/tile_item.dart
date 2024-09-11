import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_cached_network_image.dart';

class TileItem extends StatelessWidget {
  const TileItem({
    super.key,
    required this.model,
  });
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    var myCubit = ThemeCubit.get(context);
    bool isDark = myCubit.isDark;
    return GestureDetector(
       onTap: () => Navigator.pushNamed(context, '/details',
                      arguments: model),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getResponsiveSize(context, 12))),
        elevation: 0,
        color: isDark ? const Color(0xff373737) : const Color(0xffE4E4E4),
        child: Padding(
          padding: EdgeInsets.all(
            getResponsiveSize(context, 10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Center(
                  child: CustomCachedNetworkImage(imageUrl: model.urlToImage),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                model.title ?? "Unavailable",
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: getResponsiveSize(context, 16)),
              ),
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                model.description ?? 'Unavailable',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: getResponsiveSize(context, 14)),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'See More...',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color:isDark? Colors.orange :Colors.lightBlueAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
