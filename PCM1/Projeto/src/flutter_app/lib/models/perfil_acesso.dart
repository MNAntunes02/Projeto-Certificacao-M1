class PerfilAcesso {
  final String idSistema;
  final String perfil;
  final String descricao;

  const PerfilAcesso({
    required this.idSistema,
    required this.perfil,
    required this.descricao,
  });

  //converte json em PerfilAcesso
  static PerfilAcesso fromJson(json) {
    return PerfilAcesso(
      idSistema: json['idSistema'] ?? '',
      perfil: json['perfil'] ?? '',
      descricao: json['descricao'] ?? '',
    );
  }
}
