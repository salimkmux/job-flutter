// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'message_item_model.dart';/// This class defines the variables used in the [message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel extends Equatable {MessageModel({this.messageItemList = const []});

List<MessageItemModel> messageItemList;

MessageModel copyWith({List<MessageItemModel>? messageItemList}) { return MessageModel(
messageItemList : messageItemList ?? this.messageItemList,
); } 
@override List<Object?> get props => [messageItemList];
 }
