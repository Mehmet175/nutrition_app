/*

© 2024 B1 Digital

User         : mehmetalicubukcu
Project Name : nutrition_app 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 21.01.2024 13:10
Notes        : 

*/

part of '../diet_list_page.dart';

class _AppBar extends StatefulWidget implements PreferredSizeWidget {
  _AppBar({super.key});

  @override
  State<_AppBar> createState() => _AppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(140);
}

class _AppBarState extends State<_AppBar> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();

  DateTime _focusDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SafeArea(
            child: Text(
              "Diyet Listesi",
              style: TextStyle(
                color: AppColors.white,
                fontSize: FontSize.s20,
                fontWeight: FontWeightManager.medium,
              ),
            ),
          ),
          const SizedBox(height: AppSize.small),
          EasyInfiniteDateTimeLine(
            showTimelineHeader: false,
            dayProps: EasyDayProps(
              height: 80,
              width: 45,
              borderColor: Colors.transparent,
              activeDayStyle: DayStyle(
                borderRadius: 60,
                dayNumStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: FontSize.s12,
                ),
                dayStrStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: FontSize.s12,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              dayStructure: DayStructure.dayStrDayNum,
              inactiveDayStyle: DayStyle(
                dayNumStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: FontSize.s12,
                ),
                dayStrStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: FontSize.s12,
                ),
                monthStrStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: FontSize.s12,
                ),
              ),
            ),
            locale: "tr_TR",
            controller: _controller,
            firstDate: DateTime(2023),
            focusDate: _focusDate,
            lastDate: DateTime(2023, 12, 31),
            activeColor: AppColors.secondary,
            onDateChange: (selectedDate) {
              setState(() {
                _focusDate = selectedDate;
              });
            },
          ),
        ],
      ),
    );
  }
}
