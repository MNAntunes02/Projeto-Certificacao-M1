class MatrizSod {
  final String idSistema1;
  final String nomePerfil1;
  final String idSistema2;
  final String nomePerfil2;

  const MatrizSod({
    required this.idSistema1,
    required this.nomePerfil1,
    required this.idSistema2,
    required this.nomePerfil2,
  });

  //converte json em MatrizSod
  static MatrizSod fromJson(json) {
    return MatrizSod(
      idSistema1: json['idSistema1'] ?? '',
      nomePerfil1: json['nomePerfil1'] ?? '',
      idSistema2: json['idSistema2'] ?? '',
      nomePerfil2: json['nomePerfil2'] ?? '',
    );
  }
}
