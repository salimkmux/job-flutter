import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/saved_item_model.dart';import 'package:salimkm_s_application1/presentation/saved_page/models/saved_model.dart';part 'saved_event.dart';part 'saved_state.dart';/// A bloc that manages the state of a Saved according to the event that is dispatched to it.
class SavedBloc extends Bloc<SavedEvent, SavedState> {SavedBloc(SavedState initialState) : super(initialState) { on<SavedInitialEvent>(_onInitialize); }

_onInitialize(SavedInitialEvent event, Emitter<SavedState> emit, ) async  { emit(state.copyWith(savedModelObj: state.savedModelObj?.copyWith(savedItemList: fillSavedItemList()))); } 
List<SavedItemModel> fillSavedItemList() { return List.generate(4, (index) => SavedItemModel()); } 
 }
