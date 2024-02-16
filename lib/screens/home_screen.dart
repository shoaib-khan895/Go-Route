import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2_2023_objectives/widgets/show_alert_dialog.dart';

enum ITEMS { home, profile, help }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                _handleItemSelection(value, context);
              },
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: ITEMS.home,
                      child: Text('Home'),
                    ),
                    const PopupMenuItem(
                      value: ITEMS.profile,
                      child: Text('Profile'),
                    ),
                    const PopupMenuItem(
                      value: ITEMS.help,
                      child: Text('Help'),
                    )
                  ]),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/dp.png'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Welcome, User!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle button press or navigation
                  const name = 'Coming from Home Screen with extra';
                  context.push('/BusinessScreen', extra: name);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  'BusinessScreen',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle button press or navigation
                  const name = 'Coming from Home Screen with extra';
                  context.push('/SchoolScreen', extra: name);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  'SchoolScreen',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _handleItemSelection(ITEMS value, context) {
  switch (value) {
    case ITEMS.home:
      showAlertDialog(context: context, title: 'This is Home');
      break;
    case ITEMS.profile:
      showAlertDialog(context: context, title: 'This is Profile');
      break;
    case ITEMS.help:
      showAlertDialog(context: context, title: 'This is Help');
      break;
    default:
      break;
  }
}
