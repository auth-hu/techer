import 'package:flutter/material.dart';
import 'package:techer/const/color.dart';
import 'package:techer/const/mmunes.dart';
import 'package:techer/phone/veiw/home/487/component/listveiw.dart';

void addShortCut(BuildContext context, double widthscreen) {
  showDialog(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        backgroundColor: white,
        surfaceTintColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(vertical: 98, horizontal: 32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(dialogContext);
                  },
                  icon: const Icon(Icons.close),
                  color: gray,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Column(
                      children: [
                        Listveiwshortcut(
                          widthscreen: widthscreen,
                          title: "الغياب",
                          addColor: red.withValues(alpha: 0.7),
                          dotColor: red,
                          icon: Icons.person_off,
                          iconColor: red,
                          onTap: (){
                            mainShortCutList.add(
                              {
                                'title': 'الغياب',
                                'addColor': red.withValues(alpha: 0.7),
                                'dotColor': red,
                                'icon':  Icons.person_off,
                                'iconColor': red
                              }
                            );
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
