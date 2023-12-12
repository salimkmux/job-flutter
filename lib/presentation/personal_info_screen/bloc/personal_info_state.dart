// ignore_for_file: must_be_immutable

part of 'personal_info_bloc.dart';

/// Represents the state of PersonalInfo in the application.
class PersonalInfoState extends Equatable {
  PersonalInfoState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.phoneController,
    this.locationController,
    this.personalInfoModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  TextEditingController? locationController;

  PersonalInfoModel? personalInfoModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        phoneController,
        locationController,
        personalInfoModelObj,
      ];
  PersonalInfoState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    TextEditingController? locationController,
    PersonalInfoModel? personalInfoModelObj,
  }) {
    return PersonalInfoState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      locationController: locationController ?? this.locationController,
      personalInfoModelObj: personalInfoModelObj ?? this.personalInfoModelObj,
    );
  }
}
