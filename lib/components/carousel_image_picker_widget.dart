import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carousel_image_picker_model.dart';
export 'carousel_image_picker_model.dart';

class CarouselImagePickerWidget extends StatefulWidget {
  const CarouselImagePickerWidget({
    super.key,
    required this.index,
    required this.typeEC,
  });

  final int? index;
  final String? typeEC;

  @override
  State<CarouselImagePickerWidget> createState() =>
      _CarouselImagePickerWidgetState();
}

class _CarouselImagePickerWidgetState extends State<CarouselImagePickerWidget> {
  late CarouselImagePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarouselImagePickerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowIconButton(
      borderColor: FlutterFlowTheme.of(context).primary,
      borderRadius: 8.0,
      borderWidth: 1.0,
      buttonSize: 40.0,
      fillColor: Color(0xFFFFAF30),
      icon: Icon(
        Icons.add_to_photos,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24.0,
      ),
      onPressed: () async {
        final selectedMedia = await selectMedia(
          mediaSource: MediaSource.photoGallery,
          multiImage: true,
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
              _model.uploadedLocalFiles = selectedUploadedFiles;
              _model.uploadedFileUrls = downloadUrls;
            });
          } else {
            setState(() {});
            return;
          }
        }

        if (widget.typeEC == 'awards') {
          FFAppState().update(() {
            FFAppState().updateAwardsAtIndex(
              widget.index!,
              (e) => e..gallery = _model.uploadedFileUrls.toList(),
            );
          });
        } else {
          if (widget.typeEC == 'athletics') {
            FFAppState().update(() {
              FFAppState().updateAthleticsAtIndex(
                widget.index!,
                (e) => e..gallery = _model.uploadedFileUrls.toList(),
              );
            });
          } else {
            if (widget.typeEC == 'clubs') {
              FFAppState().update(() {
                FFAppState().updateClubsAtIndex(
                  widget.index!,
                  (e) => e..gallery = _model.uploadedFileUrls.toList(),
                );
              });
            } else {
              if (widget.typeEC == 'classes') {
                FFAppState().update(() {
                  FFAppState().updateClassesAtIndex(
                    widget.index!,
                    (e) => e..gallery = _model.uploadedFileUrls.toList(),
                  );
                });
              } else {
                if (widget.typeEC == 'performingArts') {
                  FFAppState().update(() {
                    FFAppState().updatePerformingArtsAtIndex(
                      widget.index!,
                      (e) => e..gallery = _model.uploadedFileUrls.toList(),
                    );
                  });
                } else {
                  if (widget.typeEC == 'communityService') {
                    FFAppState().update(() {
                      FFAppState().updateCommunityServiceAtIndex(
                        widget.index!,
                        (e) => e..gallery = _model.uploadedFileUrls.toList(),
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
}
