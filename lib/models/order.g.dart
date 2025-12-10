// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      tradeNo: json['tradeNo'] as String?,
      productId: json['productId'] as String?,
      payMethod: (json['payMethod'] as num?)?.toInt(),
      orderDate: json['orderDate'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'tradeNo': instance.tradeNo,
      'productId': instance.productId,
      'payMethod': instance.payMethod,
      'orderDate': instance.orderDate,
    };
