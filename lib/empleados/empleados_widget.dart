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

class EmpleadosWidget extends StatefulWidget {
  const EmpleadosWidget({Key key}) : super(key: key);

  @override
  _EmpleadosWidgetState createState() => _EmpleadosWidgetState();
}

class _EmpleadosWidgetState extends State<EmpleadosWidget> {
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
          'Empleados',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
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
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkRh3ez5-_8ZnqDtadxbsI5JPiJasOhqW8jw&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERA: Anita la Huerfanita',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://media.revistavanityfair.es/photos/60e83e4dc575901c426277af/master/w_1600%2Cc_limit/175987.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERA: Joanna Esoinoza',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://i.pinimg.com/originals/39/4b/8f/394b8ffed08bbe4607dd31a251a3d98d.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERA: Evelyn Dominguez',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://media.revistagq.com/photos/60019717f9dbd44e0510990a/3:4/w_2178,h_2904,c_limit/GettyImages-1199756496.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Emilio Guerrero',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Jason_Momoa_%2843055621224%29_%28cropped%29.jpg/1200px-Jason_Momoa_%2843055621224%29_%28cropped%29.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Emiliano Dominguez',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'data:image/jpeg;base64,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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Edwin Martinez',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://imagenes.elpais.com/resizer/RuKXtLGcLaDaTTh8bnZGDK6iBxI=/1960x1470/cloudfront-eu-central-1.images.arcpublishing.com/prisa/DWHHZ2POBNH4BPM5JHDSF5RJDA.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Cesar Rivaz',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://www.cinemascomics.com/wp-content/uploads/2020/09/Dwayne-Johnson-entrenando.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Joshua Nava',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x32000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://elcomercio.pe/resizer/yCKyxKzV2VfWCQayyNKjqLjPrfs=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/HYGE3EGSMBCSLJSQOILTY2V6UY.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'CAJERO: Jonathan Gonzales',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
