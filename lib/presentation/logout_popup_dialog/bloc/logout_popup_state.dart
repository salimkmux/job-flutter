// ignore_for_file: must_be_immutable

part of 'logout_popup_bloc.dart';

/// Represents the state of LogoutPopup in the application.
class LogoutPopupState extends Equatable {
  LogoutPopupState({this.logoutPopupModelObj});

  LogoutPopupModel? logoutPopupModelObj;

  @override
  List<Object?> get props => [
        logoutPopupModelObj,
      ];
  LogoutPopupState copyWith({LogoutPopupModel? logoutPopupModelObj}) {
    return LogoutPopupState(
      logoutPopupModelObj: logoutPopupModelObj ?? this.logoutPopupModelObj,
    );
  }
}
