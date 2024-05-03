class Usuario{
  String _nome = "";
  String _senha = "";
  List<List<String>> _usuarios = [["Lorena","1234"], ["Carlos","4321"], ["Julio", "7894"]]; 
  
  Usuario(this._nome, this._senha);

  get usuarios => this._usuarios;

  set usuarios( value) => this._usuarios = value;

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  String get senha => this._senha;

  set senha(String value) => this._senha = value;

}