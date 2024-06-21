import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TipsScreeen());

}

class TipsScreeen extends StatelessWidget {
  const TipsScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(116, 207, 200, 1),
          title:  Center(
            child: Container(
              margin:const EdgeInsets.only(top:25,bottom: 25,left: 9,right: 9),
              
              child:const Text('Face Behavior Detection',style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/select_use_screen');
              },
              icon: const Icon(Icons.arrow_back_ios,color: Colors.blue,),
            ),
            
          ],
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //color: Colors.blue,
                alignment: const AlignmentDirectional(20, 20),
                width: 148,
                height: 138,
                //margin:const EdgeInsets.only(top:223,left: 149),
                child:Image.asset("image_app/image1.png"),
              ),
              const Text('الرجاء تثبيت الهاتف جيدا أثناء القيادة' ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                   Navigator.pushNamed(context, '/camera_d_screen');
                },
                child:Container(
                  width: 120,
                  height: 50,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(116, 207, 200, 1),
                ),
                  child:const Center(child: Text('التالي',
                  style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}