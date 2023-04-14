import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '3sxn8r97' /* Página Principal */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '7pzrjoc8' /* Aceptar */,
                    ),
                    icon: Icon(
                      Icons.check,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).success,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 20.0,
                      borderSide: BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        FFLocalizations.of(context).getText(
                          '2x3i6awe' /* San José */,
                        ),
                        FFLocalizations.of(context).getText(
                          'l86lb8qp' /* Alajuela */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ihhfqnh2' /* Heredia */,
                        ),
                        FFLocalizations.of(context).getText(
                          'kp3pou0a' /* Cartago */,
                        ),
                        FFLocalizations.of(context).getText(
                          'f8j958hs' /* Puntarenas */,
                        ),
                        FFLocalizations.of(context).getText(
                          '5nxy2yju' /* Limon */,
                        ),
                        FFLocalizations.of(context).getText(
                          'h661aemq' /* Guanacaste */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 180.0,
                      height: 50.0,
                      searchHintTextStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      textStyle: FlutterFlowTheme.of(context).bodyMedium,
                      hintText: FFLocalizations.of(context).getText(
                        '39subupw' /* Seleccione provincia */,
                      ),
                      searchHintText: FFLocalizations.of(context).getText(
                        'gm0zoasy' /* Search for an item... */,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 0.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (_model.dropDownValue == 'San José')
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          _model.dropDownValue,
                          'Sin seleccionar',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 22.0,
                            ),
                      ),
                    ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowLanguageSelector(
                      width: 200.0,
                      backgroundColor: FlutterFlowTheme.of(context).tertiary,
                      borderColor: Colors.transparent,
                      dropdownIconColor: Colors.white,
                      borderRadius: 8.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 13.0,
                      ),
                      hideFlags: false,
                      flagSize: 24.0,
                      flagTextGap: 8.0,
                      currentLanguage: FFLocalizations.of(context).languageCode,
                      languages: FFLocalizations.languages(),
                      onChanged: (lang) => setAppLanguage(context, lang),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
