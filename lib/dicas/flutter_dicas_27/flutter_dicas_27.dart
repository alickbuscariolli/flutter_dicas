extension DateExtension on DateTime {
  String get toIsoBR {
    return '${day.toString().padLeft(2, '0')}-${month.toString().padLeft(2, '0')}-$year';
  }
}

void main() {
  final nowDate = DateTime.now();

  print(nowDate.toIsoBR);
}
