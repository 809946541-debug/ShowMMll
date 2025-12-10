class ApiResponse<T> {
  final bool success;
  final int code;
  final String message;
  final T? data;

  ApiResponse({
    required this.success,
    required this.code,
    required this.message,
    this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return ApiResponse<T>(
      success: json['success'] ?? false,
      code: json['code'] ?? 0,
      message: json['message'] ?? '',
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'code': code,
      'message': message,
      'data': data,
    };
  }
}

class ApiResponseList<T> {
  final bool success;
  final int code;
  final String message;
  final List<T>? data;
  final int? total;

  ApiResponseList({
    required this.success,
    required this.code,
    required this.message,
    this.data,
    this.total,
  });

  factory ApiResponseList.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return ApiResponseList<T>(
      success: json['success'] ?? false,
      code: json['code'] ?? 0,
      message: json['message'] ?? '',
      data: json['data'] != null ? List<T>.from(json['data'].map((x) => fromJsonT(x))) : null,
      total: json['total'],
    );
  }
}