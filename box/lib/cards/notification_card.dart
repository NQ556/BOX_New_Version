import 'package:box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFECECEC), width: 2)),
          color: const Color(0xFFF7F7F7)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                "assets/svg/envelope.svg",
                width: 25,
                height: 25,
                colorFilter: const ColorFilter.mode(
                  AppColors.orangeColor,
                  BlendMode.srcIn,
                ),
              ),
            ),

            //
            SizedBox(
              width: 10,
            ),

            //
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tiêu đề thông báo",
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold),
                  ),

                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Tình yêu chỉ là hạt cát, vì đồ ăn đã lấn át tình yêu. Tình yêu chỉ là hạt cát, vì đồ ăn đã lấn át tình yêu.Tình yêu chỉ là hạt cát, vì đồ ăn đã lấn át tình yêu. ",
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          color: Color(0xFF000000)),
                      //maxLines: 5,
                      //overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  //
                  SizedBox(
                    width: 200,
                    child: Text(
                      "12:00",
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          color: AppColors.darkGrayColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
