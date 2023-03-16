import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/app_theme.dart';

class AppBarProducts extends StatelessWidget {
  final ValueSetter<BuildContext> onMenuTap;
  const AppBarProducts({
    super.key,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 8, 4),
      child: Row(
        children: [
          IconButton(
            onPressed: () => onMenuTap(context),
            icon: SvgPicture.asset(Assets.svg.menu),
          ),
          const SizedBox(width: 18),
          //TODO: Change to Search field
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: context.colorScheme.background,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                child: SvgPicture.asset(Assets.svg.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
