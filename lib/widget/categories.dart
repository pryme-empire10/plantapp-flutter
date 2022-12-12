import 'package:flutter/material.dart';
import 'package:plantapp/plant_product/aloevera.dart';
import 'package:plantapp/plant_product/jadeplant.dart';
import 'package:plantapp/plant_product/monstera.dart';
import 'package:plantapp/plant_product/peacelily.dart';
import 'package:plantapp/plant_product/snakeplant.dart';
import 'package:plantapp/plant_product/spiderplant.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        //TODO: NOTE I TOOK THE PADDING UP HERE TO WRAP THE WHOLE GRID-VIEW
        padding: const EdgeInsets.only(left: 8.0),
        child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.8,
            children: [
              //first container of the first gridview
              //! BY EXTRACTING OUR WIDGETS LIKE THIS, WE HAVE A CLEANER CODE
              plantCategoriesWidget(
                context: context,
                imgPath: 'assets/snake_plants.jpg',
                title: 'Snake Plant',
                price: '100',
                //TODO: READ ABOUT HERO WIDGETS AND THE TAG, IT CREATES A TRANSITION IN NAVIGATING
                heroTag: 'Snake Plant',
                onNavigate: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SnakePlant(),
                      ));
                },
              ),
              plantCategoriesWidget(
                context: context,
                //TODO: ADD THE HEROTAG FOR THIS PARTICULAR WIDGET, IT'S AN ASSIGNMENT! SEE THE ANIMATION DIFFERENCE BTW "SNAKE PLANT" AND "MONSTERA"
                heroTag: '',
                onNavigate: () {
                  //! YOU ACTUALLY DIDN'T HAVE TO CREATE A NEW FILE/SCREEN FOR EVERY FLOWER, NOW IMAGINE YOU WERE FETCHING THE FLOWER FORM AN API?? YOU CAN'T CREATE A PAGE FOR 100 FLOWERS.. FIGURE IT OUT, LOL.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MonsteraPlant()),
                  );
                },
                imgPath: 'assets/monstera_plant1.jpg',
                title: 'Monstera',
                price: '100',
              ),

//TODO: SO NOW REFACTOR THE OTHER WIDGETS LIKE ABOVE, AND LEARN HOW TO EXTRACT WIDGETS
              //second container of the first girdview
              // Padding(
              //   padding: const EdgeInsets.only(right: 10.0),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20),
              //     child: InkWell(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const MonsteraPlant()));
              //       },
              //       child: Container(
              //           color: Color(0xFFFFFFFF),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.stretch,
              //             children: [
              //               const Image(
              //                 image: AssetImage('assets/monstera_plant1.jpg'),
              //                 height: 200,
              //                 fit: BoxFit.fill,
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
              //                 children: [
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: const [
              //                       Text(
              //                         'Monstera',
              //                         style: TextStyle(
              //                             fontSize: 15,
              //                             fontWeight: FontWeight.w500,
              //                             color: Color(0xFF000000)),
              //                       ),
              //                       SizedBox(
              //                         height: 20,
              //                       ),
              //                       Text(
              //                         '\$100',
              //                         style: TextStyle(
              //                             fontSize: 20,
              //                             fontWeight: FontWeight.bold,
              //                             color: Color(0xFF000000)),
              //                       )
              //                     ],
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(bottom: 30),
              //                     child: IconButton(
              //                       onPressed: () {},
              //                       icon: const Icon(Icons.favorite_outline),
              //                       color: Colors.green,
              //                       iconSize: 30,
              //                     ),
              //                   )
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 20,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                         primary: Colors.green),
              //                     onPressed: () {},
              //                     child: const Text('ADD TO CART')),
              //               )
              //             ],
              //           )),
              //     ),
              //   ),
              // ),

              //first container of the second girdview
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AloeveraPlant()));
                    },
                    child: Container(
                        color: const Color(0xFFFFFFFF),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image(
                              image: AssetImage('assets/aloevera1.jpg'),
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Aloe Vera',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '\$50',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline),
                                    color: Colors.green,
                                    iconSize: 30,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                  onPressed: () {},
                                  child: Text('ADD TO CART')),
                            )
                          ],
                        )),
                  ),
                ),
              ),

              //second container of the second girdview
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpiderPlant()));
                    },
                    child: Container(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image(
                              image: AssetImage('assets/spider_plant.jpg'),
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Spider Plant',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '\$40',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline),
                                    color: Colors.green,
                                    iconSize: 30,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                  onPressed: () {},
                                  child: Text(
                                    'ADD TO CART',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        )),
                  ),
                ),
              ),

              //first container of the third girdview
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PeaceLily()));
                    },
                    child: Container(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image(
                              image: AssetImage('assets/peace_lily.jpg'),
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Peace Lily',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '\$85',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline),
                                    color: Colors.green,
                                    iconSize: 30,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                  onPressed: () {},
                                  child: Text(
                                    'ADD TO CART',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        )),
                  ),
                ),
              ),

              //second container of the third girdview
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JadePlant()));
                    },
                    child: Container(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image(
                              image: AssetImage('assets/jade_plant.jpg'),
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jade Plant',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '\$70',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline),
                                    color: Colors.green,
                                    iconSize: 30,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                  onPressed: () {},
                                  child: Text(
                                    'ADD TO CART',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  Widget plantCategoriesWidget({
    required BuildContext context,
    required VoidCallback onNavigate,
    required String imgPath,
    required String title,
    required String price,
    required String heroTag,
    // required Size size,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onNavigate,
        child: Container(
            //TODO: YOU WOULD ALSO LEARN HOW TO DECLARE THEMES GLOBALLY, SO YOU DO NOT ADD COLOR ALL THE TIME TO WIDGETS
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: heroTag,
                    transitionOnUserGestures: true,
                    child: Image(
                      image: AssetImage(imgPath),
                      //! AVOID HARDCODING VALUES TO IMAGES, CONTAINER AND WIDGETS, USE ACCESS FROM THE MEDIAQUERY.OF(CONTEXT) or EXPANDED
                      // height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //! Use a listTile widget instead of Row
                Column(
                  children: [
                    ListTile(
                      title: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000)),
                      ),
                      subtitle: Text(
                        '\$$price',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000)),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                        color: Colors.green,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          //TODO: REFACTOR THIS ON-TAP METHOD HERE LIKE I DID FOR ON-NAVIGATE, SO IT COULD BE GLOBAL
                          onPressed: () {},
                          //TODO: ALSO REFACTOR THIS TEXT HERE
                          child: Text('ADD TO CART')),
                    )
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           title,
                //           style: const TextStyle(
                //               fontSize: 15,
                //               fontWeight: FontWeight.w500,
                //               color: Color(0xFF000000)),
                //         ),
                //         const SizedBox(
                //           height: 20,
                //         ),
                //          Text(
                //           '\$$price',
                //           style: const TextStyle(
                //               fontSize: 20,
                //               fontWeight: FontWeight.bold,
                //               color: Color(0xFF000000)),
                //         )
                //       ],
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(bottom: 30),
                //       child: IconButton(
                //         onPressed: () {},
                //         icon: Icon(Icons.favorite_outline),
                //         color: Colors.green,
                //         iconSize: 30,
                //       ),
                //     )
                //   ],
                // ),
              ],
            )),
      ),
    );
  }
}
