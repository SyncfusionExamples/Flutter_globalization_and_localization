import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() {
  runApp(const LocalizationScriptDemo());
}

class LocalizationScriptDemo extends StatefulWidget {
  const LocalizationScriptDemo({super.key});

  @override
  LocalizationScriptDemoState createState() => LocalizationScriptDemoState();
}

class LocalizationScriptDemoState extends State<LocalizationScriptDemo> {
  Locale _locale = const Locale.fromSubtags(languageCode: 'zh');
  final CalendarController _calendarController = CalendarController();

  // Full Chinese support for CN, TW, and HK
  final List<Locale> _locales = const <Locale>[
    Locale.fromSubtags(languageCode: 'zh'), // generic Chinese 'zh'
    Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant'), // generic traditional Chinese 'zh_Hant'
    Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hans',
        countryCode: 'CN'), // 'zh_Hans_CN'
    Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant',
        countryCode: 'HK'), // 'zh_Hant_HK'
  ];

  @override
  void initState() {
    _calendarController.view = CalendarView.month;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = TextButton.styleFrom(
        side: BorderSide(
      color: Theme.of(context).primaryColor,
      width: 2,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: _locales,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Syncfusion Flutter Calendar Localization With Script Code',
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _locale = _locales[0];
                    });
                  },
                  style: buttonStyle,
                  child: const Text('zh'),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _locale = _locales[1];
                    });
                  },
                  style: buttonStyle,
                  child: const Text('zh_Hant'),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _locale = _locales[2];
                    });
                  },
                  style: buttonStyle,
                  child: const Text('zh_Hans_CN'),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _locale = _locales[3];
                    });
                  },
                  style: buttonStyle,
                  child: const Text('zh_Hant_HK'),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 600,
                  width: 800,
                  child: SfCalendar(
                    controller: _calendarController,
                    monthViewSettings: const MonthViewSettings(
                      showAgenda: true,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
