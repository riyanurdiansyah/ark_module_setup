import 'package:intl/intl.dart';

extension StringToNumber on String {
  int stringToInt() {
    return int.parse(this);
  }

  double stringToDouble() {
    return double.parse(this);
  }
}

extension ParseDynamic on dynamic {
  int dynamicToInt() {
    return int.parse(this);
  }
}

extension ReadTimeStamp on int {
  // CONVERT INT TO DATETIME
  DateTime timeStampToDateTime() {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    return dateTime;
  }

  /* RETURN TANGGAL BULAN TAHUN
  E.G 3 JANUARI 2023
  */
  String formatMDY() {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final formateDate = DateFormat('d MMMM y', 'ID_id').format(dateTime);
    return formateDate;
  }
}
