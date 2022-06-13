import '../desarrollador/desarrollador_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../main.dart';
import '../perfil/perfil_widget.dart';
import '../registroclientes/registroclientes_widget.dart';
import '../registroempleados/registroempleados_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclucionesWidget extends StatefulWidget {
  const ConclucionesWidget({Key key}) : super(key: key);

  @override
  _ConclucionesWidgetState createState() => _ConclucionesWidgetState();
}

class _ConclucionesWidgetState extends State<ConclucionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE77200),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Concluciones',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () async {
                      if (scaffoldKey.currentState.isDrawerOpen ||
                          scaffoldKey.currentState.isEndDrawerOpen) {
                        Navigator.pop(context);
                      }
                    },
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerfilWidget(),
                  ),
                );
              },
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYE4XevC4o5FrRny0owQOs0BcjUJOVRpH0Dg&usqp=CAU',
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Pedrito Sola',
                  style: FlutterFlowTheme.of(context).title1,
                ),
                Text(
                  'pedritosola18@gmail.com',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesarrolladorWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    title: Text(
                      'Desarrollador',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarPage(initialPage: 'inicio'),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text(
                      'Inicio',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'empleados'),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.users,
                    ),
                    title: Text(
                      'Empleados',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'Articulos'),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.shoppingCart,
                    ),
                    title: Text(
                      'Productos',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'Concluciones'),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book_outlined,
                    ),
                    title: Text(
                      'Conclucion',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistroempleadosWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.how_to_reg_rounded,
                      size: 35,
                    ),
                    title: Text(
                      'Registro empleados',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistroclientesWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.how_to_reg_sharp,
                      size: 35,
                    ),
                    title: Text(
                      'Registro clientes',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageWidget(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 35,
                ),
                title: Text(
                  'Salir',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 40, 5, 0),
                child: Container(
                  width: 375,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: Text(
                      'Mis concluciones sobre este proyecto, son que fue algo entretenido pero vastante estresante porque puede que no sepas hacer ciertas cosas y te empiesas a estresar pero en lo particular todo este tramo que hicimos lamentablemente es el ultimo por el momento, en lo general me diverti y estoy satisfecho con el resultado que e conseguido en este proyecto',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Image.network(
                  'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2021/11/logro-platino-2544353.jpg?itok=wjGB_7uU',
                  width: 360,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
