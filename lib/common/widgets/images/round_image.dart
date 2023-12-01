import 'package:flutter/cupertino.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';

class RoundImages extends StatelessWidget {
  const RoundImages({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.widget = double.infinity,
    this.height = 150,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.backGround = CustomColors.light,
    this.isNetworkImage = false,
    this.borderRadius = CustomSize.md,
  });


  final double? widget, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backGround;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: widget,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backGround,
          border: border,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}