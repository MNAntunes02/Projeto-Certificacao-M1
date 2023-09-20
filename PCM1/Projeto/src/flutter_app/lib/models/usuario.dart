class Usuario {
  final String cpf;
  final String sistema;
  final String perfil;

  const Usuario({
    required this.cpf,
    required this.sistema,
    required this.perfil,
  });

  static Usuario fromJson(json) {
    return Usuario(
      cpf: json['cpf'] ?? '',
      sistema: json['sistema'] ?? '',
      perfil: json['perfil'] ?? '',
    );
  }
}
