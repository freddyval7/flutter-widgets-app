import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: Text("Hello Snackbar"),
      // action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are you sure?"),
        content: Text(
          "Proident id commodo commodo quis ad et fugiat adipisicing nisi elit ex est. Sint dolore ut tempor occaecat tempor ea exercitation eiusmod fugiat. Id deserunt nisi consequat est ipsum eu ullamco aute. Enim commodo sint voluptate occaecat duis duis eu id. Occaecat incididunt Lorem laboris qui tempor proident officia esse commodo Lorem dolore velit cupidatat minim. Do in anim fugiat dolor consectetur labore. Mollit amet culpa deserunt fugiat.",
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text("Ok")),
          TextButton(onPressed: () => context.pop(), child: Text("Cancel")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbars and Dialogs")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      "Id id ex excepteur labore nostrud occaecat elit commodo nostrud. Mollit incididunt in pariatur est cupidatat laborum excepteur. Pariatur duis nostrud velit ut. Fugiat nulla veniam excepteur incididunt minim sit incididunt ea magna sit ipsum et.",
                    ),
                  ],
                );
              },
              child: Text("Licenses"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text("Show Dialog"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text("Show Snackbar"),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
