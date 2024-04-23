import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
          radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 32,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 32,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors=const[
    Color(0xff34F6F2),
    Color(0xff78E3FD), 
    Color(0xffD1F5FF),
    Color(0xffC0C1C1), 
    Color(0xff7D53DE)




  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 3,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex=index;
                  setState(() {
                    
                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex==index,
                ),
              ));
        },
      ),
    );
  }
}
