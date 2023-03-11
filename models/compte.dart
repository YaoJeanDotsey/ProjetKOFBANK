enum TypeCompte { EPARGNE, COURANT }

class Compte {
  String numCpt;
  double solde;
  DateTime dateCrea;
  TypeCompte type;

  Compte(this.numCpt, this.solde, this.dateCrea, this.type);

  faireDept(double montant) {
    this.solde += montant;
  }

  faireRetrait(double montant) {
    if (this.solde >= montant) {
      this.solde -= montant;
      return true;
    }
    return false;
  }

  faireTransfert(Compte destinataire, double montant) {
    if (this.faireRetrait(montant)) {
      destinataire.faireDept(montant);
      return true;
    }
    return false;
  }
}
