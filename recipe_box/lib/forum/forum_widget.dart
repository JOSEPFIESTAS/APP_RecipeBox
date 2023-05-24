import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forum_model.dart';
export 'forum_model.dart';

class ForumWidget extends StatefulWidget {
  const ForumWidget({Key? key}) : super(key: key);

  @override
  _ForumWidgetState createState() => _ForumWidgetState();
}

class _ForumWidgetState extends State<ForumWidget> {
  late ForumModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForumModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFCF3D1),
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.2,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFCF3D1),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.1, -0.45),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'Forum',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );

                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 225.0,
                        height: 57.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.75, 0.0),
                              child: SelectionArea(
                                  child: Text(
                                'Forum',
                                style:
                                    FlutterFlowTheme.of(context).displaySmall,
                              )),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.65, 0.25),
                              child: Icon(
                                Icons.forum,
                                color: Color(0xFFF5460F),
                                size: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.1, -0.65),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'Home',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );

                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 225.0,
                        height: 57.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.75, 0.0),
                              child: SelectionArea(
                                  child: Text(
                                'Home',
                                style:
                                    FlutterFlowTheme.of(context).displaySmall,
                              )),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.6, -0.15),
                              child: Icon(
                                Icons.home,
                                color: Color(0xFFF5460F),
                                size: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFFFCF3D1),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 10.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            currentUserPhoto,
                            'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                          ),
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 40.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        currentUserDisplayName,
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Perfil');
                      },
                      child: Container(
                        width: 160.0,
                        height: 37.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.8, 0.0),
                              child: Icon(
                                Icons.menu_book_rounded,
                                color: Color(0xFFF5460F),
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.45, -0.05),
                              child: Text(
                                'My recipes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('CrearReceta');
                      },
                      child: Container(
                        width: 160.0,
                        height: 37.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.8, 0.0),
                              child: Icon(
                                Icons.add_rounded,
                                color: Color(0xFFF5460F),
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.75, -0.05),
                              child: Text(
                                'Create recipe',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('CrearForo');
                      },
                      child: Container(
                        width: 160.0,
                        height: 37.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.8, 0.0),
                              child: Icon(
                                Icons.add_rounded,
                                color: Color(0xFFF5460F),
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.55, -0.05),
                              child: Text(
                                'Create post',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('EditProfileScreen');
                      },
                      child: Container(
                        width: 160.0,
                        height: 37.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.8, 0.0),
                              child: Icon(
                                Icons.edit_rounded,
                                color: Color(0xFFF5460F),
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.45, -0.05),
                              child: Text(
                                'Edit profile',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                    child: Container(
                      width: 160.0,
                      height: 37.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 4.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('Login', context.mounted);
                        },
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.8, 0.0),
                              child: Icon(
                                Icons.logout,
                                color: Color(0xFFF5460F),
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.3, -0.05),
                              child: Text(
                                'Log out',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 125.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFE892),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.95, 0.5),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      child: Icon(
                        Icons.menu_rounded,
                        color: Color(0xFFF5460F),
                        size: 40.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.45),
                    child: Container(
                      width: 113.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 4.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xFFDCDCDC),
                          width: 1.0,
                        ),
                      ),
                      alignment: AlignmentDirectional(-0.8, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(-0.05, 0.0),
                        child: Text(
                          'Forum',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.65, 0.5),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('BuscadorForo');
                      },
                      child: Icon(
                        Icons.search_outlined,
                        color: Color(0xFFF5460F),
                        size: 40.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.9, 0.45),
                    child: AuthUserStreamWidget(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            valueOrDefault<String>(
                              currentUserPhoto,
                              'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: StreamBuilder<List<ForumRecord>>(
                  stream: queryForumRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    List<ForumRecord> listViewForumRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewForumRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewForumRecord =
                            listViewForumRecordList[listViewIndex];
                        return Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 30.0, 30.0, 20.0),
                            child: StreamBuilder<List<UsersRecord>>(
                              stream: queryUsersRecord(
                                queryBuilder: (usersRecord) =>
                                    usersRecord.where('uid',
                                        isEqualTo:
                                            listViewForumRecord.usuario?.id),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<UsersRecord> containerUsersRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final containerUsersRecord =
                                    containerUsersRecordList.isNotEmpty
                                        ? containerUsersRecordList.first
                                        : null;
                                return Container(
                                  width: double.infinity,
                                  height: 270.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFE892),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'InteriorForum',
                                        queryParams: {
                                          'foro': serializeParam(
                                            listViewForumRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -0.35),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 7.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  listViewForumRecord.imagen,
                                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png',
                                                ),
                                                width: 354.3,
                                                height: 170.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.96, 0.95),
                                          child: Container(
                                            width: 126.0,
                                            height: 26.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFD9D9D9),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: SelectionArea(
                                                child: Text(
                                              listViewForumRecord.categoria,
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15.0,
                                                      ),
                                            )),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.95, -0.94),
                                          child: SelectionArea(
                                              child: Text(
                                            listViewForumRecord.titulo,
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                          )),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.83, 0.95),
                                          child: Icon(
                                            Icons.comment_outlined,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.93, 0.93),
                                          child: FutureBuilder<int>(
                                            future: queryCommentsRecordCount(
                                              queryBuilder: (commentsRecord) =>
                                                  commentsRecord.where('forum',
                                                      isEqualTo:
                                                          listViewForumRecord
                                                              .reference),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                );
                                              }
                                              int textCount = snapshot.data!;
                                              return SelectionArea(
                                                  child: Text(
                                                textCount.toString(),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ));
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                              -0.69, -0.94),
                                          child: SelectionArea(
                                              child: Text(
                                            containerUsersRecord!.displayName,
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          )),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                              -0.97, -0.97),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                containerUsersRecord!.photoUrl,
                                                'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.97, 0.7),
                                          child: Text(
                                            dateTimeFormat('relative',
                                                listViewForumRecord.fCreado!),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
