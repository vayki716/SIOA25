
def prix_menu(menu, avecBoisson=False, nb_supplement=0):

    prix_base = {"Basique": 9, "Gourmand": 15, "Complet": 19}

    prix = prix_base.get(menu, 0)
    if avecBoisson:
        prix += 4
    prix += nb_supplement * 1.5
    return prix

def table_Dupont():

    prix_jacqueline = prix_menu("Basique")
    prix_michel = prix_menu("Gourmand", avecBoisson=True)
    prix_johanna = prix_menu("Basique", nb_supplement=2)  # fromage + café
    prix_antoine = prix_menu("Basique", avecBoisson=True, nb_supplement=1)  # boisson + café
    

    total = prix_jacqueline + prix_michel + prix_johanna + prix_antoine
    return total





if __name__=="__main__": # NE PAS SUPPRIMER CETTE LIGNE
    table_Dupont()