import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  int _currentIndex =2;
  @override
  Widget build(BuildContext context) {
return WillPopScope(
  onWillPop: ()=> _onBackButtonPressed(context),
  child: Scaffold(
    body: SingleChildScrollView(
      child: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 50),
          //   child: Container(
          //     height: 250,
          //     width: MediaQuery.of(context).size.width,
          //          child: Card(
          //            color: Color(0xffe2e4e3),
          //            child: Center(child: Text('Update',style: TextStyle(fontSize:16),)
          //          ),
          //      ),
          //
          // ),
          // ),
          // ElevatedButton(onPressed: (){}, child: Text('NEXT',style: TextStyle(color: Colors.white,fontSize: 20 )),
          //   style: ButtonStyle(
          //     fixedSize: MaterialStateProperty.all<Size>(
          //       const Size(100, 40),),
          //     backgroundColor: MaterialStateProperty.all<Color>(
          //         Colors.red),
          //     foregroundColor: MaterialStateProperty.all<Color>(
          //         Colors.white),
          //     shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
          //       RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
          //       ),
          //     ),
          //
          //   ),
          // ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top:45,left: 8,right: 8),
            child: Card(
              elevation: 10,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/meeting.png"),
                    fit: BoxFit.cover,
                  ),
                    color: Color(0xffe2e4e3),
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Daily Update'),
                      subtitle: Text('11:00 To 11:30'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    SizedBox(height: 20,),
                    Row(
      
                      children: [
      
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100,bottom: 10),
                      child: ElevatedButton(onPressed: _launchURLApp, child: Row(
                        children: [
                          Icon(Icons.video_call),
      
                          Text('Join Now',style: TextStyle(color: Colors.white,fontSize: 20 )),
      
                        ],
                      ),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(160, 40),),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                            ),
                          ),
      
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(top: 260),
           child: Container(
              child:  SizedBox(
               height: 100,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 10,
                 itemBuilder: (context, index){
                   return Container(
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                       color: Colors.black
                     ),
                     //alignment: Alignment.center,
                     margin: EdgeInsets.only(left: 10,right: 10),
                    // color: Colors.deepOrangeAccent,
                     width: 100,
                     child: Text('${index +1}'),
                   );
                 },
               ),
             ),
           ),
           ),
          Padding(
            padding: const EdgeInsets.only(top: 360),
            child: Container(

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/webdev.png"),
                    fit: BoxFit.fill
                  ),
                color: Colors.grey
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,

              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     // Padding(
                     //   padding: const EdgeInsets.only(right: 10,top: 50),
                     //   child: Text('Web Development',style: TextStyle(fontSize: 20),),
                     // ),
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(right: 4),
                       child: ElevatedButton(onPressed: (){},
                         child: Row(
                         children: [
                          Text('Web Team',style: TextStyle(color: Colors.white,fontSize: 15 )),

                           Icon(Icons.arrow_forward_ios,size:15,),
                         ],
                       ),
                         style: ButtonStyle(
                           fixedSize: MaterialStateProperty.all<Size>(
                             const Size(140, 30),),
                           backgroundColor: MaterialStateProperty.all<Color>(
                               Colors.black),
                           foregroundColor: MaterialStateProperty.all<Color>(
                               Colors.white),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                             ),
                           ),

                         ),
                       ),
                     ),

                   ],

                  ),

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Ideas.png"),
                  fit: BoxFit.fill
                ),
              ),
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Text('Research Team',style: TextStyle(color: Colors.white,fontSize: 15 )),

                              Icon(Icons.arrow_forward_ios,size:15,),
                            ],
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(170, 30),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],

                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Digital.png"),
                  fit: BoxFit.fill
                )
              ),
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
              alignment: Alignment.center,
            //  color: Colors.amber.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      SizedBox(height: 0,),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Text('Digital Team',style: TextStyle(color: Colors.white,fontSize: 15 )),

                              Icon(Icons.arrow_forward_ios,size:15,),
                            ],
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(160, 30),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],

                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1020),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/newplan.png"),
                  fit: BoxFit.fill
                )
              ),
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
              alignment: Alignment.center,
             // color: Colors.amber.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Text('Head Team',style: TextStyle(color: Colors.white,fontSize: 15 )),
                              Icon(Icons.arrow_forward_ios,size:15,),
                            ],
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(150, 30),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1240),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/onlineshoping.png"),
                  fit: BoxFit.fill,
                ),
              ),
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
              alignment: Alignment.center,
              //color: Colors.amber.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Text('Selling Team',style: TextStyle(color: Colors.white,fontSize: 15 )),

                              Icon(Icons.arrow_forward_ios,size:15,),
                            ],
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(160, 30),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],

                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1460),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/appdev.png"),
                  fit: BoxFit.fill,
                ),
              ),
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
              alignment: Alignment.center,
              //color: Colors.amber.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Text('App Team',style: TextStyle(color: Colors.white,fontSize: 15 )),

                              Icon(Icons.arrow_forward_ios,size:15,),
                            ],
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(140, 30),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>( // manage the app radius
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],

                  ),

                ],
              ),
            ),
          ),
          ],
        ),
    ),
    ///bottom Buttton
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.phone,color: Colors.black,),
            label: 'Phone',
            backgroundColor: Color(0XFF296D8C)),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined,color: Colors.black,),
            label: 'Chat',
            backgroundColor: Color(0XFF296D8C)),
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
            backgroundColor: Color(0XFF296D8C)),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add,color: Colors.black,),
            label: 'Notification',
            backgroundColor: Color(0XFF296D8C)),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),
            label: 'Profile',
            backgroundColor: Color(0XFF296D8C)),
      ],
      ///Use for select the Button Icon
      onTap: (index){
        setState(() {
          _currentIndex = index;
          if( index==0 ){
            //Navigator.pushNamed(context,"#");
          }
          if(index==1){
          Navigator.pushNamed(context,"chat");
          }
          if(index==2){
            // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            // content: Text("Sending Message")));
          }
          if(index==3){
            Navigator.pushNamed(context,"notification");
          }
          if(index==4){
            Navigator.pushNamed(context,"profile");
          }
        }
        );
      },
    ),
  ),
);
  }
}
_launchURLApp() async {
  var url = Uri.parse("https://meet.google.com/qud-ubje-bgf");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
Future <bool>_onBackButtonPressed(BuildContext context) async {
  bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Really ??'),
          content: const Text(" Do  you want to close the app??"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Yes"),
            ),
          ],
        );
      }
  );
  return exitApp ?? false;
}