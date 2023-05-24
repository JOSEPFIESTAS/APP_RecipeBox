import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fecha_forum_model.dart';
export 'fecha_forum_model.dart';

class FechaForumWidget extends StatefulWidget {
  const FechaForumWidget({Key? key}) : super(key: key);

  @override
  _FechaForumWidgetState createState() => _FechaForumWidgetState();
}

class _FechaForumWidgetState extends State<FechaForumWidget> {
  late FechaForumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FechaForumModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
