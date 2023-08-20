
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerHelper {
  static Future<String?> selectDate(
      BuildContext context, DateTime? selectedDate) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate:DateTime(1900) ,
      lastDate: DateTime(3000),
    );
    if (selected != null && selected != selectedDate) {
      var inputFormat = DateFormat('dd/MM/yyyy');
      return selected.toString();
    }else{
      var inputFormat = DateFormat('dd/MM/yyyy');
      return selected.toString();
    }
  }
  static String changeDateToSpecificFormat(
      String oldFormat, String date, String dateFormat) {
    var inputDate = DateFormat(oldFormat).parse(date); // <-- dd/MM 24H format
    var outputDate = DateFormat(dateFormat).format(inputDate);
    return outputDate;
  }
  static Future<String?> selectTime(
      BuildContext context, TimeOfDay? timeOfDay) async {
    final TimeOfDay? selectedTimeOfDay = await showTimePicker(
      context: context,
      initialTime: timeOfDay ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dialOnly,
    );
    if (selectedTimeOfDay != null && selectedTimeOfDay != timeOfDay) {
      String minutes = selectedTimeOfDay.minute.toString();
      if (minutes.length == 1) {
        minutes = "0$minutes";
      }
      String hour = selectedTimeOfDay.hour.toString();
      if (hour.length == 1) {
        hour = "0$hour";
      }
      return "$hour : ${minutes}";
    } else {
      String minutes = timeOfDay!.minute.toString();
      if (minutes.length == 1) {
        minutes = "0$minutes";
      }
      String hour = timeOfDay.hour.toString();
      if (hour.length == 1) {
        hour = "0$hour";
      }
      return "$hour : ${minutes}";
    }
  }


}
DateTime parseDateStr(String startDate) {
  DateFormat format = DateFormat.yMMMMd();
  return format.parse(startDate);
}


 dateConvertIntoMonth(value) {
  if (value == "01") {
    return "Jan";
  } else if (value == "02") {
    return "Feb";
  } else if (value == "03") {
    return "Mar";
  } else if (value == "04") {
    return "Apr";
  } else if (value == "05") {
    return "May";
  } else if (value == "06") {
    return "Jun";
  } else if (value == "07") {
    return "Jul";
  } else if (value == "08") {
    return "Aug";
  } else if (value == "09") {
    return "Sep";
  } else if (value == "10") {
    return "Oct";
  } else if (value == "11") {
    return "Nov";
  } else {
    return "Dec";
  }
}