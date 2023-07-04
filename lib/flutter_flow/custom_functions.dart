import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? dateformat(String? originalDate) {
  if (originalDate != null) {
    DateTime dateTime = DateTime.parse(originalDate);
    String formattedDate = DateFormat('M/d/yyyy h:mm:ss a').format(dateTime);
    return formattedDate;
  }
}

List<dynamic>? distinctlist(dynamic test) {
  List<String> inputList = List<String>.from(test);
  List<String> distinctList = inputList.toSet().toList();
  return distinctList;
}

String? colortohex(String colorName) {
  String hexColor = '';
  switch (colorName.toLowerCase()) {
    case 'red':
      hexColor = '#FF0000';
      break;
    case 'green':
      hexColor = '#00FF00';
      break;
    case 'blue':
      hexColor = '#0000FF';
      break;
    case 'yellow':
      hexColor = '#FFFF00';
      break;
    case 'orange':
      hexColor = '#FFA500';
      break;
    case 'purple':
      hexColor = '#800080';
      break;
    case 'pink':
      hexColor = '#FFC0CB';
      break;
    case 'brown':
      hexColor = '#A52A2A';
      break;
    case 'black':
      hexColor = '#000000';
      break;
    case 'white':
      hexColor = '#FFFFFF';
      break;
    default:
      print('Color not found!');
  }
  return hexColor;
}

dynamic tokentojson(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final username = payloadData['sub'].toString().replaceAll('\\\\', '\\');
    final expiration = payloadData['exp'] as int?;

    if (username != null && expiration != null) {
      final expirationDate =
          DateTime.fromMillisecondsSinceEpoch(expiration * 1000);
      final formattedExpiration =
          DateFormat.yMMMMd().add_jms().format(expirationDate);
      final timeAgo = timeago.format(expirationDate);

      final result = [
        {
          'username': username,
          'expiration': formattedExpiration,
        }
      ];
      final jsonString = json.encode(result);
      return jsonString;
    }
  } catch (e) {
    print('Error parsing JWT token: $e');
  }
  return null;
}

String? uriencode(String input) {
  try {
    final encodedInput = Uri.encodeComponent(input);
    return encodedInput;
  } catch (e) {
    print('Error encoding input: $e');
  }
  return null;
}

String? tokentousername(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final username = payloadData['sub'].toString().replaceAll('\\\\', '\\');
    return username;
  } catch (e) {
    print('Error parsing JWT token: $e');
  }

  return null;
}

DateTime? tokentoexpieration(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final expiration = payloadData['exp'] as int?;

    if (expiration != null) {
      final expirationDate =
          DateTime.fromMillisecondsSinceEpoch(expiration * 1000);

      return expirationDate;
    }
  } catch (e) {
    print('Error parsing JWT token: $e');
  }
  return null;
}

String doubletosingleslash(String doubleslash) {
  return doubleslash.replaceAll('\\\\', '\\');
}

List<String>? combinelist(
  List<String>? code,
  List<String>? desc,
  String? separator,
) {
  List<String>? output = [];

  if (code == null || desc == null || separator == null) {
    return null;
  }

  int minLength = math.min(code.length, desc.length);

  for (int i = 0; i < minLength; i++) {
    output.add("${code[i]} $separator ${desc[i]}");
  }

  return output;
}

List<dynamic> generatemonth() {
  List<Map<String, String>> monthList = [];

  for (int month = 12; month >= 1; month--) {
    DateTime date = DateTime(2023, month);
    String monthValue = DateFormat('MM').format(date);
    String monthName = DateFormat('MMMM').format(date);

    monthList.add({'value': monthValue, 'name': monthName});
  }

  return monthList;
}

List<String> generateday(
  String year,
  String month,
) {
  int selectedYear = int.parse(year);
  int selectedMonth = int.parse(month);

  DateTime startDate = DateTime(selectedYear, selectedMonth, 1);
  DateTime endDate = DateTime(selectedYear, selectedMonth + 1, 0);

  List<String> dayList = [];

  for (int day = 1; day <= endDate.day; day++) {
    DateTime date = DateTime(selectedYear, selectedMonth, day);
    String formattedDay = DateFormat('dd').format(date);

    dayList.add(formattedDay);
  }

  return dayList;
}

List<String> generatefromyear(int fromYear) {
  DateTime now = DateTime.now();
  int currentYear = now.year;
  List<String> yearList = [];

  for (int year = currentYear; year >= fromYear; year--) {
    yearList.add(year.toString());
  }

  return yearList;
}

int inbdttoday(String inbdt) {
  String inbdtString = inbdt.toString();
  String dayString = inbdtString.substring(6, 8);
  int day = int.parse(dayString);
  return day;
}

int inbdttomonth(String inbdt) {
  String inbdtString = inbdt.toString();
  String monthString = inbdtString.substring(4, 6);
  int month = int.parse(monthString);
  return month;
}

List<String>? prefixlist(List<dynamic>? objecttype) {
  return objecttype
      ?.map((obj) =>
          obj != null ? (obj["ObjectTypePrefix"]?.toString() ?? '') : '')
      .toList();
}

List<bool>? checklistsamestring(
  List<String>? list,
  String? string,
) {
  List<bool>? output = [];

  if (list == null || string == null) {
    return null;
  }

  for (int i = 0; i < list.length; i++) {
    output.add(list[i] == string);
  }

  return output;
}

int? findindex(
  List<String>? listitem,
  String? value,
) {
  return null;
}

bool checkjsoncontainword(
  dynamic jsondata,
  String? value,
) {
  String jsonDataString = json
      .encode(jsondata)
      .toLowerCase(); // Convert the jsondata to lowercase String
  value = value?.toLowerCase(); // Convert the value to lowercase
  return jsonDataString.contains(value ??
      ''); // Check if the lowercase String contains the lowercase value
}

String? prefix(dynamic objecttype) {
  return objecttype["ObjectTypePrefix"] ?? '';
}

int inbdttoyear(String inbdt) {
  String inbdtString = inbdt.toString();
  String yearString = inbdtString.substring(0, 4);
  int year = int.parse(yearString);
  return year;
}

List<int>? generateyear(
  int fromYear,
  int toYear,
) {
  List<int> yearList = [];
  for (int year = fromYear; year <= toYear; year++) {
    yearList.add(year);
  }

  return yearList;
}

List<dynamic> filterlistobjecttypebylisteqart(
  List<dynamic> listA,
  List<String> listB,
) {
  List<String> trimmedListB = listB.map((item) => item.trim()).toList();
  List<dynamic> filteredList = listA.where((item) {
    return trimmedListB.contains(item['CLASS'].trim());
  }).toList();
  return filteredList;
}

List<dynamic> jsonfromcode(
  List<dynamic> listA,
  String listB,
) {
  List<dynamic> filteredList =
      listA.where((item) => item['Code'].trim() == listB.trim()).toList();
  return filteredList;
}

String guid() {
  final random = math.Random();
  final charSet =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  final segments = [8, 4, 4, 4, 12];
  final buffer = StringBuffer();

  for (final segmentLength in segments) {
    for (var i = 0; i < segmentLength; i++) {
      final randomIndex = random.nextInt(charSet.length);
      buffer.write(charSet[randomIndex]);
    }
    buffer.write('-');
  }

  final guid = buffer.toString().substring(0, buffer.length - 1);
  return guid;
}

String addprefixtnb(
  String userid,
  String prefix,
) {
  if (userid != null && !userid.startsWith(prefix ?? '')) {
    return '$prefix$userid';
  }
  return userid;
}

String removespace(String somevalue) {
  String withoutSpaces = somevalue.replaceAll(' ', '');
  return withoutSpaces;
}

String? headercombinefromlist(
  List<String>? charcodes,
  List<String>? charvalues,
) {
  if (charcodes == null || charvalues == null) {
    return null;
  }
  if (charcodes.length != charvalues.length) {
    throw Exception('charcodes and charvalues must have the same length');
  }

  final items = <String>[];
  for (var i = 0; i < charcodes.length; i++) {
    final charcode = charcodes[i];
    final charvalue = charvalues[i];

    if (charcode.isNotEmpty && charvalue.isNotEmpty) {
      items.add('charcodes=${Uri.encodeQueryComponent(charcode)}');
      items.add('charvalues=${Uri.encodeQueryComponent(charvalue)}');
    }
  }

  if (items.isEmpty) {
    return null;
  }

  return '&${items.join('&')}';
}
