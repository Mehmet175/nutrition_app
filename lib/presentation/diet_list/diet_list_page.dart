/*

© 2024 B1 Digital

User         : mehmetalicubukcu
Project Name : nutrition_app 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 21.01.2024 13:10
Notes        : 

*/

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_app/app/reource/assets.gen.dart';
import 'package:nutrition_app/app/resource/color_manager.dart';
import 'package:nutrition_app/app/resource/font_manager.dart';
import 'package:nutrition_app/app/resource/value_manager.dart';

part 'utils/_app_bar.dart';
part 'utils/_list_item.dart';

class DietListPage extends StatelessWidget {
  const DietListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: _AppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSize.medium),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: AppPadding.mediumAll,
              itemCount: 10,
              itemBuilder: (context, index) => _ListItem(),
            ),
          ),
        ],
      ),
    );
  }
}
