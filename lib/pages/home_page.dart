import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff028197),
        title: const Image(
          image: AssetImage('assets/images/amazon_logo.png'),
          height: 100,
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.mic),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,),
              color: const Color(0xff028197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1
                  )
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          border: InputBorder.none,
                          icon: Icon(Icons.search,color: Color(0xff028197),)
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.camera_alt,color: Color(0xff028197),)
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //maps
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 45,
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        const Icon(Icons.location_on,color: Colors.lightBlue,),
                        const SizedBox(width: 7,),
                        const Text("Delivery to Uzbekistan , Republic of",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                  //SUBSCRIBE AVTO
                  Container(
                    color: Colors.white,
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 170,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'We ship 45 milion product',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    bottomLeft: Radius.circular(70)
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/image_1.jpeg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            )
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 8,),
                  //SIGN IN
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign in for the best experience",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                        const SizedBox(height: 15,),
                        MaterialButton(
                          onPressed: (){},
                          minWidth: double.infinity,
                          height: 50,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                          color: Colors.orange,
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        TextButton(
                            onPressed: (){},
                            child: const Text("Create an acount",style: TextStyle(fontSize: 18),)
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 8,),
                  //deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Deal of the Day",style: TextStyle(fontSize: 18),),
                        const SizedBox(height: 16,),
                        const Image(
                          image: AssetImage('assets/images/item_7.jpeg'),
                          fit: BoxFit.cover,
                          height: 240,
                        ),
                        const SizedBox(height: 16,),
                        const Text('Up to 31% off APC UPS Battery Back',style: TextStyle(fontSize: 17),),
                        const SizedBox(height: 6,),
                        const Text('\$10.99 - \$70.99', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  const SizedBox(height: 8,),
                  //best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Text('Best sellers in electronics',style: TextStyle(fontSize: 22),),
                        const SizedBox(height: 16,),
                        SizedBox(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset('assets/images/item_1.jpeg'),
                                  ),
                                  const SizedBox(width: 5,),
                                  Expanded(
                                    child: Image.asset('assets/images/item_4.jpeg'),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset('assets/images/item_3.jpeg'),
                                  ),
                                  const SizedBox(width: 5,),
                                  Expanded(
                                    child: Image.asset('assets/images/item_6.jpeg'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8,),
                  //top products
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Text('Top products in Camera ',style: TextStyle(fontSize: 22),),
                        const SizedBox(height: 16,),
                        SizedBox(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 200,
                                child: Image(
                                  image: AssetImage('assets/images/item_6.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Image(
                                          image: AssetImage('assets/images/item_5.jpeg'),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                    const SizedBox(width: 5,),
                                    Expanded(
                                        child: Image(
                                          image: AssetImage('assets/images/item_2.jpeg'),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
