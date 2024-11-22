def ajoute_prefixe(mot, prefixe):
    return prefixe + mot

def repete(mot, n):
    return mot * n

def ajoute_longueur(mot):
    longueur = str(len(mot))
    return longueur + mot + longueur

def que_des_nombres(mot):
    return ''.join(str(i + 1) for i in range(len(mot)))

if __name__ == "__main__": # NE PAS SUPPRIMER CETTE LIGNE

    print(ajoute_prefixe("mentir", "de"))
    print(repete("bla", 3))
    print(ajoute_longueur("toto"))
    print(que_des_nombres("toto"))
    print(que_des_nombres("bonjour"))