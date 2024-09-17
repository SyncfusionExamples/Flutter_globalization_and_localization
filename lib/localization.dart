import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() {
  runApp(const CalendarLocalizationDemo());
}

class CalendarLocalizationDemo extends StatefulWidget {
  const CalendarLocalizationDemo({super.key});

  @override
  CalendarLocalizationDemoState createState() =>
      CalendarLocalizationDemoState();
}

class CalendarLocalizationDemoState extends State<CalendarLocalizationDemo> {
  Locale _locale = const Locale('en', 'US');
  final CalendarController _calendarController = CalendarController();

  @override
  void initState() {
    _calendarController.view = CalendarView.month;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
        Locale('ja', 'JP'),
        // Add other locales here
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Syncfusion Flutter Calendar Localization',
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<Locale>(
                  value: _locale,
                  onChanged: (Locale? newLocale) {
                    setState(() {
                      _locale = newLocale!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: Locale('en', 'US'),
                      child: Text('English'),
                    ),
                    DropdownMenuItem(
                      value: Locale('es', 'ES'),
                      child: Text('Spanish'),
                    ),
                    DropdownMenuItem(
                      value: Locale('ja', 'JP'),
                      child: Text('Japnese'),
                    ),

                    // Add more dropdown menu items for other locales.
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    width: 800,
                    height: 800,
                    child: _buildCalendarWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarWidget() {
    return SfCalendar(
      allowedViews: const <CalendarView>[
        CalendarView.day,
        CalendarView.week,
        CalendarView.workWeek,
        CalendarView.month,
        CalendarView.timelineDay,
        CalendarView.timelineWeek,
        CalendarView.timelineWorkWeek,
        CalendarView.schedule
      ],
      showDatePickerButton: true,
      controller: _calendarController,
      showNavigationArrow: true,
      monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      timeSlotViewSettings: const TimeSlotViewSettings(
        minimumAppointmentDuration: Duration(minutes: 60),
      ),
    );
  }
}
