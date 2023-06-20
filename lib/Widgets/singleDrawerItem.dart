import 'package:flutter/material.dart';
//(#166)-2
class SingleDrawerItem extends StatelessWidget {
  const SingleDrawerItem({
    super.key,
    required this.itemIcon,
    required this.title,
    required this.onTapItem
  });
  final IconData itemIcon;
  final String title;
  final Function onTapItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        onTapItem();
      },
      leading: Icon(
        itemIcon,
        size: 26,
        color: Colors.yellow,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white,fontSize: 22),
      ),
    );
  }
}
