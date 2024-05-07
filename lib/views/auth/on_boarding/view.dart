import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/app_image.dart';
import '../../../core/design/fill_button.dart';

part 'item_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<_ItemModel> list = [
    _ItemModel(
        image: 'on_boarding1.png',
        title: 'Find Food You Love',
        subTitle:
            'Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep'),
    _ItemModel(
        image: 'on_boarding2.png',
        title: 'Fast Delivery',
        subTitle: 'Fast food delivery to your home, office \nwherever you are'),
    _ItemModel(
        image: 'on_boarding3.png',
        title: 'Live Tracking',
        subTitle:
            'Real time tracking of your food on the app\n once you placed the order'),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.h,
              ),
              AppImage(
                list[currentPage].image,
                height: 295.h,
                width: 226.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    list.length,
                    (index) => Padding(
                          padding: EdgeInsetsDirectional.only(end: 5.w),
                          child: CircleAvatar(
                            backgroundColor:currentPage==index? Theme.of(context).primaryColor:Color(0xffD6D6D6),
                            radius:currentPage==index? 5:3,
                          ),
                        )),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                list[currentPage].title,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff4A4B4D),
                  fontFamily: 'Metropolis',
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                list[currentPage].subTitle,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7C7D7E),
                  fontFamily: 'Metropolis',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 34.h),
                child: FilleButton(
                    text: 'Next',
                    onPress: () {
                      if (currentPage < list.length - 1) {
                        currentPage++;
                        setState(() {});
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
