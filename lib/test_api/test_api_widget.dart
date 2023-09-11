import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_api_model.dart';
export 'test_api_model.dart';

class TestApiWidget extends StatefulWidget {
  const TestApiWidget({Key? key}) : super(key: key);

  @override
  _TestApiWidgetState createState() => _TestApiWidgetState();
}

class _TestApiWidgetState extends State<TestApiWidget> {
  late TestApiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestApiModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultef5 = await GetCountriesCall.call();
      if ((_model.apiResultef5?.succeeded ?? true)) {
        _model.aa = await actions.convertJSONArrayToListOfStruct(
          (_model.apiResultef5?.jsonBody ?? ''),
        );
        setState(() {
          FFAppState().Countries =
              FFAppState().Countries.toList().cast<CountryStruct>();
        });
      }
    });
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final asd = _model.aa!.toList();
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(asd.length, (asdIndex) {
                  final asdItem = asd[asdIndex];
                  return Text(
                    'Hello World',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
