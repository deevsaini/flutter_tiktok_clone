import 'package:flutter/material.dart';
import 'package:deevstiktok/Theme/colors.dart';

class EntryField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? initialValue;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final String? hint;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Function? onTap;
  final TextCapitalization? textCapitalization;
  final Color? fillColor;
  final EdgeInsets? padding;
  final Widget? counter;

  EntryField({
    this.controller,
    this.label,
    this.initialValue,
    this.readOnly,
    this.keyboardType,
    this.maxLength,
    this.hint,
    this.prefix,
    this.maxLines,
    this.suffixIcon,
    this.onTap,
    this.textCapitalization,
    this.fillColor,
    this.padding,
    this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        style: TextStyle(color: secondaryColor),
        enableInteractiveSelection: false,
        textCapitalization: textCapitalization ?? TextCapitalization.sentences,
        cursorColor: mainColor,
        onTap: onTap as void Function()?,
        autofocus: false,
        controller: controller,
        initialValue: initialValue,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        minLines: 1,
        maxLength: maxLength,
        maxLines: maxLines,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16.0),
            filled: true,
            fillColor: fillColor ?? transparentColor,
            prefixIcon: prefix,
            suffixIcon: suffixIcon,
            labelText: label,
            labelStyle: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: disabledTextColor),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 13.3, color: secondaryColor),
            counter: counter ?? Offstage(),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
