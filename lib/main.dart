import 'package:flutter/material.dart';
import 'package:flutter_localization/custom_localization.dart';
import 'package:flutter_localization/localization.dart';
import 'package:flutter_localization/chinese_script_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = [
    'Multiple Locales',
    'Chinese Localization',
    'Custom Localization',
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Syncfusion Localization'),
          ),
          body: Center(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          appBar: AppBar(
                            title: Text(items[index]),
                          ),
                          body: index == 0
                              ? const CalendarLocalizationDemo()
                              : index == 1
                                  ? const LocalizationScriptDemo()
                                  : const CustomLocalizationDemo(),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )),
    );
  }
}
