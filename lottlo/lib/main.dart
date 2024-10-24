import 'package:lottlo/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/auth_gate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'pages/home.dart';
import 'pages/info.dart';


ItemInfo? info;
int oneTime = 0;

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );  

  runApp(

    const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: MyHomePage(), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: _auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          info = ItemInfo(snapshot.data!.uid);
          
          return const Home();

          
        }
        else{
          return Scaffold(
      body: Stack(
        children: [
          // Option 2: Setting Image height to full (with aspect ratio)
          Image.asset(
            'assets/mainPage.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity
          ),
          // Container for buttons with positioning
            Positioned(
                  child:Container(
                    margin:const EdgeInsets.only(bottom:20.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    widthFactor: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuthGate()));

                    },

                   style: ElevatedButton.styleFrom(
                    fixedSize: Size(120.0, 55.0),
                backgroundColor: Color.fromARGB(255, 0, 0, 0), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
                  child: const Text(
                    'Next',
                    style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16)
                    ),
                  
                ),
                  ),
                  ),
            )
                
        ],  
      ),
    );
        }
      },
    );

  }
}

