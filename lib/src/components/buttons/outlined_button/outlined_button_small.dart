import 'package:flutter_design_extension/src/components/buttons/outlined_button/core_outlined_button.dart';
import 'package:flutter_design_extension/src/components/buttons/types/button_size.dart';
import 'package:flutter/material.dart';

class DesignOutlinedButtonSmall extends StatelessWidget {
  final DesignButtonSize _buttonSize;
  final String label;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Widget? leftIconWidget;
  final Widget? rightIconWidget;
  final void Function()? onPressed;
  final TextStyle? style;
  final WidgetStateProperty<TextStyle?>? textStyle;
  const DesignOutlinedButtonSmall({
    required this.label,
    this.leftIcon,
    this.rightIcon,
    this.onPressed,
    this.leftIconWidget,
    this.rightIconWidget,
    this.style,
    this.textStyle,
    super.key,
  }) : _buttonSize = DesignButtonSize.small;

  @override
  Widget build(BuildContext context) {
    return CoreOutlinedButton(
      height: _buttonSize.height,
      label: label,
      onPressed: onPressed,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconWidget: leftIconWidget,
      rightIconWidget: rightIconWidget,
      style: style,
      textStyle: textStyle,
    );
  }
}
