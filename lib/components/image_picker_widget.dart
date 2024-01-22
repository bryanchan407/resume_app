import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_picker_model.dart';
export 'image_picker_model.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({
    Key? key,
    required this.imagePathInitial,
    required this.index,
    required this.typeEC,
  }) : super(key: key);

  final String? imagePathInitial;
  final int? index;
  final String? typeEC;

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  late ImagePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePickerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        final selectedMedia = await selectMediaWithSourceBottomSheet(
          context: context,
          allowPhoto: true,
          pickerFontFamily: 'Poppins',
        );
        if (selectedMedia != null &&
            selectedMedia
                .every((m) => validateFileFormat(m.storagePath, context))) {
          setState(() => _model.isDataUploading = true);
          var selectedUploadedFiles = <FFUploadedFile>[];

          var downloadUrls = <String>[];
          try {
            selectedUploadedFiles = selectedMedia
                .map((m) => FFUploadedFile(
                      name: m.storagePath.split('/').last,
                      bytes: m.bytes,
                      height: m.dimensions?.height,
                      width: m.dimensions?.width,
                      blurHash: m.blurHash,
                    ))
                .toList();

            downloadUrls = (await Future.wait(
              selectedMedia.map(
                (m) async => await uploadData(m.storagePath, m.bytes),
              ),
            ))
                .where((u) => u != null)
                .map((u) => u!)
                .toList();
          } finally {
            _model.isDataUploading = false;
          }
          if (selectedUploadedFiles.length == selectedMedia.length &&
              downloadUrls.length == selectedMedia.length) {
            setState(() {
              _model.uploadedLocalFile = selectedUploadedFiles.first;
              _model.uploadedFileUrl = downloadUrls.first;
            });
          } else {
            setState(() {});
            return;
          }
        }

        if (widget.typeEC == 'awards') {
          setState(() {
            FFAppState().updateAwardsAtIndex(
              widget.index!,
              (e) => e..photoUrl = _model.uploadedFileUrl,
            );
          });
        } else {
          if (widget.typeEC == 'athletics') {
            setState(() {
              FFAppState().updateAthleticsAtIndex(
                widget.index!,
                (e) => e..photoUrl = _model.uploadedFileUrl,
              );
            });
          } else {
            if (widget.typeEC == 'clubs') {
              setState(() {
                FFAppState().updateClubsAtIndex(
                  widget.index!,
                  (e) => e..photoUrl = _model.uploadedFileUrl,
                );
              });
            } else {
              if (widget.typeEC == 'classes') {
                setState(() {
                  FFAppState().updateClassesAtIndex(
                    widget.index!,
                    (e) => e..photoUrl = _model.uploadedFileUrl,
                  );
                });
              } else {
                if (widget.typeEC == 'performingArts') {
                  setState(() {
                    FFAppState().updatePerformingArtsAtIndex(
                      widget.index!,
                      (e) => e..photoUrl = _model.uploadedFileUrl,
                    );
                  });
                } else {
                  if (widget.typeEC == 'communityService') {
                    setState(() {
                      FFAppState().updateCommunityServiceAtIndex(
                        widget.index!,
                        (e) => e..photoUrl = _model.uploadedFileUrl,
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
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).alternate,
          borderRadius: BorderRadius.circular(8.0),
          shape: BoxShape.rectangle,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            () {
              if (_model.isDataUploading) {
                return _model.uploadedFileUrl;
              } else if (widget.imagePathInitial != null &&
                  widget.imagePathInitial != '') {
                return widget.imagePathInitial!;
              } else {
                return valueOrDefault<String>(
                  _model.uploadedFileUrl,
                  'https://www.ledr.com/colours/white.jpg',
                );
              }
            }(),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
