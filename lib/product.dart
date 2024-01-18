import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Map<String, String>> arrdata = [
    {
      'image': 'https://www.eshaistic.pk/wp-content/uploads/2022/09/Golden-Pearl-Hair-Oil.jpg',
      'name': 'Golden Pearl Hair Oil',
      'price': 'PKR : 460',
    },
    {
      'image': 'https://fairo.pk/wp-content/uploads/2020/10/almond-and-honey.jpg',
      'name': 'Golden Pearl Extra ',
      'price': 'PKR : 350',
    },
    {
      'image':
      'https://tse3.mm.bing.net/th?id=OIP.7iXzGQl1x6QBS_IjMSsz-AHaHa&pid=Api&P=0&h=220',
      'name': 'Cosmetics Manufacture',
      'price': 'PKR : 600',
    },
    {
      'image': 'https://tse3.mm.bing.net/th?id=OIP.oG7ho5hlCOfFbUfC7wQCfAHaHa&pid=Api&P=0&h=220',
      'name': 'Golden Pearl Body Spray',
      'price': 'PKR : 840',
    },
    {
      'image': 'https://tse1.mm.bing.net/th?id=OIP.zwdJzIw5zOIJkHspMQ7iGwHaHa&pid=Api&P=0&h=220',
      'name': 'White background',
      'price': 'PKR : 780',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 16,
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


    );
  }
}
