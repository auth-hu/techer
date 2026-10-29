import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';
import 'package:techer/const/mmunes.dart';
import 'package:techer/phone/veiw/home/487/component/listveiw.dart';

class Addshort extends StatefulWidget {
  final double widthscreen;
  final VoidCallback onAdded; // جديد: يستدعيه بعد الإضافة

  const Addshort({
    super.key,
    required this.widthscreen,
    required this.onAdded,
  });

  @override
  State<Addshort> createState() => _AddshortState();
}

class _AddshortState extends State<Addshort> {
  void _openDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: white,
          surfaceTintColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(
            vertical: 98,
            horizontal: 32,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    icon: const Icon(Icons.close),
                    color: gray,
                  ),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Listveiwshortcut(
                        widthscreen: widget.widthscreen,
                        title: "الغياب",
                        addColor: red.withValues(alpha: 0.7),
                        dotColor: red,
                        icon: Icons.person_off,
                        iconColor: red,
                        onTap: () {
                          mainShortCutList.add({
                            'title': 'الغياب',
                            'addColor': red.withValues(alpha: 0.7),
                            'dotColor': red,
                            'icon': Icons.person_off,
                            'iconColor': red,
                          });

                          Navigator.pop(dialogContext);
                          widget.onAdded(); // الأب يعيد البناء
                        },
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: gray.withValues(alpha: 0),
      onTap: _openDialog,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: gray.withValues(alpha: .3), width: 2),
        ),
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "أضف اختصار",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: widget.widthscreen * 0.035,
                      color: gray.withValues(alpha: .7),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: gray.withValues(alpha: .3),
                  ),
                  child: DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      radius: const Radius.circular(12),
                      color: gray.withValues(alpha: .5),
                      strokeWidth: 2,
                      dashPattern: const [10, 8],
                    ),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 6,
                      ),
                      child: Icon(
                        Icons.add,
                        color: gray.withValues(alpha: .7),
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}