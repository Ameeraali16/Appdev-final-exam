import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:q1/MyhomePage.dart';
import 'package:q1/firebase_options.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  
  // runApp( BlocProvider(
  //     create: (_) => NotesBloc()..add(LoadNotes()),
  //     child: const MyApp(),
  //   ),
  // );
}

//changes

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Exam',
      //Add theme here 
      home: MyhomePage(),
    ) ;
  }
}