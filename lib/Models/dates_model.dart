class DealsModel {
  final String date;
  final String day;
  DealsModel({required this.date,required this.day});

  // Factory method to create an object from a JSON map
  factory DealsModel.fromJson(Map<String, dynamic> json) {
    return DealsModel(
        date: json['date'],
      day: json['day'],

    );
  }
}
final List<DealsModel> dealsmodel = [
  DealsModel(date: "25", day: 'Today'),
  DealsModel(date: "26",day: 'Nov'),
  DealsModel(date: "27",day: 'Nov'),
  DealsModel(date: "28",day: 'Nov'),
  DealsModel(date: "29",day: 'Nov'),
  DealsModel(date: "30",day: 'Nov'),
  DealsModel(date: "31",day: 'Nov'),
];