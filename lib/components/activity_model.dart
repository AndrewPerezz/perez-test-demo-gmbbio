import '/components/round_stats_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'activity_widget.dart' show ActivityWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivityModel extends FlutterFlowModel<ActivityWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RoundStats component.
  late RoundStatsModel roundStatsModel;

  @override
  void initState(BuildContext context) {
    roundStatsModel = createModel(context, () => RoundStatsModel());
  }

  @override
  void dispose() {
    roundStatsModel.dispose();
  }
}
