import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/features/change_password/data/change_password_form_data_entity.dart';

class ChangePasswordValidationProvider
    implements FormValidationProvider<ChangePasswordFormDataEntity> {
  final FormFieldConfig oldPasswordFieldConfig;
  final FormFieldConfig newPasswordFieldConfig;
  final FormFieldConfig confirmNewPasswordFieldConfig;

  ChangePasswordValidationProvider(
      {required this.oldPasswordFieldConfig,
      required this.newPasswordFieldConfig,
      required this.confirmNewPasswordFieldConfig});

  // TODO(quan): Provide a default implementation
  @override
  bool isDirty(ChangePasswordFormDataEntity? original,
      ChangePasswordFormDataEntity? current) {
    return original != current;
  }

  @override
  Future<bool> isValid(ChangePasswordFormDataEntity current) async {
    bool isFormValid = validateField(
              current.oldPassword,
              oldPasswordFieldConfig,
            ) ==
            FormFieldValidation.valid &&
        validateField(
              current.newPassword,
              newPasswordFieldConfig,
            ) ==
            FormFieldValidation.valid &&
        validateField(
              current.confirmNewPassword,
              confirmNewPasswordFieldConfig,
            ) ==
            FormFieldValidation.valid;

    return isFormValid;
  }

  @override
  Future<Map<FormFieldId, String>?> validate(
      ChangePasswordFormDataEntity current,
      {FormFieldId? currentValidatedField,
      ChangePasswordFormDataEntity? original}) async {
    final validationResults = <FormFieldId, String>{};
    switch (currentValidatedField) {
      case FormFieldId.fd1:
        if ((current.confirmNewPassword?.isNotEmpty ?? false) &&
            current.newPassword?.trim() != current.confirmNewPassword?.trim()) {
          validationResults[currentValidatedField!] =
              newPasswordFieldConfig.invalidInputMessage!;
          validationResults[FormFieldId.fd2] = '';
        } else {
          validationResults[FormFieldId.fd1] = getValidationMessage(
                  validateField(current.newPassword, newPasswordFieldConfig),
                  newPasswordFieldConfig) ??
              '';
          if (current.confirmNewPassword?.isNotEmpty ?? false) {
            validationResults[FormFieldId.fd2] = getValidationMessage(
                    validateField(current.confirmNewPassword,
                        confirmNewPasswordFieldConfig),
                    confirmNewPasswordFieldConfig) ??
                '';
          }
        }
      case FormFieldId.fd2:
        if ((current.newPassword?.isNotEmpty ?? false) &&
            current.newPassword?.trim() != current.confirmNewPassword?.trim()) {
          validationResults[currentValidatedField!] =
              confirmNewPasswordFieldConfig.invalidInputMessage!;
          validationResults[FormFieldId.fd1] = '';
        } else {
          if (current.newPassword?.isNotEmpty ?? false) {
            validationResults[FormFieldId.fd1] = getValidationMessage(
                    validateField(current.newPassword, newPasswordFieldConfig),
                    newPasswordFieldConfig) ??
                '';
          }
          validationResults[FormFieldId.fd2] = getValidationMessage(
                  validateField(current.confirmNewPassword,
                      confirmNewPasswordFieldConfig),
                  confirmNewPasswordFieldConfig) ??
              '';
        }
      default:
    }

    return validationResults;
  }

  @override
  Future<Map<FormFieldId, String>?> validateUponSubmission(
      ChangePasswordFormDataEntity entity,
      {ChangePasswordFormDataEntity? original}) async {
    return null;
  }
}
