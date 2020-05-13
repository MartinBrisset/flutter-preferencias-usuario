import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {

    this._prefs = await SharedPreferences.getInstance();

  }

  // bool _colorSecundario;
  // int _genero;
  // String _nombre;

  //get y set del genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }
  //get y set del color
    get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }
  //   //get y set del nombre del usuario
    get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (String value) {
    _prefs.setString('nombreUsuario', value);
  }

    //   //get y set de la ultima pagina
    get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina (String value) {
    _prefs.setString('ultimaPagina', value);
  }





}