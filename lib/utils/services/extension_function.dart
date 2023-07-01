import 'dart:io';
import 'dart:ui';
import 'dart:isolate';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

Options globalOptions({
  Map<String, dynamic>? headers,
}) {
  return Options(
    followRedirects: false,
    validateStatus: (status) => true,
    headers: headers ?? {},
  );
}

NumberFormat numberFormat = NumberFormat.decimalPattern('id');

String parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String parsedString = parse(document.body!.text).documentElement!.text;
  return parsedString;
}

final currencyFormatter = NumberFormat.currency(
  locale: "id_ID",
  symbol: "Rp ",
  decimalDigits: 0,
);

void downloadCallback(String id, int status, int progress) {
  final SendPort sendPort =
      IsolateNameServer.lookupPortByName('downloader_send_port')!;
  sendPort.send([id, status, progress]);
}

Future<String?> findLocalPath() async {
  String? externalStorageDirPath;
  if (Platform.isAndroid) {
    final Directory directory;
    final checkDownloadDirectory =
        await Directory('/storage/emulated/0/Download').exists();
    if (checkDownloadDirectory == true) {
      directory = Directory('/storage/emulated/0/Download');
    } else {
      directory = (await getExternalStorageDirectory())!;
    }
    externalStorageDirPath = directory.path;
  } else if (Platform.isIOS) {
    externalStorageDirPath = (await getApplicationDocumentsDirectory()).path;
  }
  return externalStorageDirPath;
}
