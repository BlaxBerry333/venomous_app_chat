import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PageViewWithDots extends StatefulWidget {
  final int totalDotCount;
  final int? initialDotIndex;
  final int currentDotIndex;
  final void Function(int index) onPageViewChanged;
  final List<Widget> pageViewChildren;
  final double wrapperHeight;
  final double wrapperWidth;
  final EdgeInsetsGeometry? wrapperPadding;
  final EdgeInsetsGeometry? dotPadding;

  const PageViewWithDots({
    super.key,
    required this.totalDotCount,
    this.initialDotIndex = 0,
    required this.currentDotIndex,
    required this.onPageViewChanged,
    required this.pageViewChildren,
    required this.wrapperHeight,
    required this.wrapperWidth,
    this.wrapperPadding,
    this.dotPadding,
  });

  @override
  State<PageViewWithDots> createState() => _PageViewWithDotsState();
}

class _PageViewWithDotsState extends State<PageViewWithDots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: widget.wrapperHeight,
        width: widget.wrapperWidth,
        child: Padding(
          padding: EdgeInsets.all(widget.wrapperPadding?.horizontal ?? 0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  pageSnapping: true,
                  allowImplicitScrolling: true,
                  physics: const ClampingScrollPhysics(),
                  onPageChanged: widget.onPageViewChanged,
                  controller: PageController(
                    initialPage: widget.initialDotIndex ?? 0,
                    keepPage: false,
                    viewportFraction: 1,
                  ),
                  children: [...widget.pageViewChildren],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(widget.dotPadding?.horizontal ?? 8),
                child: DotsIndicator(
                  dotsCount: widget.totalDotCount,
                  reversed: false,
                  mainAxisAlignment: MainAxisAlignment.center,
                  position: widget.currentDotIndex.toInt(),
                  decorator: DotsDecorator(
                    size: const Size.square(8),
                    activeSize: const Size(24.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
