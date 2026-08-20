import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/navigation/side_navigation/side_nav/side_nav_widget.dart';
import '/widgets/leaderboard/challenge_title_row/challenge_title_row_widget.dart';
import '/widgets/leaderboard/circle_winner_avatar/circle_winner_avatar_widget.dart';
import '/widgets/leaderboard/player_list_tile/player_list_tile_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'leaderboard_page_widget.dart' show LeaderboardPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaderboardPageModel extends FlutterFlowModel<LeaderboardPageWidget> {
  ///  Local state fields for this page.

  bool isFiltering = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for CircleWinnerAvatar component.
  late CircleWinnerAvatarModel circleWinnerAvatarModel1;
  // Model for CircleWinnerAvatar component.
  late CircleWinnerAvatarModel circleWinnerAvatarModel2;
  // Model for CircleWinnerAvatar component.
  late CircleWinnerAvatarModel circleWinnerAvatarModel3;
  // Models for PlayerListTile dynamic component.
  late FlutterFlowDynamicModels<PlayerListTileModel> playerListTileModels;

  @override
  void initState(BuildContext context) {
    circleWinnerAvatarModel1 =
        createModel(context, () => CircleWinnerAvatarModel());
    circleWinnerAvatarModel2 =
        createModel(context, () => CircleWinnerAvatarModel());
    circleWinnerAvatarModel3 =
        createModel(context, () => CircleWinnerAvatarModel());
    playerListTileModels =
        FlutterFlowDynamicModels(() => PlayerListTileModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    circleWinnerAvatarModel1.dispose();
    circleWinnerAvatarModel2.dispose();
    circleWinnerAvatarModel3.dispose();
    playerListTileModels.dispose();
  }

  /// Action blocks.
  Future updateGenderState(BuildContext context) async {}
}
