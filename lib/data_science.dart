import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DataScience extends StatefulWidget {
  const DataScience({super.key});

  @override
  DataScienceState createState() => DataScienceState();
}

class DataScienceState extends State<DataScience> {
  bool isLoading = true; // Variable to track loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(), // Use custom AppBar
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl:
                'https://science.dataidea.org', // Replace with your website URL
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

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF3A6E68),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(0.0); // Set the height to 40.0
}
