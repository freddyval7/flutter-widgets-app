import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),

            OutlinedButton(onPressed: null, child: Text("Elevated Disabled")),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text("Elevated Icon"),
            ),

            FilledButton(onPressed: () {}, child: Text("FilledButton")),

            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm),
              label: Text("Filled Icon"),
            ),

            OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),

            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ad_units_outlined),
              label: Text("Outlined Icon"),
            ),

            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text("Hello", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
