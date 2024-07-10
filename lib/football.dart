import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'app_bar.dart';

class Football extends StatefulWidget {
  const Football({super.key});

  @override
  FootballState createState() => FootballState();
}

class FootballState extends State<Football> {
  bool isLoading = true; // Variable to track loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(), // Use custom AppBar
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl:
                'https://football.dataidea.org', // Replace with your website URL
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (String url) {
              setState(() {
                isLoading = true; // Show loader when page starts loading
              });
            },
            onPageFinished: (String url) {
              setState(() {
                isLoading = false; // Hide loader when page finishes loading
              });
            },
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3A6E68)),
                ))
              : Container(), // Display loader
        ],
      ),
    );
  }
}

