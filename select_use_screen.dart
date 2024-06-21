import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const SelectUseScreen());
}

class SelectUseScreen extends StatelessWidget {
  const SelectUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SelectUseScreen",
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  SafeArea(
        child: Scaffold(
          body:  Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container( height: 120,
        width: 120,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(100)
          ),
          
          
          child:
          Icon(Icons.check,color: Colors.teal[300], size: 100,)
        ),
        Container(height: 10,),
        const Text(" حدد الإهتمام",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ,)),

        Container(height: 50,),
   
Stack(
  children: [

       Container(
        height: 120,
        width: 370,
        
          margin:const EdgeInsets.only(left: 30,right: 10),
        decoration: BoxDecoration(
           color: Colors.teal[300],
           borderRadius: BorderRadius.circular(5),
           boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3) //offset ..Creates a box shadow.
           ]
           ),
           child: MaterialButton(
            onPressed: (){Navigator.pushNamed(context, '/tips_screen');},
           child: const Text(
            "            التنبيه أثناء القياد"
            ,style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white),
              ),
           ),
        ),
    


      Container(
        margin:const EdgeInsets.only(top: 10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(100),
                        boxShadow:const [
            BoxShadow(color: Colors.black26, offset: Offset(1, 1), blurRadius: 1),
           ]
        ),
       

      ),
                 Container(
                  margin: const EdgeInsets.only(top: 18,left: 7),
                  height: 85,
                  width: 85,
         
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(100)

          ),
                  child: const Icon(Icons.car_rental_sharp,size: 50,),
          
          
        ),
  ],
),

Container(
  padding: const EdgeInsets.only(top: 30),
  child: Stack(
    children: [

         Container(
          height: 120,
          width: 370,
          
            margin: const EdgeInsets.only(left: 30,right: 10),
          decoration: BoxDecoration(
             color: Colors.teal[300],
             borderRadius: BorderRadius.circular(5),
             boxShadow: const [
              BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
             ]
             ),
             child: MaterialButton(
              onPressed: (){Navigator.pushNamed(context, '/camera_b_screen');},
             child: const Text(
              "            تحديد سلوك الوجه"
              ,style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white),
                ),
             ),
          ),
      


        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
              BoxShadow(color: Colors.black26, offset: Offset(1, 1), blurRadius: 1),
             ]
          ),
         

        ),
                   Container(
                    margin: const EdgeInsets.only(top: 18,left: 7),
                    height: 85,
                    width: 85,
           
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(100)

            ),
                    child: const Icon(Icons.add_reaction_rounded,size: 50,),
            
            
          ),
    ],
  ),
  
),
Container(
  padding: const EdgeInsets.only(top: 30),
  child: Stack(
    children: [

         Container(
          height: 120,
          width: 370,
          
            margin: const EdgeInsets.only(left: 30,right: 10),
          decoration: BoxDecoration(
             color: Colors.teal[300],
             borderRadius: BorderRadius.circular(5),
             boxShadow: const [
              BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
             ]
             ),
             child: MaterialButton(onPressed: (){
                Navigator.pushNamed(context, '/camera_class');
             },
             child: const Text(
              "            حمل من المعرض"
              ,style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white),
                ),
             ),
          ),
      


        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
              BoxShadow(color: Colors.black26, offset: Offset(1, 1), blurRadius: 1),
             ]
          ),
         

        ),
                   Container(
                    margin: const EdgeInsets.only(top: 18,left: 7),
                    height: 85,
                    width: 85,
           
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(100)

            ),
                    child: const Icon(Icons.car_rental_sharp,size: 50,),
            
            
          ),
              // GestureDetector(
              //   onTap: (){
              //      Navigator.pushNamed(context, '/tips_screen');
              //   },
              //   child:const Text('Tips'),
              // ),
              
            ],
          ),

          ),
          // GestureDetector(
          //       onTap: (){
          //          Navigator.pushNamed(context, '/tips_screen');
          //       },
          //       child:const Text('Tips'),
          //     ),
          ],),
          // floatingActionButton:FloatingActionButton(
          //   onPressed:(){ 
          // Navigator.pushNamed(context, '/tips_screen');},
          // child:const BackButton(),
          // ) ,
        ),
        ),
      ),
      );
  }
}