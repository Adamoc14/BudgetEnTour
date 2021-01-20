class Trip {
  String title;
  DateTime startDate;
  DateTime endDate;
  double budget;
  String travelType;

  Trip(this.title , this.startDate, this.endDate , this.budget, this.travelType);

  // Making a function to transform my object to JSON for api calls
  Map<String , dynamic> toJson() => {
    'title': this.title,
    'startDate': this.startDate,
    'endDate': this.endDate,
    'travelType': this.travelType,
    'budget': this.budget,
  };
}