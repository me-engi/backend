// models/booking_model.dart

class BookingModel {
  final int id;
  final int userId;
  final int trekTourId;
  final String selectedDate;
  final String bookingStatus;

  BookingModel({
    required this.id,
    required this.userId,
    required this.trekTourId,
    required this.selectedDate,
    required this.bookingStatus,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      id: json['id'],
      userId: json['userId'],
      trekTourId: json['trekTourId'],
      selectedDate: json['selectedDate'],
      bookingStatus: json['bookingStatus'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'trekTourId': trekTourId,
        'selectedDate': selectedDate,
        'bookingStatus': bookingStatus,
      };
}
