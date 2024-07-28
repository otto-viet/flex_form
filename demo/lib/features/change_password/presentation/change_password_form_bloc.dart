import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/features/change_password/data/change_password_validation_provider.dart';
import 'package:flutter/material.dart';

import '../data/change_password_data_provider.dart';
import '../data/change_password_input_data_mapper.dart';

class ChangePasswordFormBloc extends FormBloc {
  ChangePasswordFormBloc._(
    super.initialState, {
    required super.validationProvider,
    required super.inputDataMapper,
    super.dataProvider,
  });
  factory ChangePasswordFormBloc() {
    final ChangePasswordInputDataMapper inputDataMapper =
        ChangePasswordInputDataMapper();

    final Map<FormFieldId, FormFieldConfig> inputConfigMap = Map<FormFieldId,
        FormFieldConfig>.fromEntries(<MapEntry<FormFieldId, FormFieldConfig>>[
      const MapEntry<FormFieldId, FormFieldConfig>(
        FormFieldId.fd0,
        FormFieldConfig(
          requiredInputMessage: 'Old password is required',
          validateFormOnChange: true,
        ),
      ),
      const MapEntry<FormFieldId, FormFieldConfig>(
        FormFieldId.fd1,
        FormFieldConfig(
          requiredInputMessage: 'Enter a new password',
          invalidInputMessage:
              'New Password must be the same as Confirm Password',
          minChars: 8,
          validateFormOnChange: true,
        ),
      ),
      const MapEntry<FormFieldId, FormFieldConfig>(
        FormFieldId.fd2,
        FormFieldConfig(
          requiredInputMessage: 'Confirm your new password',
          invalidInputMessage:
              'Confirm Password must be the same as New Password',
          validateFormOnChange: true,
        ),
      ),
    ]);

    final FormBlocState initialState = FormBlocState(
      inputConfigMap: inputConfigMap,
      data: const FormVM().copyWith(
        title: 'Change Password',
        cancelButtonText: 'CANCEL',
        buttonText: 'SUBMIT',
        inputMap: Map<FormFieldId, InputViewModel>.fromEntries(
          <MapEntry<FormFieldId, InputViewModel>>[
            const MapEntry<FormFieldId, InputViewModel>(
              FormFieldId.fd0,
              InputViewModel.text(
                id: FormFieldId.fd0,
                labelText: '${'Old Password'}*',
                hintText: '${'Old Password'}*',
                // Can be changed to 'go' by the bloc  to indicate the form's
                // readiness
                textInputAction: TextInputAction.next,
                errorText: null,
                textCapitalization: TextCapitalization.words,
                obscuringCharacter: '*',
                isInputObscured: true,
                maxLines: 1,
              ),
            ),
            const MapEntry<FormFieldId, InputViewModel>(
              FormFieldId.fd1,
              InputViewModel.text(
                id: FormFieldId.fd1,
                labelText: '${'New Password'}*',
                hintText: '${'New Password'}*',
                // Can be changed to 'go' by the bloc  to indicate the form's
                // readiness
                textInputAction: TextInputAction.next,
                errorText: null,
                textCapitalization: TextCapitalization.words,
                obscuringCharacter: '*',
                isInputObscured: true,
                maxLines: 1,
              ),
            ),
            const MapEntry<FormFieldId, InputViewModel>(
              FormFieldId.fd2,
              InputViewModel.text(
                id: FormFieldId.fd2,
                labelText: '${'Confirm Password'}*',
                hintText: '${'Confirm Password'}*',
                // Can be changed to 'go' by the bloc  to indicate the form's
                // readiness
                textInputAction: TextInputAction.next,
                errorText: null,
                textCapitalization: TextCapitalization.words,
                obscuringCharacter: '*',
                isInputObscured: true,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
    final Map<FormFieldId, dynamic> formData =
        Map<FormFieldId, String>.fromEntries(
            FormFieldId.values.take(3).map((FormFieldId e) => MapEntry(e, '')));
    final validationProvider = ChangePasswordValidationProvider(
        oldPasswordFieldConfig: inputConfigMap[FormFieldId.fd0]!,
        newPasswordFieldConfig: inputConfigMap[FormFieldId.fd1]!,
        confirmNewPasswordFieldConfig: inputConfigMap[FormFieldId.fd2]!);

    return ChangePasswordFormBloc._(
      initialState,
      inputDataMapper: inputDataMapper,
      validationProvider: validationProvider,
      dataProvider: ChangePasswordDataProvider(
        data: formData,
        inputDataMapper: inputDataMapper,
      ),
    );
  }
}
