import 'package:flutter/material.dart';
import 'package:payirseai/data/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Widget ? title;
  final bool hideBack;
  const BasicAppBar({
    this.title,
    this.hideBack = false,
    super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text('') ,
      leading: hideBack ? null : IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color:context.isDarkMode ? Colors.white.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black ,
          ),
        ) ,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}