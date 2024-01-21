/*

© 2024 B1 Digital

User         : mehmetalicubukcu
Project Name : nutrition_app 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 21.01.2024 23:22
Notes        : 

*/

part of '../diet_list_page.dart';

class _ListItem extends StatelessWidget {
  const _ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppMargin.mediumOnlyBottom,
      padding: AppPadding.mediumAll,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _header(),
          const SizedBox(height: AppSize.medium),
        ],
      ),
    );
  }

  Row _header() {
    return Row(
          children: [
            const Expanded(
              child: Text(
                "BREAKFAST",
                style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeightManager.semiBold,
                  color: AppColors.primary,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Assets.svg.burnIcon.svg(
              colorFilter: const ColorFilter.mode(
                Colors.red,
                BlendMode.srcATop,
              ),
            ),
            const SizedBox(width: AppSize.small),
            const Text(
              "2000",
              style: TextStyle(
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
            const Text(
              " kcal",
              style: TextStyle(
                fontSize: FontSize.s12,
              ),
            ),
          ],
        );
  }
}
