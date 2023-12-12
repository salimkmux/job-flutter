import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/sliderapplicati_item_model.dart';import 'package:salimkm_s_application1/presentation/onboarding_three_screen/models/onboarding_three_model.dart';part 'onboarding_three_event.dart';part 'onboarding_three_state.dart';/// A bloc that manages the state of a OnboardingThree according to the event that is dispatched to it.
class OnboardingThreeBloc extends Bloc<OnboardingThreeEvent, OnboardingThreeState> {OnboardingThreeBloc(OnboardingThreeState initialState) : super(initialState) { on<OnboardingThreeInitialEvent>(_onInitialize); }

List<SliderapplicatiItemModel> fillSliderapplicatiItemList() { return List.generate(1, (index) => SliderapplicatiItemModel()); } 
_onInitialize(OnboardingThreeInitialEvent event, Emitter<OnboardingThreeState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(onboardingThreeModelObj: state.onboardingThreeModelObj?.copyWith(sliderapplicatiItemList: fillSliderapplicatiItemList()))); } 
 }
