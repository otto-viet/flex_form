import 'form_bloc.dart';
import 'form_field_config.dart';

// Validation utility functions used to get validation information about a form
// field based on its [FormFieldConfig]

/// Validates a field with a [FormFieldConfig] and returns a
/// [FormFieldValidation]
FormFieldValidation validateField(
  dynamic fieldValue,
  FormFieldConfig? validationConfig,
) {
  if (fieldValue is String?) {
    final int fieldLength = fieldValue?.length ?? 0;

    if (fieldValue?.isNotEmpty ?? false) {
      bool isValid = true;

      if (validationConfig != null &&
          validationConfig.minChars > 0 &&
          fieldLength < validationConfig.minChars) {
        return FormFieldValidation.fieldTooShort;
      }

      if (validationConfig != null &&
          validationConfig.maxChars > 0 &&
          fieldLength > validationConfig.maxChars) {
        return FormFieldValidation.fieldTooLong;
      }

      if (validationConfig != null &&
          validationConfig.minValue != null &&
          double.tryParse(fieldValue!) != null &&
          double.parse(fieldValue) < validationConfig.minValue!) {
        return FormFieldValidation.valueTooSmall;
      }

      if (validationConfig != null &&
          validationConfig.maxValue != null &&
          double.tryParse(fieldValue!) != null &&
          double.parse(fieldValue) > validationConfig.maxValue!) {
        return FormFieldValidation.valueTooBig;
      }

      // Check the white-listed regex list
      if (validationConfig?.regexList?.isNotEmpty == true) {
        validationConfig?.regexList?.forEach((String element) {
          if (element.isNotEmpty == true) {
            final RegExp regex = RegExp(
              element,
              caseSensitive: !validationConfig.isRegexIgnoredCase,
            );

            if (fieldValue != null && !regex.hasMatch(fieldValue)) {
              isValid = false;
            }
          }
        });
      }

      // Check against the block-listed regex list
      if (validationConfig?.blockListedRegexList?.isNotEmpty == true) {
        validationConfig?.blockListedRegexList?.forEach((String element) {
          final RegExp regex = RegExp(element);

          if (fieldValue != null && regex.hasMatch(fieldValue)) {
            isValid = false;
          }
        });
      }

      return !isValid
          ? FormFieldValidation.invalidInput
          : FormFieldValidation.valid;
    } else {
      return (validationConfig?.allowEmpty != true)
          ? FormFieldValidation.fieldRequired
          : FormFieldValidation.valid;
    }
  } else if (fieldValue is List<dynamic>) {
    if (fieldValue.isNotEmpty) {
      if (validationConfig?.minRequiredSelections != null &&
          fieldValue.length >= validationConfig!.minRequiredSelections) {
        return FormFieldValidation.valid;
      } else {
        return FormFieldValidation.minSelectionsRequired;
      }
    } else {
      return (validationConfig?.allowEmpty ?? false)
          ? FormFieldValidation.valid
          : FormFieldValidation.fieldRequired;
    }
  } else {
    return validationConfig?.allowEmpty != true && fieldValue == null
        ? FormFieldValidation.fieldRequired
        : FormFieldValidation.valid;
  }
}

/// Utility function for getting a validation message for a form field based on
/// a specific [FormFieldValidation] and the form's [FormFieldConfig].
String? getValidationMessage(
  FormFieldValidation type,
  FormFieldConfig validationConfig,
) {
  switch (type) {
    case FormFieldValidation.fieldRequired:
      return validationConfig.requiredInputMessage ?? 'Input is required';
    case FormFieldValidation.fieldTooLong:
      return 'Input can not exceed ${validationConfig.maxChars} characters';
    case FormFieldValidation.fieldTooShort:
      return 'Input must be at least ${validationConfig.minChars} characters long';
    case FormFieldValidation.invalidInput:
      return validationConfig.invalidInputMessage ?? 'Input is invalid';
    case FormFieldValidation.inputExisted:
      return validationConfig.alreadyExistedInputMessage ??
          'Value already exists';
    case FormFieldValidation.valueTooBig:
      return validationConfig.valueTooBigInputMessage ?? 'Value too big';
    case FormFieldValidation.valueTooSmall:
      return validationConfig.valueTooSmallInputMessage ?? 'Value too small';
    default:
      return null;
  }
}

/// Normalizes and compares the values of two text fields.
bool compareFieldEquality(
  String? field1,
  String? field2, {
  bool ignoreCase = true,
}) {
  if (field1 == null && field2?.isEmpty == true ||
      field1?.isEmpty == true && field2 == null) {
    return true;
  } else {
    if (ignoreCase) {
      return field1?.toLowerCase().trim() == field2?.toLowerCase().trim();
    } else {
      return field1?.toString().trim() == field2?.toString().trim();
    }
  }
}
