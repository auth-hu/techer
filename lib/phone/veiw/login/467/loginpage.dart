import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/component/mainbutton.dart';
import 'package:techer/const/bool.dart';
import 'package:techer/const/color.dart';
import 'package:techer/const/controllers.dart';
import 'package:techer/phone/veiw/home/487/home.dart';
import 'package:techer/phone/veiw/login/467/component/inputform.dart';

class Loginpage487 extends StatefulWidget {
  const Loginpage487({super.key});

  @override
  State<Loginpage487> createState() => _Loginpage487State();
}

class _Loginpage487State extends State<Loginpage487> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double widthscreen = constraints.maxWidth;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      width: 350,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.all(0),
                              child: Text(
                                "المعلم",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rubik(
                                  color: darkgreen,
                                  fontSize: widthscreen * .05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: secgreen,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Icon(Icons.person, size: 45, color: white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: gray,
                            blurRadius: 25,
                            offset: Offset(10, 15),
                            spreadRadius: .3
                          )
                        ],
                        color: icegreen,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: secgreen, width: 1.2),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 32),
                          Form(
                            key: loginformkey,
                            onChanged: (){
                              setState(() {
                                loginactivebtn = loginformkey.currentState!.validate();
                              });
                            },
                            child: Column(
                              children: [
                                Inputform(
                                  showpass: false,
                                  text: ":البريد الألكتروني",
                                  widthscreen: widthscreen,
                                  icon: Icons.email_rounded,
                                  blind: false,
                                  controller: emailController,
                                  validator: (value){
                                    if(value == null || value.isEmpty){
                                      return 'لا يجب أن يكون الحقل فارغاً';
                                    }else if(!value.contains("@")){
                                      return 'يجب ان يحنوي على الايميل';
                                    }else if(RegExp(r'[\u0600-\u06FF]').hasMatch(value)){
                                      return 'يجب ان لا يحتوي الحقل على الحروف العربية';
                                    }
                                    return null;
                                  },
                                ),

                                Inputform(
                                  showpass: true,
                                  text: ":كلمة المرور",
                                  widthscreen: widthscreen,
                                  icon: Icons.wb_cloudy_rounded,
                                  blind: true,
                                  controller: passwordController,
                                  validator: (value){
                                    if(value == null || value.isEmpty){
                                      return 'لا يجب أن يكون الحقل فارغاً';
                                    }else if(value.length <= 7){
                                      return 'يجب ان يحتوي الحقل على 8 حروف على الاقل';
                                    }else if(RegExp(r'[\u0600-\u06FF]').hasMatch(value)){
                                      return 'يجب ان لا يحتوي الحقل على الحروف العربية';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                          Mainbutton(onPressed: () {
                            if(emailController.text == "auth@admin.com" && passwordController.text == "adminadmin"){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),));
                            }
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
