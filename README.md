<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
## Overview

Form development traditionally involves quite a bit of boilerplate code at different levels from defining form UI and managing user interactions to data loading, validation and submission of a form. Depending on the complexity of a form and the number of forms required by an application, the development and maintenance of these forms can become challenging.

This is why FlexForm was born. It was created with the following goals in mind.

1. [X] Taking care of all common tasks required to build a fully functional form for developers so that they don't have to do the same tasks for each form.
2. [X] Streamlining the development of forms by making it highly configurable and extensible. 
3. [X] Supporting all types of form inputs while leaving it up to developers to customize their form UI however they want.
4. [X] Enabling extensions of FlexForm's functionalities so that developers can define custom functionalities required by their forms such as validation logic specific to each form.
5. [X] Making form code modular so that form components can be maintainable and testable.


## Features

1. [X] **Flexibility** - Supporting form development with all popular input types including text, single-select, multi-select and toggle.
2. [X] **Configurable** - Providing field configurations which can be used to configure how form fields function during runtime. E.g. `allowEmpty`, `minChars`, `maxChars`, `regexList`, etc.
3. [X] **Extensible** - Streamlining form development of any level of complexity from a simple Login form to forms with any number of fields.
4. [X] **Customization** - Enabling customization of form logics based on business requirements with extensions of FlexForm components.
5. [X] **UI-independent** - FlexForm does not dictate how forms should look and feel. Instead, it takes care all of the basic form input interaction and provides real-time updates of the form's state used by applications to rebuild the form.
6. [X] **Modular** - FlexForm's architecture enables developers to separate components of a form so that they can be maintained independently. 

## Getting started

FlexForm's architecture is based on the BLoC design pattern. Specifically, FlexForm depends on [bloc](https://bloclibrary.dev/) and [flutter_bloc](https://pub.dev/packages/flutter_bloc), which are very popular packages that implement BLoC and provide a very good state management solution for Flutter applications.

![Architecture Diagram](https://github.com/otto-viet/flex_form/blob/main/bloc_architecture.png?raw=true)

FlexForm supports all platforms supported by Flutter. Just add a `flex_form` dependency in your Flutter project's `pubspec.yaml` and you are good to go. Well, you'll still need to read a bit to learn how to use FormFlex. 

But don't worry, we will continue improving it and making it easier to use.

## Usage
### Architecture

![Architecture Diagram](https://github.com/otto-viet/flex_form/blob/main/flex_form_architecture.png?raw=true)

The following components make up a Flex Form:
1. **FormBloc** - A base class which extends the `Bloc` class and provides all of the functionalities for a form. It requires a `FormValidationProvider<FormDataEntity>` and a `FormInputDataMapper` which are needed by the extended FormBloc.
2. **FormValidationProvider** - An interface defining validation functionalities used by the base `FormBloc` to validate a form.
3. **FormDataProvider** - An optional component for loading and submitting a form. This is useful for forms that need to load data from or submit data to remote APIs.
3. **FormInputDataMapper** - An interface defining functionalities for mapping between a form's "presentation" data (i.e. `Map<FormFieldId, dynamic>`) and the form's data model (i.e. `FormDataEntity`).
4. **FormDataEntity** - A base `Equatable` class to be extended by a form to represent a form's data.
5. **FormFieldConfig** - Defines a set of configurations for a form field which is used by `FormBloc` to handle specific events triggered by the form field. (E.g. OnChange, etc.)
5. **InputViewModel** - A Union class including classes that define the data for a form field based on the type of that field. (e.g. `FormFieldConfig.text`, `FormFieldConfig.singleSelect`, `FormFieldConfig.multipleSelect`, and `FormFieldConfig.toggledValue`)
6. **FormVM** - Contains the data for the whole form during the form's life cycle.
7. **FormComponent** - A Flutter widget which is used to wrap around the form UI to be built. `FormComponent` allows forms to specify either a `FormDataBuilder` or a `FormInputBuilder`. Use the `FormDataBuilder` when building forms with custom UI and use `FormInputBuilder` to build a form with the set of `TextInputs` returned by the builder.
8. **validateField** - A utility function for validating a form field's value against its FormFieldConfig.
9. **getValidationMessage** - A utility function for getting the validation message for an invalid FormFieldValidation.

### How to Implement a Form
1. Extend the `FormDataEntity` class to define the data for the form and override the Equatable's `props` getter. This is required by the `FormValidationProvider` to check if the form is valid when the form's inputs change.
2. Implement the `FormInputDataMapper` interface to provide mapping functionalities between the form's inputs' values and the its corresponding `FormDataEntity`.
3. Extend the `FormBloc` class and provide a constructor which can be used by the application to create an instance of a FormBloc with an initial `FormBlocState`, a `Map<FormFieldId, FormFieldConfig>` inputConfigMap, an `InputDataMapper` instance, an optional `FormValidationProvider`, and an optional `FormDataProvider`.
4. To implement custom validation logic, extend the `FormValidationProvider` base class and provide an instance to the `FormBloc`.

To see FormFlex in action, check out the code examples below which use a `FormInputBuilder` (i.e. textInputBuilder) and `FormDataBuilder` (i.e. dataBuilder) respectively to build a Change Password form. 


**Example of a form built with a TextInputBuilder**

```dart
    FormComponent(
      bloc: _changePasswordFormBloc,
      textInputBuilder: ({
        required textInputs,
        required context,
        buttonText,
        canSubmit,
        cancelButtonText,
        onSubmit,
      }) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              _changePasswordFormBloc.state.data.title!,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 25),
            ...textInputs,
            const SizedBox(
              height: 35,
            ),
            TextButton(
              onPressed: canSubmit == true ? () {} : null,
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor:
                    Theme.of(context).textTheme.titleLarge!.color,
              ),
              child: Text(buttonText!),
            )
          ],
        );
      },
    )
```


**Example of a form built with a DataBuilder**

```dart
    FormComponent(
      bloc: _changePasswordFormBloc,
      dataBuilder: (
          {
          required inputMap,
          required context,
          buttonText,
          canSubmit,
          cancelButtonText,
          focusNodeMap,
          isLoading,
          isSubmitting,
          onChangeCallbackMap,
          onSubmit,
          textControllerMap}) {
        final oldPasswordViewModel =
            inputMap[FormFieldId.fd0] as TextInputViewModel;
        final newPasswordViewModel =
            inputMap[FormFieldId.fd1] as TextInputViewModel;
        final confirmNewPasswordViewModel =
            inputMap[FormFieldId.fd2] as TextInputViewModel;

        obscurityInputMap ??= <FormFieldId, bool>{
          FormFieldId.fd0: oldPasswordViewModel.isInputObscured,
          FormFieldId.fd1: newPasswordViewModel.isInputObscured,
          FormFieldId.fd2: confirmNewPasswordViewModel.isInputObscured,
        };
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              _changePasswordFormBloc.state.data.title!,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 25),
            ...inputMap.keys.map(
              (fieldId) => Column(
                children: [
                  const SizedBox(height: 10),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return TextInput(
                        theme: theme.textInputTheme,
                        viewModel:
                            (inputMap[fieldId] as TextInputViewModel)
                                .copyWith(
                                    isInputObscured:
                                        obscurityInputMap![fieldId]!),
                        focusNode: focusNodeMap![fieldId]!,
                        controller: textControllerMap![fieldId],
                        onChange: onChangeCallbackMap![fieldId]!,
                        suffixIcon: IconButton(
                          onPressed: () => setState(() =>
                              obscurityInputMap![fieldId] =
                                  !obscurityInputMap![fieldId]!),
                          icon: const Icon(Icons.visibility),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextButton(
              onPressed: canSubmit == true ? () {} : null,
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor:
                    Theme.of(context).textTheme.titleLarge!.color,
              ),
              child: Text(buttonText!),
            )
          ],
        );
      },
    )
```

## Additional information
1. To run the live demo of the examples, configure [melos](https://melos.invertase.dev/) and use it to run the `demo` package by running `melos build:form-demo` to build the package, then running `flutter run -t demo/lib/main.dart -d chrome` (or `melos run:demo`) to run the demo Flutter app.


![Form Demo](https://github.com/otto-viet/flex_form/blob/main/change_password_demo.gif?raw=true)


2. For more details about how the FlexForm works, check out this [Medium](https://medium.com/@qt.nguynh/building-flexible-flutter-forms-with-flexform-ebfbc2d4d992) article. 

## Developers
### How to build FormFlex
1. Run the following command to do a clean build of all of the packages (i.e. `flex_form` and `flex_form_demo`) in the project.

```
melos clean-build:form
```  

2. Optionally, run the following commands to build each package separately.

```
melos build:form
``` 

```
melos build:form-demo
```

3. To lint the project before opening a PR, run

```
melos analyze
```

### How to test form changes

1. To view the live demo of form examples, run

```
melos run:demo
```

2. Add new examples by creating a new feature folder under the `/example/features` folder.

### How to contribute

Contribution from the community is welcomed. Please feel free to open a PR.


## TODOs & Roadmap
1. [X] Add documentation and tutorials
2. [ ] Add code generation and other tools to improve development workflow
3. [ ] Add Tests
