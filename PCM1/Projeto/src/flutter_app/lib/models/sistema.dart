class Sistema {
  final String idSistema;
  final String sistema;

  const Sistema({
    required this.idSistema,
    required this.sistema,
  });

  //converte json em Sistema
  static Sistema fromJson(json) {
    return Sistema(
      idSistema: json['idSistema'] ?? '',
      sistema: json['sistema'] ?? '',
    );
  }
}
