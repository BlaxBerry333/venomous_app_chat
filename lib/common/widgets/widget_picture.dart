import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final bool isNetwork;

  const Picture.asset(
    this.path, {
    super.key,
    this.height = 300,
    this.width = 300,
  }) : isNetwork = false;

  const Picture.network(
    this.path, {
    super.key,
    this.height = 300,
    this.width = 300,
  }) : isNetwork = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: isNetwork
          ? Image.network(
              path,
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              errorBuilder: (context, error, stackTrace) => Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
            )
          : Image.asset(
              path,
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              errorBuilder: (context, error, stackTrace) => Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
    );
  }
}
