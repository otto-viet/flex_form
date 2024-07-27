import 'package:equatable/equatable.dart';

import 'form_field_id.dart';

/// An interface for mapping between a specific form's [FormFieldId] and the
/// form's [FormDataEntity]'s corresponding property.
abstract class FormInputDataMapper<T extends FormDataEntity> {
  /// Map a [FormDataEntity] to a map of form field keys and field values
  Map<FormFieldId, dynamic> toInput(T entity);

  /// Maps to the [FormDataEntity] which can be used by a FormDataProvider
  /// to submit the form's data.
  FormDataEntity? toFormProviderEntity(Map<FormFieldId, dynamic>? inputMap);
}

/// An entity associated with a form's data which is defined as a [Map] of
/// [FormFieldId] and its value.
abstract class FormDataEntity extends Equatable {}
