import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_sign_in/google_sign_in.dart';

User? user;

class Authentication {
  static SnackBar customSnackBar({required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: const TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
      ),
    );
  }

  static Future<FirebaseApp> initializeFirebase({
    required BuildContext context,
  }) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Navigate if needed
    }

    return firebaseApp;
  }

  /// ✅ Google Sign-In (Web + Mobile)
  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    if (kIsWeb) {
      // 🔹 Web flow uses popup
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
            await auth.signInWithPopup(authProvider);
        user = userCredential.user;
      } catch (e) {
        debugPrint("Google Sign-In Error (Web): $e");
        ScaffoldMessenger.of(context).showSnackBar(
          Authentication.customSnackBar(content: 'Google Sign-In failed.'),
        );
      }
    } else {
      // 🔹 Mobile flow uses google_sign_in plugin
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      try {
        // 🛠️ FIX: The method call was missing.
        final GoogleSignInAccount? googleSignInAccount =
            await googleSignIn.authenticate();

        if (googleSignInAccount != null) {
          final GoogleSignInAuthentication googleAuth =
              await googleSignInAccount.authentication;

          final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.idToken,
            idToken: googleAuth.idToken,
          );

          final UserCredential userCredential =
              await auth.signInWithCredential(credential);

          user = userCredential.user;
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.customSnackBar(
              content: 'Account already exists with a different credential.',
            ),
          );
        } else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.customSnackBar(
              content: 'Invalid credentials. Please try again.',
            ),
          );
        }
      } catch (e) {
        debugPrint("Google Sign-In Error (Mobile): $e");
        ScaffoldMessenger.of(context).showSnackBar(
          Authentication.customSnackBar(
            content: 'Error occurred using Google Sign In. Try again.',
          ),
        );
      }
    }

    return user;
  }

  /// ✅ Microsoft Sign-In (Web Only using OAuth provider)
  static Future<User?> signInWithMicrosoft({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    if (kIsWeb) {
      try {
        OAuthProvider microsoftProvider = OAuthProvider("microsoft.com");

        final UserCredential userCredential =
            await auth.signInWithPopup(microsoftProvider);

        user = userCredential.user;
      } catch (e) {
        debugPrint("Microsoft Sign-In Error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          Authentication.customSnackBar(content: 'Microsoft Sign-In failed.'),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        Authentication.customSnackBar(
          content: 'Microsoft Sign-In only available on Web.',
        ),
      );
    }

    return user;
  }

  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;

    try {
      if (!kIsWeb) {
        await googleSignIn.signOut();
      }
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        Authentication.customSnackBar(
          content: 'Error signing out. Try again.',
        ),
      );
    }
  }
}