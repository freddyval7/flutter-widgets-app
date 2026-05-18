import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UI Controls")),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: Text("Developer Mode"),
          subtitle: Text("Enables developer mode"),
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
          title: Text("Transportation"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioGroup(
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value as Transportation;
                });
              },
              groupValue: selectedTransportation,
              child: Column(
                children: [
                  RadioListTile(
                    value: Transportation.boat,
                    title: Text('By Boat'),
                  ),
                  RadioListTile(
                    value: Transportation.car,
                    title: Text('By Car'),
                  ),
                  RadioListTile(
                    value: Transportation.plane,
                    title: Text('By Plane'),
                  ),
                  RadioListTile(
                    value: Transportation.submarine,
                    title: Text('By Submarine'),
                  ),
                ],
              ),
            ),
          ],
        ),

        CheckboxListTile(
          title: Text("Breakfast is included?"),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),

        CheckboxListTile(
          title: Text("Lunch is included?"),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),

        CheckboxListTile(
          title: Text("Dinner is included?"),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
