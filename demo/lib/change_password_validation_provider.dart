import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/change_password_form_data_entity.dart';

class ChangePasswordValidationProvider
    implements FormValidationProvider<ChangePasswordFormDataEntity> {
  final FormFieldConfig oldPasswordFieldConfig;
  final FormFieldConfig newPasswordFieldConfig;
  final FormFieldConfig confirmNewPasswordFieldConfig;

  ChangePasswordValidationProvider(
      {required this.oldPasswordFieldConfig,
      required this.newPasswordFieldConfig,
      required this.confirmNewPasswordFieldConfig});
  @override
  bool isDirty(ChangePasswordFormDataEntity? original,
      ChangePasswordFormDataEntity? current) {
    // TODO: implement isDirty
    throw UnimplementedError();
  }

  @override
  Future<bool> isValid(ChangePasswordFormDataEntity current) {
    // TODO: implement isValid
    throw UnimplementedError();
  }

  @override
  Future<Map<FormFieldId, String>?> validate(
      ChangePasswordFormDataEntity current,
      {FormFieldId? currentValidatedField,
      ChangePasswordFormDataEntity? original}) {
    // TODO: implement validate
    throw UnimplementedError();
  }

  @override
  Future<Map<FormFieldId, String>?> validateUponSubmission(
      ChangePasswordFormDataEntity entity,
      {ChangePasswordFormDataEntity? original}) {
    // TODO: implement validateUponSubmission
    throw UnimplementedError();
  }
}
