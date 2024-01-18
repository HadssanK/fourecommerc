import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

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
    {
      'image': 'https://static-01.daraz.pk/p/eca44130118d9707d7f29f2b70adf0f8.jpg',
      'name': 'BAKHOOR BODY WASH ',
      'price': 'PKR : 930',
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiwrOZz0Iz0mLPE8erVoMAskwKFgoKk6l2Eg&usqp=CAU',
      'name': ' Body Wash Delicate ',
      'price': 'PKR : 1150',
    },
    {
      'image': 'https://media.naheed.pk/catalog/product/cache/49dcd5d85f0fa4d590e132d0368d8132/1/1/1183017-1.jpg',
      'name': '   Comfort Body Wash',
      'price': 'PKR : 1150',
    },
  ];
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      drawer: Container(
        child: Drawer(
          backgroundColor: Colors.deepOrange,
          width: 200,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Center(
          child: Text(
            "E-commerce Store",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        actions: [

          SizedBox(width: 20),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://tse1.mm.bing.net/th?id=OIP.ATotYQF0JM8XlgNCKFa_WgHaE8&pid=Api&P=0&h=220",
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
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
              Container(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    prefixIcon: Icon(Icons.search_sharp),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    hintText: "Search Any Product",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pinkAccent,
                    image: DecorationImage(
                        image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.RaoNOjhR-10yEYwpD-VlMAHaEK&pid=Api&P=0&h=220"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Recent",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Recommended",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
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
    );
  }
}

