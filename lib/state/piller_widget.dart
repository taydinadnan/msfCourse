import 'package:flutter/material.dart';
import 'package:simple_msf_course/models/pillar.dart';

class PillarInheritedWidget extends InheritedWidget {
  final PillarState state;
  final int articleCount;
  const PillarInheritedWidget(
      {required this.state,
      required this.articleCount,
      super.key,
      required super.child});

  static PillarState of(BuildContext context) {
    final PillarInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PillarInheritedWidget>();
    assert(result != null, 'No PillarWidget found in context');
    return result!.state;
  }

  @override
  bool updateShouldNotify(PillarInheritedWidget oldWidget) {
    return !(oldWidget.articleCount == articleCount);
  }
}

class PillarStatefulWidget extends StatefulWidget {
  final Widget child;
  final Pillar pillarData;
  const PillarStatefulWidget(
      {super.key, required this.child, required this.pillarData});

  @override
  State<PillarStatefulWidget> createState() => PillarState();
}

class PillarState extends State<PillarStatefulWidget> {
  get articleCount => widget.pillarData.articleCount;
  get imageName => widget.pillarData.type.imageName;

  void increaseArticleCount({int by = 1}) {
    setState(() {
      widget.pillarData.increaseArticleCount(by: by);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PillarInheritedWidget(
      articleCount: widget.pillarData.articleCount,
      state: this,
      child: widget.child,
    );
  }
}
