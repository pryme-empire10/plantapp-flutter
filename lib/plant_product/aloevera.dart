import 'package:flutter/material.dart';
import 'package:plantapp/pages/cartpage.dart';

class AloeveraPlant extends StatelessWidget {
  const AloeveraPlant({Key? key}) : super(key: key);

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
            MaterialPageRoute(builder: (context) => const CartPage(),));
          }, 
          icon: const Icon(Icons.shopping_cart_outlined)),

          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Column(

        children: [
          Expanded(
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: GlowingOverscrollIndicator(axisDirection:
             AxisDirection.down, color: Colors.black12,
             child: ListView(
              children: [
                Container(
                  height: 400,
                  child: Image(image: AssetImage('assets/aloeveraplant.png'),),
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
                        const Text('Aloe Vera',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_rounded,size:30,color: Colors.green,))
                      ],
                    ),
                    
                    const SizedBox(height: 15,),
                    
                    const Text('\$50',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                    const SizedBox(height: 20,),

                    const Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15,),

                     const Text("Place your aloe in a bright, sunny place. Otherwise it will go dormant and stop growing. Water the plant heavily about once every two weeks, waiting until the soil dries out fully. Since this is a desert species, keeping the dirt moist will cause the roots to rot. Limp or brown leaves also signal you've overdone the H20. ",style: TextStyle(fontSize: 18),),
                      const SizedBox(height: 10,),
                      const Text('If you like, you can move your potted plant outdoors for the summer, but do not put it in direct sunlight right away. Gradually place it in a brighter spot every few days to prevent overexposure.',style: TextStyle(fontSize: 18)),
                     const SizedBox(height: 20,),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Door Delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text('Delivery \$50',style: TextStyle(fontSize: 20)),

                             
                            ],
                          ),
                         
                       Padding(
                         padding: const EdgeInsets.only(bottom: 25),
                         child: TextButton(onPressed: (){
                          showDialog(context: context, 
                          builder: (context)=> Dialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            insetPadding: EdgeInsets.zero,
                            child: SizedBox(
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
                         }, 
                         child: const Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                           child: Text('Details',style: TextStyle(fontSize: 20,color: Colors.cyan),),
                         )),
                       ),
                      ],
                     ),
                     const SizedBox(height: 20,),
                      
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text('Pickup Station',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                           SizedBox(height: 10,),
                           Text('Delivery \$30',style: TextStyle(fontSize: 20),
                           )
                        ],
                       ),
                        TextButton(onPressed: (){
                          showDialog(context: context, 
                          builder: (context)=>Dialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            insetPadding: EdgeInsets.zero,
                            child: SizedBox(
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
                                                Text('\$30',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                                                SizedBox(height: 50,)
                                        ],
                                      )
                                    ],
                                  ),
                              ),
                            )
                          ));
                        }, 
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
                          child: Text('Details',style: TextStyle(fontSize: 20,color: Colors.cyan),),
                        ))
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
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.phone,color: Colors.green,)),
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