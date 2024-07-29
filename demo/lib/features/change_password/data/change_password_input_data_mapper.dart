import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/features/change_password/data/change_password_form_data_entity.dart';

class ChangePasswordInputDataMapper
    implements FormInputDataMapper<ChangePasswordFormDataEntity> {
  @override
  FormDataEntity? toFormProviderEntity(Map<FormFieldId, dynamic>? inputMap) {
    return ChangePasswordFormDataEntity(
      oldPassword: inputMap?[FormFieldId.fd0],
      newPassword: inputMap?[FormFieldId.fd1],
      confirmNewPassword: inputMap?[FormFieldId.fd2],
    );
  }

  @override
  Map<FormFieldId, dynamic> toInput(ChangePasswordFormDataEntity entity) {
    return <FormFieldId, String?>{
      FormFieldId.fd0: entity.oldPassword,
      FormFieldId.fd1: entity.newPassword,
      FormFieldId.fd2: entity.confirmNewPassword,
    };
  }
}
