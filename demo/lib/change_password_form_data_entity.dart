import 'package:flex_form/flex_form.dart';

class ChangePasswordFormDataEntity extends FormDataEntity {
  ChangePasswordFormDataEntity({
    this.oldPassword,
    this.newPassword,
    this.confirmNewPassword,
  });

  final String? oldPassword;
  final String? newPassword;
  final String? confirmNewPassword;
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
