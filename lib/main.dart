import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'Diary';
  var items = [
    'Diary',
    'News Paper',
    'Grocery (Kirana)',
    'Water supplier',
    'Tiffin / Meal service',
    'Fruits & vegetables'
        'ok'
  ];

  String dropdownvalue2 = 'Monthly';
  var items2 = [
    'Monthly',
    'News Paper',
    'Grocery (Kirana)',
    'Water supplier',
    'Tiffin / Meal service',
    'Fruits & vegetables'
        'ok'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400,
                height: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        ' Shop details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                        height: 185,
                        width: 220,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38),
                          child: Image.asset('assets/sushi.jpg'),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Dmart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 370,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 20),
                child: DropdownButton(
                  underline: const SizedBox(),
                  value: dropdownvalue,
                  icon: const Icon(Icons.arrow_drop_down),
                  alignment: Alignment.center,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                child: Text(
                  'shop,365/35,Block A, Ashok Vihar, Sector 3,G...',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '11:00 AM  ',style: TextStyle(fontWeight: FontWeight.w500)),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: const VerticalDivider(
                      color: Color.fromARGB(170, 0, 0, 0),
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                      width: 5,
                    ),
                  ),
                  const Text(
                    '10:00 PM  ',style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 370,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: DropdownButton(
                  underline: const SizedBox(),
                  value: dropdownvalue2,
                  icon: const Icon(Icons.arrow_drop_down),
                  alignment: Alignment.center,
                  items: items2.map((String items2) {
                    return DropdownMenuItem(
                      value: items2,
                      child: Text(items2),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Minimum bill amount (₹)',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    SizedBox(width: 108),
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                      width: 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '100',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            const SizedBox(height: 20),
            Container(
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Charges below minimum amount (₹)',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    VerticalDivider(
                      color: Color.fromARGB(170, 0, 0, 0),
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                      width: 5,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '500',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 20),
            Container(
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(154, 47, 47, 47), width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          ' Gst',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(width: 100),
                    VerticalDivider(
                      color: Color.fromARGB(170, 0, 0, 0),
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                      width: 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Yes',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    VerticalDivider(
                      color: Color.fromARGB(170, 0, 0, 0),
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                      width: 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'No',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    backgroundColor: Colors.blue, // Background color
                  ),
                  child: const Text(
                    'Update',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
