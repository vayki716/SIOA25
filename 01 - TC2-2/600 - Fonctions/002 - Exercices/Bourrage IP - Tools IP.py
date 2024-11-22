def bourrageIP(bits: str, nb: int = 8) -> str:
    """
    rôle: ajoute des bits nuls à gauche (poids fort) de la chaine de bits
    entrée: la chaine de bits, le nombre de bits de la chaine retournée (facultatif, 8 par défaut)
    sortie (retour): la chaine de bits avec bourrage à gauche (valeur identique) et de longueur nb
    préconditions: nb >= len(bits)
    
    >>> bourrageIp("0110",8)
    "00000110"
    >>> bourrageIp("1",16)
    "0000000000000001"
    >>> bourrageIp("10001001",12)
    "000010001001"
    """
    
    if nb < len(bits):
        print('nope')
    
    num = nb - len(bits)
    bitsfnl = '0' * num + bits
    
    return bitsfnl

if __name__=="__main__": # NE PAS SUPPRIMER CETTE LIGNE

    print(bourrageIP("0110", 8))
    print(bourrageIP("1", 16))
    print(bourrageIP("10001001", 12))
