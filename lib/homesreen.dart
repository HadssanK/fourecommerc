import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/account.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
      'images/img6.jpeg',
      'name': 'BAKHOOR BODY WASH ',
      'price': 'PKR : 930',
    },
    {
      'image':
      'images/img2.jpeg',
      'name': ' Body Wash Delicate ',
      'price': 'PKR : 1150',
    },
    {
      'image':
      'images/img1.jpeg',
      'name': '   Comfort Body Wash',
      'price': 'PKR : 1150',
    },
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
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("SOHAIL KHAN")),

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
                       child: Icon(
                           Icons.scoreboard_outlined),
                     ),

                     Container(
                         margin: EdgeInsets.only(left: 70),


                         child: Text("E-Commerce",style: TextStyle(
                           fontWeight: FontWeight.w700,
                           fontSize: 20
                         ),)),
                     Container(
                       margin: EdgeInsets.only(left: 70),
                       child: CircleAvatar(
                         backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._R1EuUG2DxThtrVuKGuPgAHaFc&pid=Api&P=0&h=220"),
                       ),
                     )
                   ],
                 ),
               ),
             ),

              SizedBox(
                height: 20,
              ),
             Container(

                 child: Row(
                   children: [
                     Container(
                       width: 280,
                       height: 40,
                       child: SearchBar(
                      hintText: "Search",
                         leading: Icon(Icons.search),
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           color: Colors.pinkAccent,
                           borderRadius: BorderRadius.circular(13)
                         ),
                         child: Icon(
                         Icons.swap_horiz_outlined),
                     )
                   ],
                 )),
              SizedBox(
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


              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,

                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,

                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Recent",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,

                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: arrdata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 1.0,
                    mainAxisExtent: 250.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(arrdata[index]['image'] ?? ''),
                          SizedBox(height: 10),
                          Text(arrdata[index]['name'] ?? ''),
                          Text(arrdata[index]['price'] ?? ''),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Account(),));
            }, icon: Icon(Icons.account_circle_outlined)),
          ),
        ],
      ),

    );
  }
}
