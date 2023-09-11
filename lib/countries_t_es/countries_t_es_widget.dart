import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'countries_t_es_model.dart';
export 'countries_t_es_model.dart';

class CountriesTEsWidget extends StatefulWidget {
  const CountriesTEsWidget({
    Key? key,
    required this.selectedTeamRef,
  }) : super(key: key);

  final DocumentReference? selectedTeamRef;

  @override
  _CountriesTEsWidgetState createState() => _CountriesTEsWidgetState();
}

class _CountriesTEsWidgetState extends State<CountriesTEsWidget> {
  late CountriesTEsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountriesTEsModel());
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Builder(
              builder: (context) {
                final asa = FFAppState().Countries.toList();
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(asa.length, (asaIndex) {
                    final asaItem = asa[asaIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await widget.selectedTeamRef!
                            .update(createTeamsRecordData(
                          countryName: asaItem.name,
                          countryFlag: asaItem.flag,
                        ));
                        context.safePop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 30.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                asaItem.flag,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            asaItem.name,
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
