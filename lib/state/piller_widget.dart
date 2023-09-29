import 'package:flutter/material.dart';
import 'package:simple_msf_course/models/pillar.dart';

class PillarWidget extends InheritedWidget {
  final Pillar pillarData;
  const PillarWidget(
      {super.key, required this.pillarData, required super.child});

  static PillarWidget? of(BuildContext context) {
    final PillarWidget? result =
        context.dependOnInheritedWidgetOfExactType<PillarWidget>();
    assert(result != null, 'No PillarWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PillarWidget oldWidget) {
    return (oldWidget.pillarData.articleCount == pillarData.articleCount);
  }
}
