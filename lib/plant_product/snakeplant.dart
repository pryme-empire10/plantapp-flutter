import 'package:flutter/material.dart';
import 'package:plantapp/pages/cartpage.dart';


class SnakePlant extends StatelessWidget {
  const SnakePlant({Key? key}) : super(key: key);

final number = '+2347066453583';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Details'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const CartPage()));
          }, 
          icon: const Icon(Icons.shopping_cart_outlined)),

          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz)),
          
        ],
      ),
      body: Column(

        children: [
          Expanded(
          child: ScrollConfiguration(
            behavior: ScrollBehavior(),
            child: GlowingOverscrollIndicator(axisDirection:
             AxisDirection.down, color: Colors.black12,
             child: ListView(
              children: [
                Container(
                  height: 400,
                  child: Image(image: AssetImage('assets/snakeplant.png')),
                ),
                const SizedBox(height: 30,),
                
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Snake Plant',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_rounded,size:30,color: Colors.green,))
                      ],
                    ),
                    
                    const SizedBox(height: 15,),
                    
                    const Text('\$120',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                    const SizedBox(height: 20,),

                    const Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15,),

                     const Text("Snake plants help to filter indoor air. What's unique about this particular plant is that it's one of the few plants that can convert carbon dioxide (CO2) into oxygen at night. ",style: TextStyle(fontSize: 18),),
                      const SizedBox(height: 10,),
                      const Text('Don’t overwater. Too much water is this plant’s weakness. Place a snake plant in a well-drained pot to avoid overwatering, as it can cause rotting. Only water the soil when it’s completely dry.',style: TextStyle(fontSize: 18)),
                     const SizedBox(height: 20,),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Door Delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text('Delivery \$50',style: TextStyle(fontSize: 18))
                            ],
                          ),
                         
                       Padding(
                         padding: const EdgeInsets.only(bottom: 25),
                         child: TextButton(onPressed: (){
                          showDialog(context: context, 
                          builder: (context)=>Dialog(
                            insetPadding: EdgeInsets.zero,
                            child: Container(
                              height: 400,
                              width: 420,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('DELIVERY & SHIPPING',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          IconButton(onPressed: (){
                                            Navigator.pop(context);
                                          }, 
                                          icon: const Icon(Icons.close,size: 30,))
                                        ],
                                      ),
                                       const SizedBox(height: 20,),
                                    const Text('DOOR DELIVERY',style: TextStyle(fontSize: 18),),
                                    const SizedBox(height: 20,),

                                    const Text('Delivery time starts from the day you place your order to the day one of our delivery associates makes a first attempt to deliver to you. Delivery will be attempted 2 times over 5 days (7.00 am to 5.30pm ) after which the item will be cancelled, if you are unreachable or unable to receive the order.',style: TextStyle(fontSize: 18)),

                                    const SizedBox(height: 30,),
                                    
                                    const Text('DELIVERY FEE DETAILS',style: TextStyle(fontSize: 19)),
                                    const SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [Text('Total Delivery Amount',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                              Text('\$50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                         }, child: const Text('Details',style: TextStyle(fontSize: 20,color: Colors.cyan),)),
                       ),
                      ],
                     ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Pickup Station',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text('Delivery \$30',style: TextStyle(fontSize: 18))
                            ],
                          ),
                         
                       Padding(
                         padding: const EdgeInsets.only(bottom: 25),
                         child: TextButton(onPressed: (){
                          showDialog(context: context, 
                          builder: (context)=>Dialog(
                            insetPadding: EdgeInsets.zero,
                            child: Container(
                              height: 400,
                              width: 420,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('DELIVERY & SHIPPING',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          IconButton(onPressed: (){
                                            Navigator.pop(context);
                                          }, 
                                          icon: const Icon(Icons.close,size: 30,))
                                        ],
                                      ),
                                       const SizedBox(height: 20,),
                                    const Text('PICKUP STATION',style: TextStyle(fontSize: 18),),
                                    const SizedBox(height: 20,),

                                    const Text("Delivery time starts from the day you place your order to the day your order arrives at the pickup station. You will be notified of your order's arrival, and you have 5 days, if the order is not picked up, it will be automatically cancelled.",style: TextStyle(fontSize: 18)),

                                    const SizedBox(height: 30,),
                                    
                                    const Text('DELIVERY FEE DETAILS',style: TextStyle(fontSize: 19)),
                                    const SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [Text('Total Delivery Amount',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                              Text('\$30',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                         },
                          child: Text('Details',style: TextStyle(fontSize: 20,color: Colors.cyan),)),
                       ),
                      ],
                     )
                      
                  ],
                  
                 ),
               )
              ],
            ),
             ),
            
          ),
        ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 90,
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey))
          ),
          child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green),
                          ),
                          height: 64,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: IconButton(onPressed: () async {
                            
                            },
                             icon: Icon(Icons.phone,color: Colors.green,)),
                          ),
                        ),

                     ElevatedButton.icon(
                      onPressed: (){}, 
                     style: ElevatedButton.styleFrom(minimumSize: const Size(30, 50),
                      primary: Colors.green,
                      elevation: 15),
                     icon: const Icon(Icons.add_shopping_cart,size: 30,), 
                     label: const Padding(
                       padding: EdgeInsets.only(left: 20,right: 40,top: 20,bottom: 20),
                       child: Text('ADD TO CART',style: TextStyle(fontSize: 20),),
                     ))
                      ],
                    )
        ),
      )
    );
  }
}