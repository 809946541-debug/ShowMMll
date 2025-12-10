import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  @JsonSerializable()
  factory Order({
    @JsonKey(name: 'tradeNo') String? tradeNo,
    @JsonKey(name: 'productId') String? productId,
    @JsonKey(name: 'payMethod') int? payMethod,
    @JsonKey(name: 'orderDate') String? orderDate,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
