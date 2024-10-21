import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true, 
              fillColor: Colors.white,
              hintText: 'Search Pancakes',
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Color(0xffDDDADA),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            )
          )
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Breakfast Menu',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: CustomIconButton(
        iconPath: 'assets/icons/Arrow - Left 2.svg',
        onTap: () {
        },
      ),
      actions: [
        CustomIconButton(
          iconPath: 'assets/icons/dots.svg',
          iconSize: 5,
          onTap: () {
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  final double iconSize;

  const CustomIconButton({
    Key? key,
    required this.iconPath,
    required this.onTap,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
        child: SvgPicture.asset(
          iconPath,
          width: iconSize,
          height: iconSize,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
