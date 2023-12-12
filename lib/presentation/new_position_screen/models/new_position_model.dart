// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:salimkm_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [new_position_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPositionModel extends Equatable {NewPositionModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

NewPositionModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return NewPositionModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
