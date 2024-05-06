part of '../components/../view.dart';
class Item extends StatelessWidget {
  final Color color;
  final String image,text;
  final double bottomSpace;
  const Item({super.key, required this.color, required this.image, required this.text,  this.bottomSpace=28});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: bottomSpace.h),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.r),
          color: color,
        ),
        child: ListTile(
          leading: AppImage(image,height: 16.h,width: 8.w,),
          title: Text(text,style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Metropolis',
              color: Colors.white
          ),),
        ),
      ),
    );
  }
}
