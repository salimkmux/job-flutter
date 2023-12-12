// ignore_for_file: must_be_immutable

part of 'sign_up_complete_account_bloc.dart';

/// Represents the state of SignUpCompleteAccount in the application.
class SignUpCompleteAccountState extends Equatable {
  SignUpCompleteAccountState({
    this.firstNameController,
    this.lastNameController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpCompleteAccountModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? passwordController;

  SignUpCompleteAccountModel? signUpCompleteAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        passwordController,
        isShowPassword,
        signUpCompleteAccountModelObj,
      ];
  SignUpCompleteAccountState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpCompleteAccountModel? signUpCompleteAccountModelObj,
  }) {
    return SignUpCompleteAccountState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpCompleteAccountModelObj:
          signUpCompleteAccountModelObj ?? this.signUpCompleteAccountModelObj,
    );
  }
}
