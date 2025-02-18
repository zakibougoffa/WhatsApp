import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/common/utils/coloors.dart';
import 'package:solvodev_mobile_structure/feature/auth/widgets/custom_icon_button.dart';
class languageButton extends StatelessWidget {
  const languageButton({ Key? key}) : super(key: key);
void showBottomSheet(BuildContext context){
  showBottomSheet(context){
    return showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                height: 4,
                width: 30,
                decoration:  BoxDecoration(
                  color: MainColors.greyColor(context),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
            ),
        const SizedBox(height: 20),
            Row(
              children: [
                CustomIconButton(onTap: ()=>Navigator.of(context).pop(), icon: Icons.close_outlined,
                ),
                const SizedBox(width: 10,),
                const Text(
                  'App Language',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Divider(color: MainColors.primaryColor.withOpacity(0.3),
            thickness: 5,),
            RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value){},
              activeColor: Coloors.greenDark,
              title: const Text('English'),
              subtitle: Text(
                "(Phone's language)",
                    style: TextStyle(
                      color: MainColors.greyColor(context),
                    ),
              ),
            ),
            RadioListTile(
              value: true,
              groupValue: false,
              onChanged: (value){},
              activeColor: Coloors.greenDark,
              title: const Text('عربية'),
              subtitle: Text(
                "(لغة الهاتف)",
                style: TextStyle(
                  color: MainColors.greyColor(context),
                ),
              ),
            )
          ],
        ),
      );
    }
    );
  }}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MainColors.langBgColor(context),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
          onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: MainColors.langHightlightColor(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,
            vertical: 8,),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              Icon(
                Icons.language,
                color: MainColors.circleColor(context),
              ),
              SizedBox(width: 10,),
              Text('English' ,
                style: TextStyle(color: Coloors.greenDark),),
              SizedBox(width: 10,),
              Icon(
                Icons.keyboard_arrow_down,
                color: MainColors.circleColor(context),
              )
            ],
          ),
        ),

      ),
    );
  }
}
