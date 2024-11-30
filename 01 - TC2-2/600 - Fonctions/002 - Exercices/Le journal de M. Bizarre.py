def lundi(mot):
    return mot + " " + mot

def mardi(mot):
    if len(mot) % 2 == 0:
        return (mot + '-') * 5 + mot
    else:
        return (mot + ',') * 2 + mot


def mercredi(mot):
    return "impair" if len(mot) % 2 != 0 else mot

def jeudi(mot):
    repeat_count = len(mot) % 3
    return mot * repeat_count



def transforme(mot, num_jour):
    if num_jour == 1:
        return lundi(mot)
    elif num_jour == 2:
        return mardi(mot)
    elif num_jour == 3:
        return mercredi(mot)
    elif num_jour == 4:
        return jeudi(mot)
    elif num_jour == 5:
        return mot
    else:
        return "pas de journal le week-end"




if __name__ == "__main__":  # NE PAS SUPPRIMER CETTE LIGNE
    print("Debut du prog. principal")
    print('')
    print('transforme("bonjour", 1) : ')
    print(transforme("bonjour", 1))
    print('')
    print('transforme("abracadabra", 2)')
    print(transforme("abracadabra", 2))
    print('')
    print('transforme("mercredi", 3)')
    print(transforme("mercredi", 3))
    print('')
    print('transforme("merci", 4)')
    print(transforme("merci", 4))
    print('')
    print('transforme("journal", 5)')
    print(transforme("journal", 5))
    print('')
    print('transforme("sddssd", 6)')
    print(transforme("sddssd", 6))
