// models/notification_model.dart

class NotificationModel {
  final int id;
  final int userId;
  final String message;
  final String timestamp;
  final bool readStatus;

  NotificationModel({
    required this.id,
    required this.userId,
    required this.message,
    required this.timestamp,
    required this.readStatus,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'],
      userId: json['userId'],
      message: json['message'],
      timestamp: json['timestamp'],
      readStatus: json['readStatus'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'message': message,
        'timestamp': timestamp,
        'readStatus': readStatus,
      };
}
