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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leaderboard_page_model.dart';
export 'leaderboard_page_model.dart';

class LeaderboardPageWidget extends StatefulWidget {
  const LeaderboardPageWidget({super.key});

  static String routeName = 'LeaderboardPage';
  static String routePath = '/leaderboardPage';

  @override
  State<LeaderboardPageWidget> createState() => _LeaderboardPageWidgetState();
}

class _LeaderboardPageWidgetState extends State<LeaderboardPageWidget>
    with TickerProviderStateMixin {
  late LeaderboardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaderboardPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LeaderboardPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LEADERBOARD_LeaderboardPage_ON_INIT_STAT');
      logFirebaseEvent('LeaderboardPage_set_dark_mode_settings');
      setDarkModeSetting(context, ThemeMode.dark);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(-40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer:
            // Drawer you can pop open by hitting the hamburger menu in the app bar.  This allows you to toggle the theme in the drawer.  You can add additional settings to that column as well.
            Drawer(
          elevation: 16.0,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Theme',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'LEADERBOARD_lightDark_small_ON_TAP');
                                if ((Theme.of(context).brightness ==
                                        Brightness.dark) ==
                                    true) {
                                  logFirebaseEvent(
                                      'lightDark_small_set_dark_mode_settings');
                                  setDarkModeSetting(context, ThemeMode.light);
                                  logFirebaseEvent(
                                      'lightDark_small_widget_animation');
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'containerOnActionTriggerAnimation']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                } else {
                                  logFirebaseEvent(
                                      'lightDark_small_set_dark_mode_settings');
                                  setDarkModeSetting(context, ThemeMode.dark);
                                  logFirebaseEvent(
                                      'lightDark_small_widget_animation');
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'containerOnActionTriggerAnimation']!
                                        .controller
                                        .reverse();
                                  }
                                }
                              },
                              child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0xFFE0E3E7),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 6.0, 0.0),
                                          child: Icon(
                                            Icons.mode_night_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.wb_sunny_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Container(
                                          width: 36.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x430B0D0F),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation']!,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
            icon: Icon(
              Icons.menu_sharp,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('LEADERBOARD_menu_sharp_ICN_ON_TAP');
              logFirebaseEvent('IconButton_bottom_sheet');
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: SideNavWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Stack(
              alignment: AlignmentDirectional(0.0, -1.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/MagicEraser_250510_064415.PNG',
                    width: 58.5,
                    height: 61.1,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: FlutterFlowIconButton(
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 35.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              // Caps the width of larger screen sizes to 1200 px.  Less overhead so we aren't making everything dynamic up to an UltraWide screen.
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: SafeArea(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 1200.0,
                      ),
                      decoration: BoxDecoration(),
                      child:
                          // Calls the getSharksByAmountInvested endpoint to return all sharks sorted by most invested to least invested.  There are optional query params you can add here to filter on category of the pitches they invested in or gender of the entrepreneur team they invested in.
                          Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FFAppState().getSharksByAmountInvested(
                            uniqueQueryKey:
                                'api/sharks/byAmountInvested?${'category=${FFAppState().categoryFilter}'}${'&gender=${FFAppState().genderFilter}'}',
                            requestFn: () => GetSharksByAmountInvestedCall.call(
                              gender: FFAppState().genderFilter,
                              category: FFAppState().categoryFilter,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 35.0,
                                  height: 35.0,
                                  child: SpinKitWave(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 35.0,
                                  ),
                                ),
                              );
                            }
                            final queryColumnGetSharksByAmountInvestedResponse =
                                snapshot.data!;

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // Allows toggling between two different UI views.
                                Expanded(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(0.0, 0),
                                        child: TabBar(
                                          isScrollable: true,
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                          unselectedLabelStyle: TextStyle(),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          padding: EdgeInsets.all(24.0),
                                          tabs: [
                                            Tab(
                                              text: 'Rank View',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [() async {}][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child: Stack(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              1.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 210.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 350.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 400.0;
                                                                          } else {
                                                                            return 400.0;
                                                                          }
                                                                        }(),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            1.0),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                14.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                              children: [
                                                                                if ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.length > 1)
                                                                                  Flexible(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 1.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                                            0.0,
                                                                                            valueOrDefault<double>(
                                                                                              () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 12.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 36.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                  return 36.0;
                                                                                                } else {
                                                                                                  return 36.0;
                                                                                                }
                                                                                              }(),
                                                                                              0.0,
                                                                                            ),
                                                                                            0.0,
                                                                                            0.0),
                                                                                        child: wrapWithModel(
                                                                                          model: _model.circleWinnerAvatarModel1,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CircleWinnerAvatarWidget(
                                                                                            imgPath: valueOrDefault<String>(
                                                                                              ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(1))?.img,
                                                                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/LoriGrenier2023.jpg/440px-LoriGrenier2023.jpg',
                                                                                            ),
                                                                                            medalColor: FlutterFlowTheme.of(context).silverColor,
                                                                                            playerName: valueOrDefault<String>(
                                                                                              ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(1))?.name,
                                                                                              'Lori Greiner',
                                                                                            ),
                                                                                            score: valueOrDefault<int>(
                                                                                              ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(1))?.invested,
                                                                                              45000000,
                                                                                            ),
                                                                                            avatarSize: () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 100.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 150.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 200.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < 1200.0) {
                                                                                                return 250.0;
                                                                                              } else {
                                                                                                return 250.0;
                                                                                              }
                                                                                            }(),
                                                                                            sharkId: (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.elementAtOrNull(1)!.sharkId,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                if ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.length == 2)
                                                                                  Container(
                                                                                    width: 120.0,
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                if ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.length > 2)
                                                                                  Flexible(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                          0.0,
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 12.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 36.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 36.0;
                                                                                              } else {
                                                                                                return 36.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          12.0,
                                                                                          0.0),
                                                                                      child: wrapWithModel(
                                                                                        model: _model.circleWinnerAvatarModel2,
                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                        child: CircleWinnerAvatarWidget(
                                                                                          imgPath: valueOrDefault<String>(
                                                                                            ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(2))?.img,
                                                                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/DaymondJohn2023b.jpg/440px-DaymondJohn2023b.jpg',
                                                                                          ),
                                                                                          medalColor: FlutterFlowTheme.of(context).bronzeColor,
                                                                                          playerName: valueOrDefault<String>(
                                                                                            ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(2))?.name,
                                                                                            'Daymond John',
                                                                                          ),
                                                                                          score: valueOrDefault<int>(
                                                                                            ((queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.elementAtOrNull(2))?.invested,
                                                                                            35000000,
                                                                                          ),
                                                                                          avatarSize: () {
                                                                                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                              return 100.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                              return 150.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                              return 200.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < 1200.0) {
                                                                                              return 250.0;
                                                                                            } else {
                                                                                              return 250.0;
                                                                                            }
                                                                                          }(),
                                                                                          sharkId: (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.elementAtOrNull(2)!.sharkId,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                              ].divide(SizedBox(width: () {
                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                  return 85.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                  return 150.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                  return 150.0;
                                                                                } else {
                                                                                  return 85.0;
                                                                                }
                                                                              }())),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 150.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 300.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 450.0;
                                                                          } else {
                                                                            return 450.0;
                                                                          }
                                                                        }(),
                                                                        height:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 200.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 400.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 600.0;
                                                                          } else {
                                                                            return 600.0;
                                                                          }
                                                                        }(),
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.length > 0,
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.circleWinnerAvatarModel3,
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: CircleWinnerAvatarWidget(
                                                                                imgPath: valueOrDefault<String>(
                                                                                  (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.firstOrNull?.img,
                                                                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/MarkCuban2023.jpg/440px-MarkCuban2023.jpg',
                                                                                ),
                                                                                medalColor: FlutterFlowTheme.of(context).goldColor,
                                                                                playerName: valueOrDefault<String>(
                                                                                  (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.firstOrNull?.name,
                                                                                  'Mark Cuban',
                                                                                ),
                                                                                score: valueOrDefault<int>(
                                                                                  (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.firstOrNull?.invested,
                                                                                  55000000,
                                                                                ),
                                                                                avatarSize: () {
                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                    return 120.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                    return 180.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                    return 240.0;
                                                                                  } else {
                                                                                    return 320.0;
                                                                                  }
                                                                                }(),
                                                                                sharkId: (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls.firstOrNull!.sharkId,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if ((FFAppState().categoryFilter == null || FFAppState().categoryFilter == '') &&
                                                                            (FFAppState().genderFilter == null ||
                                                                                FFAppState().genderFilter == '')) {
                                                                          return Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.96, -1.09),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              icon: Icon(
                                                                                Icons.filter_alt_off_rounded,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 30.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('LEADERBOARD_FilterOffButton_ON_TAP');
                                                                                logFirebaseEvent('FilterOffButton_update_page_state');
                                                                                _model.isFiltering = !_model.isFiltering;
                                                                                safeSetState(() {});
                                                                              },
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          return Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.96, -1.09),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              icon: Icon(
                                                                                Icons.filter_alt_rounded,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 30.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('LEADERBOARD_FilterOnButton_ON_TAP');
                                                                                logFirebaseEvent('FilterOnButton_update_page_state');
                                                                                _model.isFiltering = !_model.isFiltering;
                                                                                safeSetState(() {});
                                                                              },
                                                                            ),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text(
                                                                  'Rank',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 14.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 20.0;
                                                                          } else {
                                                                            return 20.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 4,
                                                                child: Text(
                                                                  'Team',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 14.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 20.0;
                                                                          } else {
                                                                            return 20.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text(
                                                                  'Invested',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 14.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 18.0;
                                                                          } else {
                                                                            return 20.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if ((queryColumnGetSharksByAmountInvestedResponse
                                                                          .jsonBody
                                                                          .toList()
                                                                          .map<SharkInvestmentObjectStruct?>(
                                                                              SharkInvestmentObjectStruct.maybeFromMap)
                                                                          .toList() as Iterable<SharkInvestmentObjectStruct?>)
                                                                      .withoutNulls
                                                                      .length >
                                                                  0)
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final sharkListItem =
                                                                        (queryColumnGetSharksByAmountInvestedResponse.jsonBody.toList().map<SharkInvestmentObjectStruct?>(SharkInvestmentObjectStruct.maybeFromMap).toList() as Iterable<SharkInvestmentObjectStruct?>).withoutNulls?.toList() ??
                                                                            [];
                                                                    if (sharkListItem
                                                                        .isEmpty) {
                                                                      return Center(
                                                                        child:
                                                                            ChallengeTitleRowWidget(
                                                                          textInput:
                                                                              'Something went Wrong!',
                                                                        ),
                                                                      );
                                                                    }

                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          sharkListItem
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              sharkListItemIndex) {
                                                                        final sharkListItemItem =
                                                                            sharkListItem[sharkListItemIndex];
                                                                        return wrapWithModel(
                                                                          model: _model
                                                                              .playerListTileModels
                                                                              .getModel(
                                                                            sharkListItemIndex.toString(),
                                                                            sharkListItemIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              PlayerListTileWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keyrzg_${sharkListItemIndex.toString()}',
                                                                            ),
                                                                            rank:
                                                                                sharkListItemIndex,
                                                                            img:
                                                                                valueOrDefault<String>(
                                                                              sharkListItemItem.img,
                                                                              'https://upload.wikimedia.org/wikipedia/commons/4/4d/Daniel_Lubetzky_%28April_14%2C_2015%29_%28cropped%29.jpg',
                                                                            ),
                                                                            name:
                                                                                valueOrDefault<String>(
                                                                              sharkListItemItem.name,
                                                                              'Shark Name',
                                                                            ),
                                                                            amount:
                                                                                formatNumber(
                                                                              sharkListItemItem.invested,
                                                                              formatType: FormatType.compact,
                                                                              currency: '\$',
                                                                            ),
                                                                            sharkId:
                                                                                sharkListItemItem.sharkId,
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(SizedBox(height: 2.0))
                                                  .around(
                                                      SizedBox(height: 2.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
