import 'package:flutter/material.dart';
import 'package:fvs/constants/AssetsConstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(height: 450,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/Frame 1.png"),fit: BoxFit.fill)
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                    onTap: () {
                      
                    },
                    child: Image.asset(AssetsConstants.ProficeImage,height: 70,),
                  ),
                  Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 2, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi there,Hilo',
                              style: TextStyle(color: Colors.white,fontSize:23),
                              
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_sharp,color: Colors.white,size: 25,),
                                  Text("Kingston, Jamaica",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Image.asset(AssetsConstants.GlobePic),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                       onTap: () {
                        
                      },
                      child: Image.asset(AssetsConstants.NotificationIcon1),
                    ),
                  )
                ],
              )
            ],
          ),),
          SizedBox(height: 10,),
          Container(
            child: Center(child: Text("hloooo")),
          )
        ],
      ),
    );
  }
}
