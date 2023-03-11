import 'compte.dart';

class Client {
  String nom, prenom, email, tel;
  DateTime dateNaiss;
  Compte compte;

  Client(
      this.nom, this.prenom, this.email, this.tel, this.dateNaiss, this.compte);
}
