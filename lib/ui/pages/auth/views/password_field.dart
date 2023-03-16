import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../themes/app_theme.dart';
import '../../../views/design/app_input_border.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? errorText;

  const PasswordField({
    super.key,
    required this.controller,
    this.hintText,
    this.errorText,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _visibleInput = false;
  bool isNotEmpty = false;

  @override
  void initState() {
    super.initState();
    isNotEmpty = widget.controller.text.isNotEmpty;
    widget.controller.addListener(() {
      setState(() {
        isNotEmpty = widget.controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = AppInputBorder(
      borderSide: BorderSide(
        color: context.colorScheme.outline,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      obscureText: !_visibleInput,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      style: context.textTheme.bodyLarge,
      scrollPadding: const EdgeInsets.only(),
      decoration: InputDecoration(
        suffixIcon: _buildSuffixIcon(),
        hintText: widget.hintText,
        border: InputBorder.none,
        fillColor: context.colorScheme.surface,
        filled: true,
        focusedBorder: border,
        disabledBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
        enabledBorder: border,
        isDense: true,
        errorMaxLines: 3,
        counterStyle: context.textTheme.bodyLarge,
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.secondaryContainer,
        ),
        errorText: widget.errorText,
      ),
    );
  }

  Widget _buildSuffixIcon() {
    final color = context.colorScheme.secondaryContainer;
    return IconButton(
      iconSize: 18,
      constraints: const BoxConstraints(maxWidth: 18, minWidth: 18),
      padding: const EdgeInsets.only(),
      icon: _visibleInput
          ? Icon(Icons.visibility, color: color)
          : Icon(Icons.visibility_off, color: color),
      onPressed: () {
        setState(() {
          _visibleInput = !_visibleInput;
        });
      },
    );
  }
}
