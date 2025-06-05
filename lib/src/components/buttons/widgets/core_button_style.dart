import 'package:flutter_design_extension/flutter_design_extension.dart';
import 'package:flutter/material.dart';

class CoreButtonStyle extends ButtonStyle {
  final DesignTokensThemeExtension theme;
  final bool hasLeftIcon; // adds padding in case of leftIcon present
  final bool hasRightIcon; // adds padding  in case of rightIcon present
  @override
  final WidgetStateProperty<TextStyle?>? textStyle;
  CoreButtonStyle({
    required this.theme,
    required super.backgroundColor,
    required super.foregroundColor,
    required this.hasLeftIcon,
    required this.hasRightIcon,
    super.side,
    this.textStyle,
  })  : assert(
          !(hasLeftIcon == true && hasRightIcon == true),
          'Please specify only one of the icons inside buttons.',
        ),
        super(
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(
              horizontal: theme.spacings.spacing16,
            ).copyWith(
              // in case of a present icon --> padding is lower on the icon's side
              left: hasLeftIcon == true ? theme.spacings.spacing12 : null,
              right: hasRightIcon == true ? theme.spacings.spacing12 : null,
            ),
          ),
          textStyle:
              textStyle ?? WidgetStatePropertyAll(theme.textStyles.buttonText),
          splashFactory: NoSplash.splashFactory,
          elevation: null,
          shadowColor: WidgetStatePropertyAll(theme.colors.neutral.transparent),
          surfaceTintColor:
              WidgetStatePropertyAll(theme.colors.neutral.transparent),
          overlayColor:
              WidgetStatePropertyAll(theme.colors.neutral.transparent),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                theme.borderRadiuses.borderRadiusSmall,
              ),
            ),
          ),
        );
}
