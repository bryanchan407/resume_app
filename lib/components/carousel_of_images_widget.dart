import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carousel_of_images_model.dart';
export 'carousel_of_images_model.dart';

class CarouselOfImagesWidget extends StatefulWidget {
  const CarouselOfImagesWidget({
    Key? key,
    required this.index,
    required this.ec,
  }) : super(key: key);

  final int? index;
  final EcStruct? ec;

  @override
  _CarouselOfImagesWidgetState createState() => _CarouselOfImagesWidgetState();
}

class _CarouselOfImagesWidgetState extends State<CarouselOfImagesWidget> {
  late CarouselOfImagesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarouselOfImagesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final generateCarousel = widget.ec?.gallery?.toList() ?? [];
        return Container(
          width: double.infinity,
          height: 180.0,
          child: CarouselSlider.builder(
            itemCount: generateCarousel.length,
            itemBuilder: (context, generateCarouselIndex, _) {
              final generateCarouselItem =
                  generateCarousel[generateCarouselIndex];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  generateCarouselItem,
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              );
            },
            carouselController: _model.carouselController ??=
                CarouselController(),
            options: CarouselOptions(
              initialPage: min(1, generateCarousel.length - 1),
              viewportFraction: 0.5,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
              onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
            ),
          ),
        );
      },
    );
  }
}
