import 'package:flutter/material.dart';
import '../theme.dart';


class PageHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
          
                Text(
                  "Picture Profile",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
          
                  SizedBox(
                  height: 50,
                ),
          
                Image.asset("assets/images/primary.png",
                height: 140,),
          
                SizedBox(
                  height: 16,
                ),
          
                Text(
                  "Anne Margaritha",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primaryColor
                  ),
                ),
          
                SizedBox(
                  height: 4,
                ),
          
                Text(
                  "UX Designer",
                  style: TextStyle(
                    fontSize: 16,
                    color: grayColor,
                  ),
                ),
          
                SizedBox(
                  height: 70,
                ),
          
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      "assets/images/item1.png",
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/item2.png",
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/item3.png",
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/item4.png",
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/item5.png",
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/item6.png",
                      height: 80,
                    ),
                  ],
                ),
          
                SizedBox(
                  height: 70,
                ),
          
                Container(
                  width: 224,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: whiteColor,
                    onPressed: (){
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 50,
                              horizontal: 60
                            ),
                            height: 290,
                            child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "Update Photo",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor
                                      ),
                                    ),

                                    SizedBox(
                                      height: 11,
                                    ),

                                    Text(
                                      'You are only able to change \n the picture profile once',
                                      // textAlign: const TextAlign,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: grayColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),

                                    SizedBox(
                                      height: 30,
                                    ),

                                    Container(
                                      height: 60,
                                      width: 253,
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        color: orangeColor,
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          );
                      }
                    );
                  },
                    child: Text(
                      "Update Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: primaryColor
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 76,
                ),
              ],
            ),
          ),
        )),
    );
  }
}