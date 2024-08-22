import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProjectWebViewScreen extends StatefulWidget {
  String url;
   ProjectWebViewScreen({super.key,required this.url});

  @override
  State<ProjectWebViewScreen> createState() => _ProjectWebViewScreenState();
}

class _ProjectWebViewScreenState extends State<ProjectWebViewScreen> {
  
  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)..loadRequest(Uri.parse(widget.url));
    return WebViewWidget(
      controller: controller);
  }
}
