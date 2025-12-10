import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HtmlViewPage extends StatefulWidget {
  final Map arguments;

  const HtmlViewPage({Key? key, required this.arguments}) : super(key: key);

  @override
  HtmlViewPageState createState() => HtmlViewPageState();
}

class HtmlViewPageState extends State<HtmlViewPage> {
  bool get canPop {
    return Navigator.of(context).canPop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments['title']),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Html(
              data: (widget.arguments['content'] as String?)
                      ?.replaceAll('OneNovel', 'ReadIndex') ??
                  ''),
        ),
      ),
    );
  }
}
