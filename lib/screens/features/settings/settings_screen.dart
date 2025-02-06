import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notifications = false;

  void _onNotificationsChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _notifications = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
      ),
      body: ListView(
        children: [
          CupertinoSwitch(
            value: _notifications,
            onChanged: _onNotificationsChanged,
          ),
          CheckboxListTile(
            activeColor: Colors.black,
            value: _notifications,
            onChanged: _onNotificationsChanged,
            title: Text('Enable notifications'),
          ),
          ListTile(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1980),
                lastDate: DateTime(2025),
              );
              final time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
            },
            title: Text(
              'What is your birthday',
            ),
          ),
          ListTile(
            title: Text("Log out (ios / Bottom)"),
            textColor: Colors.red,
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: Text('Are you sure?'),
                  actions: [
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {},
                      child: Text('Not log out'),
                    ),
                  ],
                ),
              );
            },
          ),
          AboutListTile(
            applicationVersion: "v1.0.0",
            applicationLegalese: "Don't copy me.",
          ),
        ],
      ),
    );
  }
}
