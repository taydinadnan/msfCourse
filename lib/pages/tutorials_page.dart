import 'package:flutter/material.dart';
import 'package:simple_msf_course/models/pillar.dart';
import 'package:simple_msf_course/state/piller_widget.dart';
import 'package:simple_msf_course/widgets/tutorial_widget.dart';

class TutorialsPage extends StatefulWidget {
  const TutorialsPage({
    super.key,
  });

  @override
  State<TutorialsPage> createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  @override
  Widget build(BuildContext context) {
    final pillar = PillarWidget.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(
          child: TutorialWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            'Total Tutorials: ${pillar!.pillarData.articleCount}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
