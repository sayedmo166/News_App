import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App__Theme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.onItemSelection});
  final void Function(DrawerItem) onItemSelection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w,
      child: Column(
        children: [
          Container(
            height: 150.h,
            width: double.infinity,
            color: AppTheme.primary,
            child: Center(
              child: Text(
                'News App!',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppTheme.white, fontSize: 28.sp),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 12, top: 12),
              color: AppTheme.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => {onItemSelection(DrawerItem.categories),
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.menu,
                          size: 32,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Categories',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: AppTheme.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: ()=> {onItemSelection(DrawerItem.settings)},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          size: 32,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Settings',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: AppTheme.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
enum DrawerItem{
  categories,
  settings;
}


