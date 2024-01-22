import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_component_model.dart';
export 'list_component_model.dart';

class ListComponentWidget extends StatefulWidget {
  const ListComponentWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.index,
    required this.typeEC,
    required this.description,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final int? index;
  final String? typeEC;
  final String? description;

  @override
  _ListComponentWidgetState createState() => _ListComponentWidgetState();
}

class _ListComponentWidgetState extends State<ListComponentWidget> {
  late ListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListComponentModel());

    _model.titleController ??= TextEditingController(text: widget.title);
    _model.titleFocusNode ??= FocusNode();
    _model.titleFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          setState(() {
            FFAppState().updateAwardsAtIndex(
              widget.index!,
              (e) => e..title = _model.titleController.text,
            );
          });
        } else {
          if (widget.typeEC == 'athletics') {
            setState(() {
              FFAppState().updateAthleticsAtIndex(
                widget.index!,
                (e) => e..title = _model.titleController.text,
              );
            });
          } else {
            if (widget.typeEC == 'clubs') {
              setState(() {
                FFAppState().updateClubsAtIndex(
                  widget.index!,
                  (e) => e..title = _model.titleController.text,
                );
              });
            } else {
              if (widget.typeEC == 'classes') {
                setState(() {
                  FFAppState().updateClassesAtIndex(
                    widget.index!,
                    (e) => e..title = _model.titleController.text,
                  );
                });
              } else {
                if (widget.typeEC == 'performingArts') {
                  setState(() {
                    FFAppState().updatePerformingArtsAtIndex(
                      widget.index!,
                      (e) => e..photoUrl = _model.titleController.text,
                    );
                  });
                } else {
                  if (widget.typeEC == 'communityService') {
                    setState(() {
                      FFAppState().updateCommunityServiceAtIndex(
                        widget.index!,
                        (e) => e..title = _model.titleController.text,
                      );
                    });
                  } else {
                    return;
                  }
                }
              }
            }
          }
        }
      },
    );
    _model.subtitleController ??= TextEditingController(text: widget.subtitle);
    _model.subtitleFocusNode ??= FocusNode();
    _model.subtitleFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          setState(() {
            FFAppState().updateAwardsAtIndex(
              widget.index!,
              (e) => e..subtitle = _model.subtitleController.text,
            );
          });
        } else {
          if (widget.typeEC == 'athletics') {
            setState(() {
              FFAppState().updateAthleticsAtIndex(
                widget.index!,
                (e) => e..subtitle = _model.subtitleController.text,
              );
            });
          } else {
            if (widget.typeEC == 'clubs') {
              setState(() {
                FFAppState().updateClubsAtIndex(
                  widget.index!,
                  (e) => e..subtitle = _model.subtitleController.text,
                );
              });
            } else {
              if (widget.typeEC == 'classes') {
                setState(() {
                  FFAppState().updateClassesAtIndex(
                    widget.index!,
                    (e) => e..subtitle = _model.subtitleController.text,
                  );
                });
              } else {
                if (widget.typeEC == 'performingArts') {
                  setState(() {
                    FFAppState().updatePerformingArtsAtIndex(
                      widget.index!,
                      (e) => e..subtitle = _model.subtitleController.text,
                    );
                  });
                } else {
                  if (widget.typeEC == 'communityService') {
                    setState(() {
                      FFAppState().updateCommunityServiceAtIndex(
                        widget.index!,
                        (e) => e..subtitle = _model.subtitleController.text,
                      );
                    });
                  } else {
                    return;
                  }
                }
              }
            }
          }
        }
      },
    );
    _model.descriptionController ??=
        TextEditingController(text: widget.description);
    _model.descriptionFocusNode ??= FocusNode();
    _model.descriptionFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          setState(() {
            FFAppState().updateAwardsAtIndex(
              widget.index!,
              (e) => e..description = _model.descriptionController.text,
            );
          });
        } else {
          if (widget.typeEC == 'athletics') {
            setState(() {
              FFAppState().updateAthleticsAtIndex(
                widget.index!,
                (e) => e..description = _model.descriptionController.text,
              );
            });
          } else {
            if (widget.typeEC == 'clubs') {
              setState(() {
                FFAppState().updateClubsAtIndex(
                  widget.index!,
                  (e) => e..description = _model.descriptionController.text,
                );
              });
            } else {
              if (widget.typeEC == 'classes') {
                setState(() {
                  FFAppState().updateClassesAtIndex(
                    widget.index!,
                    (e) => e..description = _model.descriptionController.text,
                  );
                });
              } else {
                if (widget.typeEC == 'performingArts') {
                  setState(() {
                    FFAppState().updatePerformingArtsAtIndex(
                      widget.index!,
                      (e) => e..description = _model.descriptionController.text,
                    );
                  });
                } else {
                  if (widget.typeEC == 'communityService') {
                    setState(() {
                      FFAppState().updateCommunityServiceAtIndex(
                        widget.index!,
                        (e) =>
                            e..description = _model.descriptionController.text,
                      );
                    });
                  } else {
                    return;
                  }
                }
              }
            }
          }
        }
      },
    );
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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.titleController,
                focusNode: _model.titleFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                maxLines: null,
                validator: _model.titleControllerValidator.asValidator(context),
              ),
            ),
          ),
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.subtitleController,
                focusNode: _model.subtitleFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Subtitle',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                    ),
                maxLines: null,
                validator:
                    _model.subtitleControllerValidator.asValidator(context),
              ),
            ),
          ),
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.descriptionController,
                focusNode: _model.descriptionFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 12.0,
                    ),
                maxLines: null,
                validator:
                    _model.descriptionControllerValidator.asValidator(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
