import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
       count--;
    });
   
    print(count);
  }

  void increment() {
    setState(() {
       count++;
    });
      
        print(count);
  }

  bool get isEmpty => count==0;
  bool get isFull => count==20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sorvete.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Lotado' : 'Pode entrar!',
            style:  TextStyle(
                fontSize: 26, color: Colors.black, fontWeight: FontWeight.w700),
          ),
         Padding(padding: const EdgeInsets.all(32),
         child:  Text(
            "$count",
            style: isFull? TextStyle(color: Colors.red, fontSize: 100):TextStyle(color: Colors.black, fontSize: 100),
          ),),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty? Colors.white30: Colors.white,
                  fixedSize: const Size(90, 90),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                   ),
                ),
                child: const Text(
                  'Saiu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
               const SizedBox(width:32),

              TextButton(
                onPressed: isFull? null : increment,
                style: TextButton.styleFrom(
                  backgroundColor:isFull? Colors.white30: Colors.white,
                  fixedSize: const Size(90, 90),
                   primary: Colors.black,
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                   ),
                ),
                child: const Text(
                  'Entrou',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      ),
    );
    ///////////////////////////////////////////
  }
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//  atalho para criar widget  '  Stless'
