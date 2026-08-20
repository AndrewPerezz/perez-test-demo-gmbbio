import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'player_list_tile_model.dart';
export 'player_list_tile_model.dart';

class PlayerListTileWidget extends StatefulWidget {
  const PlayerListTileWidget({
    super.key,
    this.rank,
    this.img,
    required this.name,
    this.amount,
    required this.sharkId,
  });

  final int? rank;
  final String? img;
  final String? name;
  final String? amount;
  final int? sharkId;

  @override
  State<PlayerListTileWidget> createState() => _PlayerListTileWidgetState();
}

class _PlayerListTileWidgetState extends State<PlayerListTileWidget> {
  late PlayerListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerListTileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 50.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                  ),
                ),
                Text(
                  '#${((widget!.rank!) + 1).toString()}',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.readexPro(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          () {
                            if (widget!.rank == 0) {
                              return FlutterFlowTheme.of(context).goldColor;
                            } else if (widget!.rank == 1) {
                              return FlutterFlowTheme.of(context).silverColor;
                            } else if (widget!.rank == 2) {
                              return FlutterFlowTheme.of(context).bronzeColor;
                            } else {
                              return FlutterFlowTheme.of(context).primaryText;
                            }
                          }(),
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('PLAYER_LIST_TILE_Stack_hl7gn2zg_ON_TAP');
                  logFirebaseEvent('Stack_navigate_to');

                  context.pushNamed(
                    TeamDetailPageWidget.routeName,
                    queryParameters: {
                      'amountInvested': serializeParam(
                        widget!.amount,
                        ParamType.String,
                      ),
                      'categoryFilter': serializeParam(
                        FFAppState().categoryFilter,
                        ParamType.String,
                      ),
                      'genderFilter': serializeParam(
                        FFAppState().genderFilter,
                        ParamType.String,
                      ),
                      'sharkId': serializeParam(
                        widget!.sharkId,
                        ParamType.int,
                      ),
                      'avatarSize': serializeParam(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 120.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 180.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 240.0;
                          } else {
                            return 320.0;
                          }
                        }(),
                        ParamType.double,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget!.img!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget!.name!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (widget!.rank == 0) {
                                          return FlutterFlowTheme.of(context)
                                              .goldColor;
                                        } else if (widget!.rank == 1) {
                                          return FlutterFlowTheme.of(context)
                                              .silverColor;
                                        } else if (widget!.rank == 2) {
                                          return FlutterFlowTheme.of(context)
                                              .bronzeColor;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .primaryText;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(width: 2.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                    ),
                  ),
                  Text(
                    widget!.amount!,
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: valueOrDefault<Color>(
                            () {
                              if (widget!.rank == 0) {
                                return FlutterFlowTheme.of(context).goldColor;
                              } else if (widget!.rank == 1) {
                                return FlutterFlowTheme.of(context).silverColor;
                              } else if (widget!.rank == 2) {
                                return FlutterFlowTheme.of(context).bronzeColor;
                              } else {
                                return FlutterFlowTheme.of(context).primaryText;
                              }
                            }(),
                            FlutterFlowTheme.of(context).primaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
