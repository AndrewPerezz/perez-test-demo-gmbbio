import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'circle_winner_avatar_model.dart';
export 'circle_winner_avatar_model.dart';

class CircleWinnerAvatarWidget extends StatefulWidget {
  const CircleWinnerAvatarWidget({
    super.key,
    String? imgPath,
    Color? medalColor,
    String? playerName,
    required this.score,
    double? avatarSize,
    required this.sharkId,
  })  : this.imgPath = imgPath ??
            'https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg',
        this.medalColor = medalColor ?? const Color(0xFFFFFF00),
        this.playerName = playerName ?? 'Player 1',
        this.avatarSize = avatarSize ?? 100.0;

  final String imgPath;
  final Color medalColor;
  final String playerName;
  final int? score;
  final double avatarSize;
  final int? sharkId;

  @override
  State<CircleWinnerAvatarWidget> createState() =>
      _CircleWinnerAvatarWidgetState();
}

class _CircleWinnerAvatarWidgetState extends State<CircleWinnerAvatarWidget> {
  late CircleWinnerAvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CircleWinnerAvatarModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Stack(
            alignment: AlignmentDirectional(0.0, 1.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                child: Container(
                  width: widget!.avatarSize,
                  height: widget!.avatarSize * 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: widget!.avatarSize,
                    height: widget!.avatarSize,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).secondary,
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: AlignmentDirectional(1.0, 1.0),
                        end: AlignmentDirectional(-1.0, -1.0),
                      ),
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          width: valueOrDefault<double>(
                            widget!.avatarSize,
                            100.0,
                          ),
                          height: valueOrDefault<double>(
                            widget!.avatarSize,
                            100.0,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, 0.0),
                              image: CachedNetworkImageProvider(
                                valueOrDefault<String>(
                                  widget!.imgPath,
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/MarkCuban2023.jpg/440px-MarkCuban2023.jpg',
                                ),
                              ),
                            ),
                            shape: BoxShape.circle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: FaIcon(
                  FontAwesomeIcons.award,
                  color: widget!.medalColor,
                  size: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 30.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 34.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 34.0;
                    } else {
                      return 42.0;
                    }
                  }(),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('CIRCLE_WINNER_AVATAR_Text_x3rix1c8_ON_TA');
              logFirebaseEvent('Text_navigate_to');

              context.pushNamed(
                TeamDetailPageWidget.routeName,
                queryParameters: {
                  'amountInvested': serializeParam(
                    formatNumber(
                      widget!.score,
                      formatType: FormatType.compactLong,
                      currency: '\$',
                    ),
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
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
            child: Text(
              widget!.playerName,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      widget!.medalColor,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    fontSize: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 14.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 18.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 18.0;
                      } else {
                        return 18.0;
                      }
                    }(),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.0,
                  ),
            ),
          ),
        ),
        Text(
          formatNumber(
            widget!.score,
            formatType: FormatType.compact,
            currency: '\$',
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: valueOrDefault<Color>(
                  widget!.medalColor,
                  FlutterFlowTheme.of(context).primaryText,
                ),
                fontSize: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 14.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 18.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 18.0;
                  } else {
                    return 18.0;
                  }
                }(),
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.0,
              ),
        ),
      ],
    );
  }
}
