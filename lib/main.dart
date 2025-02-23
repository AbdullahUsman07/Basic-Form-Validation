import 'package:Form_Validation/provider/userprovider.dart';
import 'package:Form_Validation/screens/login.dart';
import 'package:Form_Validation/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>UserProvider())
    ],
    child: SignUp(),);
    
  }
}

// class Skeleton extends StatefulWidget {
//     Skeleton({
//     super.key,
//   });

//   @override
//   State<Skeleton> createState() => _SkeletonState();
// }

// class _SkeletonState extends State<Skeleton> {
//   List<Widget> pages =[LoginPage(), SignUp()];

//   int currentPageIndex=0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         destinations:const [
//           NavigationDestination(icon:  Icon(Icons.login), label: "Login"),
//           NavigationDestination(icon: Icon(Icons.app_registration), label: "SignUp"),
//         ], 
//         selectedIndex: currentPageIndex,
//         onDestinationSelected: (int index){
//           setState(() {
//             currentPageIndex=index;
//           });
//         },
//       ),
//       body: pages[currentPageIndex],
//     );
//   }
// }



