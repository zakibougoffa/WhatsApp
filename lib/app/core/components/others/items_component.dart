import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';

class ItemsComponent extends StatelessWidget {
  const ItemsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 1.sw,
      child: Card(
        margin: EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreation(
                      Icons.insert_drive_file, Colors.indigo, 'Document'),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(Icons.camera_alt, Colors.pink, 'Camera'),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(Icons.insert_photo, Colors.purple, 'Gallery'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreation(Icons.headset, Colors.orange, 'Audio'),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(Icons.location_pin, Colors.red, 'Location'),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(Icons.person, Colors.blueAccent, 'Contact'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget iconcreation(IconData icon, Color color, String text) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 29,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    ),
  );
}
