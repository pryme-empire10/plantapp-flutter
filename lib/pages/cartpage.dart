
import 'package:flutter/material.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(onPressed: (){
          
        }, icon: const Icon(Icons.arrow_back)),
        title: const Text('Cart',
        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
     body: ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index)
     {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Cart Summary'),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Total'),
                    Text('\$500'),
                  ],
                ),
                ElevatedButton(onPressed: (){}, 
                child: Text('CHECKOUT'))
              ],
            ),
            // Text('CART (5)')
          ],
        ),
      );
     })
    );
  }
}