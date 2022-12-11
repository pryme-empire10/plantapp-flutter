import 'package:flutter/material.dart';

import '../widget/customlisttiles.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 150,
              width: 1000,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text('Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined),iconSize: 30,)],),
                  
                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [Text('Welcome!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text('Enter your acoount',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)],),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 30,right: 30), primary: Colors.green,minimumSize: Size(10, 65)),
                        onPressed: (){}, child: const Text('LOGIN',style: TextStyle(fontSize: 20),))
                    ],
                  ),
               
                ],
                
              ),
              
              ),
              const Text('My Jumia Account'),
              const SizedBox(height: 30,),
              
             
             Container(
              child: Expanded(
                child: new ListView.builder(
                  itemBuilder: (BuildContext context, int index) => buildTripCard(context,index)
                  ),
              ),
             ) 

            
          ],
        ),
    );
  }
  Widget buildTripCard (BuildContext context, int index){
    return new Container(
                    child: Card(
                      child: Column(),
                    ),
    );
  }
}