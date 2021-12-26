import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget listTile({required IconData icon , required String title }){
     return ListTile(
       leading: Icon(icon , size: 32.0,),
       title: Text(title,style: TextStyle(color: Colors.black54),),
     );
  }
  Widget singleProducts(){

    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.0),
      height: 230.0,
      width: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffd9dad9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              child: Image(
                image: AssetImage('assets/IM2.png'),
                fit: BoxFit.cover,
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10 , vertical: 5),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Fresh Basil',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Text('50\$/50 gram',style: TextStyle(color: Colors.grey )),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 3.0),
                            height: 30.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Text('50 Gram',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                                ),
                                Center(
                                  child: Icon(Icons.arrow_drop_down , size: 22.0 , color: Colors.deepOrange,),                                         )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 5.0,),

                        Expanded(
                          child: Container(
                            height: 30.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.grey,),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.remove,size: 15.0,color: Colors.orange,),
                                Text('1',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                                Icon(Icons.add , size: 15.0,color: Colors.orange,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              )

          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      drawer:  Drawer(
        child: Container(
          color: const Color(0xffd1ad17),
           child: ListView(
             children: [
               DrawerHeader(
                 child: Row(
                   children: [
                     const CircleAvatar(
                       backgroundColor: Colors.white54,
                       radius: 43.0,
                       child: CircleAvatar(
                         backgroundColor: Colors.red,
                         radius: 40.0,
                       ),
                     ),
                     const SizedBox(width: 20.0,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:  [
                         const Text('Welcome Guest'),
                         const SizedBox(height: 7.0,),
                         Container(
                           height:30.0,
                           child: OutlineButton(
                             onPressed: (){},
                             child: const Text('Login'),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                               side: const BorderSide(width: 2.0)
                             ),
                           )
                         )

                       ],
                     )
                   ],
                 ) ,
               ),
               listTile(icon: Icons.home_outlined, title:"Home" ),
               listTile(icon: Icons.shop_outlined, title:"Review Cart" ),
               listTile(icon: Icons.person_outlined, title:"My Profile" ),
               listTile(icon: Icons.notifications_outlined, title:"Notification" ),
               listTile(icon: Icons.favorite_outlined, title:"Rating & Review" ),
               listTile(icon: Icons.copy_outlined, title:"Wishlist" ),
               listTile(icon: Icons.home_outlined, title:"Raise a Complaint" ),
               listTile(icon: Icons.format_quote_outlined, title:"FAQs" ),

               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                 height: 350.0,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text('Contact Support',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                     const SizedBox(height: 10.0,),
                     Row(
                       children: const [
                         Text('Call us:'),
                         Text('0766226030',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                       ],
                     ),
                     const SizedBox(height: 5.0,),
                     Row(
                       children: const [
                         Text('Mail us:'),
                         SizedBox(width: 10.0,),
                         Text('vimarshanabandara76@gmail.com',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                       ],
                     )
                   ],
                 ),
               )

             ],
           ),
        )

      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffd6b738),
        title: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 17.0),),
        actions: const [
          CircleAvatar(
            radius:12.0,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search , size: 17.0, color: Colors.black, ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius:12.0,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop , size: 17.0, color: Colors.black, ),
            ),
          )
          
          

        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical:10.0 , horizontal:10.0  ),
        child:ListView(
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage('assets/IM1.png'),
                  fit: BoxFit.cover,
                )
              ),
               child: Row(
                 children: [
                   Expanded(
                     flex: 2,
                     child: Container(
                       color: Colors.red,
                       child: Column(
                         children:  [
                          Padding(
                            padding: EdgeInsets.only(right: 120.0 ,bottom: 10.0 ),
                            child:  Container(
                              height: 40.0,
                              width: 100.0,
                              decoration: const BoxDecoration(
                                  color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.0),
                                  bottomLeft:  Radius.circular(50.0),
                                )
                              ),
                              child: const Center(
                                child:  Text('FMS',style:   TextStyle(

                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10.0,
                                        offset: Offset(3,3)
                                    )
                                  ],color: Colors.white,
                                  fontSize: 20.0,


                                ),),
                              )
                            )
                          ),
                            Text('30% Off ',style:  TextStyle(
                             fontSize: 40.0,
                             color: Colors.green[100],
                              fontWeight: FontWeight.bold


                           ),),

                           const Padding(
                             padding: EdgeInsets.only(left: 10.0),
                             child: Text('On all vegetables products',style:  TextStyle(
                                 fontSize: 16.0,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold


                             ),),
                           )

                         ],
                       ),
                     ) ,
                   ),
                   Expanded(
                     child: Container() ,
                   )
                 ],
               ),
            ),

             Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs Seasonings'),
                  Text('View all',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Fresh Fruits'),
                  Text('View all',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),

          ],
        ),
      )

    );
  }
}
