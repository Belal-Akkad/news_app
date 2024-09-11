import 'package:intl/intl.dart';

String getFormmatedDate(String date) {
    DateFormat dateFormat = DateFormat("yyy-mm-d");
    DateTime dateTime = dateFormat.parse(date);
    String formattedDate = dateFormat.format(dateTime);
    return formattedDate;
  }