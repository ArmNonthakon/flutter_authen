import 'package:arm_assigment_login/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  bool isLogin = false;
  double fontSizeBody = 16;
  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
    if (!context.mounted) return;

    setState(() {
      isLogin = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Validator and Navigator'),
        actions: [
          IconButton(
              onPressed: () {
                if (isLogin) {
                  setState(() {
                    isLogin = false;
                  });
                } else {
                  _navigateAndDisplaySelection(context);
                }
              },
              icon: Icon(isLogin == false ? Icons.login_sharp : Icons.logout)),
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (isLogin) {
            return Center(
              child: Text(
                'You already login.',
                style: TextStyle(fontSize: fontSizeBody),
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Please login first.',
                    style: TextStyle(fontSize: fontSizeBody),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _navigateAndDisplaySelection(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: fontSizeBody),
                      ))
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
