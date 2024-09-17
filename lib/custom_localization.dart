import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_core/localizations.dart';

void main() {
  runApp(const CustomLocalizationDemo());
}

class CustomLocalizationDemo extends StatefulWidget {
  const CustomLocalizationDemo({super.key});

  @override
  CustomLocalizationDemoState createState() => CustomLocalizationDemoState();
}

class CustomLocalizationDemoState extends State<CustomLocalizationDemo> {
  final Locale _locale = const Locale('en');
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        //Specify the delegate directly
        SfLocalizationsEnDelegate.delegate
      ],
      supportedLocales: [
        _locale,
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Syncfusion Flutter Custom Localization',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 800,
              height: 800,
              child: _buildCalendarWidget(),
            ),
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
      controller: _calendarController,
      monthViewSettings: const MonthViewSettings(
          showAgenda: true,
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      timeSlotViewSettings: const TimeSlotViewSettings(
        minimumAppointmentDuration: Duration(minutes: 60),
      ),
    );
  }
}

/// The translations for English (`en`).
class SfLocalizationsExt extends SfLocalizations {
  SfLocalizationsExt();

  @override
  String get noEventsCalendarLabel => '𝓝𝓞 𝓔𝓥𝓔𝓝𝓣𝓢';

  @override
  String get noSelectedDateCalendarLabel => '𝓝𝓞 𝓢𝓔𝓛𝓔𝓒𝓣𝓔𝓓 𝓓𝓐𝓣𝓔';

  @override
  String get todayLabel => '𝓣𝓞𝓓𝓐𝓨';

  @override
  String get weeknumberLabel => '𝓦𝓔𝓔𝓚 𝓝𝓤𝓜𝓑𝓔𝓡';

  @override
  String get allDayLabel => '𝓐𝓛𝓛 𝓓𝓐𝓨';

  @override
  String get allowedViewDayLabel => '𝓓𝓐𝓨';

  @override
  String get allowedViewMonthLabel => ' 𝓜𝓞𝓝𝓣𝓗';

  @override
  String get allowedViewScheduleLabel => '𝓢𝓒𝓗𝓔𝓓𝓤𝓛𝓔';

  @override
  String get allowedViewTimelineDayLabel => '𝓣𝓘𝓜𝓔𝓛𝓘𝓝𝓔 𝓓𝓐𝓨';

  @override
  String get allowedViewTimelineMonthLabel => ' 𝓣𝓘𝓜𝓔𝓛𝓘𝓝𝓔 𝓜𝓞𝓝𝓣𝓗';

  @override
  String get allowedViewTimelineWeekLabel => '𝓣𝓘𝓜𝓔𝓛𝓘𝓝𝓔 𝓦𝓔𝓔𝓚';

  @override
  String get allowedViewTimelineWorkWeekLabel =>
      '𝓣𝓘𝓜𝓔𝓛𝓘𝓝𝓔 𝓦𝓞𝓡𝓚 𝓦𝓔𝓔𝓚';

  @override
  String get allowedViewWeekLabel => '𝓦𝓔𝓔𝓚';

  @override
  String get allowedViewWorkWeekLabel => '𝓦𝓞𝓡𝓚 𝓦𝓔𝓔𝓚';

  // other properties

  @override
  // TODO: implement afterDataGridFilteringLabel
  String get afterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement afterOrEqualDataGridFilteringLabel
  String get afterOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement andDataGridFilteringLabel
  String get andDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beforeDataGridFilteringLabel
  String get beforeDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beforeOrEqualDataGridFilteringLabel
  String get beforeOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beginsWithDataGridFilteringLabel
  String get beginsWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement cancelDataGridFilteringLabel
  String get cancelDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement clearFilterDataGridFilteringLabel
  String get clearFilterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement containsDataGridFilteringLabel
  String get containsDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement dateFiltersDataGridFilteringLabel
  String get dateFiltersDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement daySpanCountLabel
  String get daySpanCountLabel => throw UnimplementedError();

  @override
  // TODO: implement dhualhiLabel
  String get dhualhiLabel => throw UnimplementedError();

  @override
  // TODO: implement dhualqiLabel
  String get dhualqiLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotBeginWithDataGridFilteringLabel
  String get doesNotBeginWithDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement doesNotContainDataGridFilteringLabel
  String get doesNotContainDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotEndWithDataGridFilteringLabel
  String get doesNotEndWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotEqualDataGridFilteringLabel
  String get doesNotEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement emptyDataGridFilteringLabel
  String get emptyDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement endsWithDataGridFilteringLabel
  String get endsWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement equalsDataGridFilteringLabel
  String get equalsDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement fromDataGridFilteringLabel
  String get fromDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement greaterThanDataGridFilteringLabel
  String get greaterThanDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement greaterThanOrEqualDataGridFilteringLabel
  String get greaterThanOrEqualDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement jumada1Label
  String get jumada1Label => throw UnimplementedError();

  @override
  // TODO: implement jumada2Label
  String get jumada2Label => throw UnimplementedError();

  @override
  // TODO: implement lessThanDataGridFilteringLabel
  String get lessThanDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement lessThanOrEqualDataGridFilteringLabel
  String get lessThanOrEqualDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement muharramLabel
  String get muharramLabel => throw UnimplementedError();

  @override
  // TODO: implement noMatchesDataGridFilteringLabel
  String get noMatchesDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement notEmptyDataGridFilteringLabel
  String get notEmptyDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement notNullDataGridFilteringLabel
  String get notNullDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement nullDataGridFilteringLabel
  String get nullDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement numberFiltersDataGridFilteringLabel
  String get numberFiltersDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement ofDataPagerLabel
  String get ofDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement okDataGridFilteringLabel
  String get okDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement orDataGridFilteringLabel
  String get orDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement pagesDataPagerLabel
  String get pagesDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogContentLabel
  String get passwordDialogContentLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogHeaderTextLabel
  String get passwordDialogHeaderTextLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogHintTextLabel
  String get passwordDialogHintTextLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogInvalidPasswordLabel
  String get passwordDialogInvalidPasswordLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfBookmarksLabel
  String get pdfBookmarksLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfEnterPageNumberLabel
  String get pdfEnterPageNumberLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfGoToPageLabel
  String get pdfGoToPageLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkContentLabel
  String get pdfHyperlinkContentLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkDialogCancelLabel
  String get pdfHyperlinkDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkDialogOpenLabel
  String get pdfHyperlinkDialogOpenLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkLabel
  String get pdfHyperlinkLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfInvalidPageNumberLabel
  String get pdfInvalidPageNumberLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfNoBookmarksLabel
  String get pdfNoBookmarksLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPaginationDialogCancelLabel
  String get pdfPaginationDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPaginationDialogOkLabel
  String get pdfPaginationDialogOkLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPasswordDialogCancelLabel
  String get pdfPasswordDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPasswordDialogOpenLabel
  String get pdfPasswordDialogOpenLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfScrollStatusOfLabel
  String get pdfScrollStatusOfLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogClearLabel
  String get pdfSignaturePadDialogClearLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogHeaderTextLabel
  String get pdfSignaturePadDialogHeaderTextLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogPenColorLabel
  String get pdfSignaturePadDialogPenColorLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogSaveLabel
  String get pdfSignaturePadDialogSaveLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuCopyLabel
  String get pdfTextSelectionMenuCopyLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuHighlightLabel
  String get pdfTextSelectionMenuHighlightLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuSquigglyLabel
  String get pdfTextSelectionMenuSquigglyLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuStrikethroughLabel
  String get pdfTextSelectionMenuStrikethroughLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuUnderlineLabel
  String get pdfTextSelectionMenuUnderlineLabel => throw UnimplementedError();

  @override
  // TODO: implement rabi1Label
  String get rabi1Label => throw UnimplementedError();

  @override
  // TODO: implement rabi2Label
  String get rabi2Label => throw UnimplementedError();

  @override
  // TODO: implement rajabLabel
  String get rajabLabel => throw UnimplementedError();

  @override
  // TODO: implement ramadanLabel
  String get ramadanLabel => throw UnimplementedError();

  @override
  // TODO: implement rowsPerPageDataPagerLabel
  String get rowsPerPageDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement safarLabel
  String get safarLabel => throw UnimplementedError();

  @override
  // TODO: implement searchDataGridFilteringLabel
  String get searchDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement selectAllDataGridFilteringLabel
  String get selectAllDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement series
  String get series => throw UnimplementedError();

  @override
  // TODO: implement shaabanLabel
  String get shaabanLabel => throw UnimplementedError();

  @override
  // TODO: implement shawwalLabel
  String get shawwalLabel => throw UnimplementedError();

  @override
  // TODO: implement shortDhualhiLabel
  String get shortDhualhiLabel => throw UnimplementedError();

  @override
  // TODO: implement shortDhualqiLabel
  String get shortDhualqiLabel => throw UnimplementedError();

  @override
  // TODO: implement shortJumada1Label
  String get shortJumada1Label => throw UnimplementedError();

  @override
  // TODO: implement shortJumada2Label
  String get shortJumada2Label => throw UnimplementedError();

  @override
  // TODO: implement shortMuharramLabel
  String get shortMuharramLabel => throw UnimplementedError();

  @override
  // TODO: implement shortRabi1Label
  String get shortRabi1Label => throw UnimplementedError();

  @override
  // TODO: implement shortRabi2Label
  String get shortRabi2Label => throw UnimplementedError();

  @override
  // TODO: implement shortRajabLabel
  String get shortRajabLabel => throw UnimplementedError();

  @override
  // TODO: implement shortRamadanLabel
  String get shortRamadanLabel => throw UnimplementedError();

  @override
  // TODO: implement shortSafarLabel
  String get shortSafarLabel => throw UnimplementedError();

  @override
  // TODO: implement shortShaabanLabel
  String get shortShaabanLabel => throw UnimplementedError();

  @override
  // TODO: implement shortShawwalLabel
  String get shortShawwalLabel => throw UnimplementedError();

  @override
  // TODO: implement showRowsWhereDataGridFilteringLabel
  String get showRowsWhereDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortAToZDataGridFilteringLabel
  String get sortAToZDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortAndFilterDataGridFilteringLabel
  String get sortAndFilterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortLargestToSmallestDataGridFilteringLabel
  String get sortLargestToSmallestDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement sortNewestToOldestDataGridFilteringLabel
  String get sortNewestToOldestDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement sortOldestToNewestDataGridFilteringLabel
  String get sortOldestToNewestDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement sortSmallestToLargestDataGridFilteringLabel
  String get sortSmallestToLargestDataGridFilteringLabel =>
      throw UnimplementedError();

  @override
  // TODO: implement sortZToADataGridFilteringLabel
  String get sortZToADataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement textFiltersDataGridFilteringLabel
  String get textFiltersDataGridFilteringLabel => throw UnimplementedError();
}

class SfLocalizationsEnDelegate extends LocalizationsDelegate<SfLocalizations> {
  static LocalizationsDelegate<SfLocalizations> delegate =
      SfLocalizationsEnDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<SfLocalizations> load(Locale locale) {
    return SynchronousFuture<SfLocalizations>(SfLocalizationsExt());
  }

  @override
  bool shouldReload(LocalizationsDelegate<SfLocalizations> old) => false;
}
