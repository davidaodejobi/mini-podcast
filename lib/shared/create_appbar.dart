import 'package:flutter/material.dart';

import 'widgets/appbar_card_wih_icon.dart';

PreferredSizeWidget createAppBar(
  String title,
  BuildContext context,
) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarCardwithIcon(
                iconButton: IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {},
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {},
                  tooltip: 'search',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
