import 'package:dima/model/community.dart';
import 'package:dima/pages/community_homepage.dart';
import 'package:dima/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunityMapCard extends StatelessWidget {
  final Community community;
  final double? height;
  final double? width;
  final Function(double, double) onLocationTap;

  const CommunityMapCard({
    Key? key,
    required this.community,
    this.height,
    required this.onLocationTap,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690), minTextAdapt: true);
    return InkWell(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => CommunityHomePage(community: community)),
        )
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: height,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.network(
                  community.backgroundImagePath.isNotEmpty
                      ? community.backgroundImagePath
                      : 'https://img.freepik.com/free-photo/2d-graphic-wallpaper-with-colorful-grainy-gradients_23-2151001558.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1718409600&semt=ais_user',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      color: Palette.offWhite,
                      child: const Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Palette.grey),
                        ),
                      ),
                    );
                  },
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return Container(
                      color: Colors.grey,
                      child: Center(child: Icon(Icons.error)),
                    );
                  },
                )),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Palette.grey.withOpacity(0.4),
                        Colors.transparent,
                      ],
                      stops: [0.1, 0.9],
                    ),
                  ),
                ),
                Positioned(
                  top: 10.sp,
                  left: 10.sp,
                  child: CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.mapLocationDot,
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      onPressed: () => onLocationTap(
                          double.parse(community.coordinates.split(',')[0]), 
                          double.parse(community.coordinates.split(',')[1])
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: 10.sp,
                  right: 10.sp,
                  child: Container(
                    padding: EdgeInsets.all(2.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.sp,
                      ),
                    ),
                    child: CircleAvatar(
                      radius:
                          20.sp, // Adjust the size of the CircleAvatar as needed
                      backgroundImage: NetworkImage(
                        community.profileImagePath,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Text(
                      community.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}