import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.title,
    required this.imageURL,
    required this.relaseDate,
    required this.id,
  });

  final String title;
  final String imageURL;
  final DateTime relaseDate;
  final String id;

  String daysleft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.yMMMEd().format(relaseDate);
  }
}
