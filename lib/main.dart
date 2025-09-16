import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fashionwebpageflutter/screens/landingpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD1d-nnNMB49qxCCDiDsxf3lSn1KYZ2Us4",
      authDomain: "fashionwebpageflutter.firebaseapp.com",
      projectId: "fashionwebpageflutter",
      storageBucket: "fashionwebpageflutter.appspot.com",
      messagingSenderId: "439129653878",
      appId: "1:439129653878:web:9a79bba75b8c1b2868d557",
      measurementId: "G-KJSXV149JG",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(child: Text("Error: ${snapshot.error}")),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Fashion Web',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const FashionWebLandingPage(),
          );
        }

        return const MaterialApp(
          home: Scaffold(body: Center(child: CircularProgressIndicator())),
        );
      },
    );
  }
}

// /// web firebase sdk
// <script type="module">
//   // Import the functions you need from the SDKs you need
//   import { initializeApp } from "https://www.gstatic.com/firebasejs/12.2.1/firebase-app.js";
//   import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.2.1/firebase-analytics.js";
//   // TODO: Add SDKs for Firebase products that you want to use
//   // https://firebase.google.com/docs/web/setup#available-libraries

//   // Your web app's Firebase configuration
//   // For Firebase JS SDK v7.20.0 and later, measurementId is optional
//   const firebaseConfig = {
//     apiKey: "AIzaSyD1d-nnNMB49qxCCDiDsxf3lSn1KYZ2Us4",
//     authDomain: "fashionwebpageflutter.firebaseapp.com",
//     projectId: "fashionwebpageflutter",
//     storageBucket: "fashionwebpageflutter.firebasestorage.app",
//     messagingSenderId: "439129653878",
//     appId: "1:439129653878:web:9a79bba75b8c1b2868d557",
//     measurementId: "G-KJSXV149JG"
//   };

//   // Initialize Firebase
//   const app = initializeApp(firebaseConfig);
//   const analytics = getAnalytics(app);
// </script>
