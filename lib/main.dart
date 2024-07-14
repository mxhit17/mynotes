import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/firebase_options.dart';
<<<<<<< HEAD
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/register_view.dart';
import 'package:mynotes/views/verifyemail_view.dart';
=======
>>>>>>> origin/master

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const HomePage(),
<<<<<<< HEAD
    routes: {
      '/login/': (context) => const LoginView(),
      '/register/': (context) => const RegisterView(),
    },
=======
>>>>>>> origin/master
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return FutureBuilder(
      // The future parameter expects a Future object. This Future will eventually provide a result or an error.
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      //  The builder function is called whenever the state of the Future changes. This function receives two parameters: the BuildContext and an AsyncSnapshot.
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                // print('Email is verified.');
                return const NotesView();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView();
            }
          // return const Text('Done');
          default:
            return const Text('Loading...');
        }
      },
    );
  }
}

enum MenuAction { logout }

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAIN UI'),
      ),
      body: const Text('Hello world'),
=======
    return Scaffold(
      // The Scaffold is a widget in Flutter used to implements the basic material design visual layout structure.
      appBar: AppBar(
        // It is a horizontal bar that is mainly displayed at the top of the Scaffold widget.
        title: const Text('Login Window'),
      ),
      body: FutureBuilder(
        // The future parameter expects a Future object. This Future will eventually provide a result or an error.
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        //  The builder function is called whenever the state of the Future changes. This function receives two parameters: the BuildContext and an AsyncSnapshot.
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user?.emailVerified ?? false) {
                print('you are a verified user.');
              } else {
                print('please verify your email.');
              }
              return Text('Done.');
            default:
              return const Text('Loading...');
          }
        },
      ),
>>>>>>> origin/master
    );
  }
}
