import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/account.dart';
import 'package:ecommerce/mylist_screen.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int currentIndex = 0;
  List tabs = ["All", "Popular", "Recent", "Recommended"];

  List<Map<String, String>> arrdata = [
    {
      'image':
      'images/img1.jpeg',
      'name': 'Golden Pearl Hair Oil',
      'price': 'PKR : 460',
    },
    {
      'image':
      'images/img2.jpeg',
      'name': 'Golden Pearl Extra ',
      'price': 'PKR : 350',
    },
    {
      'image':
      'images/img3.jpeg',
      'name': 'Cosmetics Manufacture',
      'price': 'PKR : 600',
    },

    {
      'image':
      'images/img6.jpeg',
      'name': 'BAKHOOR BODY WASH ',
      'price': 'PKR : 930',
    },
    {
      'image':
      'images/img4.jpeg',
      'name': 'Golden Pearl Body Spray',
      'price': 'PKR : 840',
    },
    {
      'image':
      'images/img5.jpeg',
      'name': 'White background',
      'price': 'PKR : 780',
    },
    {
      'image':
      'images/img2.jpeg',
      'name': ' Body Wash Delicate ',
      'price': 'PKR : 1150',
    },
    {
      'image':
      'images/img3.jpeg',
      'name': 'Cosmetics Manufacture',
      'price': 'PKR : 600',
    },
  ];


  List<Map<String, String>> product2 = [
    {
      'image':
      'images/img4.jpeg',
      'name': 'Golden Pearl Body Spray',
      'price': 'PKR : 840',
    },
    {
      'image':
      'images/img5.jpeg',
      'name': 'White background',
      'price': 'PKR : 780',
    },
  ];

  List<Map<String, String>> product3 = [
    {
      'image':
      'images/img2.jpeg',
      'name': ' Body Wash Delicate ',
      'price': 'PKR : 1150',
    },
    {
      'image':
      'images/img3.jpeg',
      'name': 'Cosmetics Manufacture',
      'price': 'PKR : 600',
    },
  ];

  List<Map<String, String>> product4 = [
    {
      'image':
      'images/img3.jpeg',
      'name': 'Cosmetics Manufacture',
      'price': 'PKR : 600',
    },

    {
      'image':
      'images/img6.jpeg',
      'name': 'BAKHOOR BODY WASH ',
      'price': 'PKR : 930',
    },
  ];

  List papular = [
    'images/b2.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
  ];


  List slider = [
    'images/b1.jpg',
    'images/b2.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
    'images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,


      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Text("SOHAIL KHAN")),

             Center(
               child: Container(

                 child: Row(
                   children: [
                     Container(
                       width: 40,
                       height: 40,
                       decoration: BoxDecoration(
                           color: Colors.black12,


                           borderRadius: BorderRadius.circular(13)
                       ),
                       child: const Icon(
                           Icons.scoreboard_outlined),
                     ),

                     Container(
                         margin: const EdgeInsets.only(left: 70),


                         child: const Text("E-Commerce",style: TextStyle(
                           fontWeight: FontWeight.w700,
                           fontSize: 20
                         ),)),
                     Container(
                       margin: const EdgeInsets.only(left: 70),
                       child: const CircleAvatar(
                         backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._R1EuUG2DxThtrVuKGuPgAHaFc&pid=Api&P=0&h=220"),
                       ),
                     )
                   ],
                 ),
               ),
             ),

              const SizedBox(
                height: 20,
              ),
             Container(

                 child: Row(
                   children: [
                     Container(
                       width: 280,
                       height: 40,
                       child: const SearchBar(
                      hintText: "Search",
                         leading: Icon(Icons.search),
                       ),
                     ),
                     const SizedBox(width: 15),
                     Container(
                       width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           color: Colors.pinkAccent,
                           borderRadius: BorderRadius.circular(13)
                         ),
                         child: const Icon(
                         Icons.swap_horiz_outlined),
                     )
                   ],
                 )),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  // height: 500,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: slider.map((images) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        width: 600,
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                   
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(images.toString()))
                        ),
                      );
                    },
                  );
                },).toList(),
              ),


              const SizedBox(
                height: 16,
              ),


              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ListView.builder(
                        itemCount: tabs.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            curve: Curves.bounceIn,
                            duration: const Duration(milliseconds: 500),
                            width: 120,
                            height: 30,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: currentIndex == index?Colors.grey.shade400 : null,
                              border: currentIndex == index?null:Border.all(color: Colors.black)
                            ),
                            child: Text(tabs[index],style: TextStyle(color: currentIndex == index ? Colors.white : Colors.black),),
                          ),
                        );
                      },),
                    )
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.black12,
              //
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "All",
              //           style: TextStyle(
              //               color: Colors.black87,
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.black12,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //
              //
              //       child: TextButton(
              //         onPressed: () {
              //           Text("Popular data");
              //         },
              //         child: Text(
              //           "Popular",
              //           style: TextStyle(
              //               color: Colors.black87,
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.black12,
              //
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "Recent",
              //           style: TextStyle(
              //               color: Colors.black87,
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.black12,
              //
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "Recommended",
              //           style: TextStyle(
              //               color: Colors.black87,
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 15,
              ),
              currentIndex == 0 ?myproducts(arrdata: arrdata): currentIndex == 1? myproducts(arrdata: product2):currentIndex == 2? myproducts(arrdata: product3):myproducts(arrdata: product4),
            ],
          ),
        ),
      ),

    );
  }
}


