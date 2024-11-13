def f(x):
    return int(1.09 * x - 200)

def nb_moustiques(nb_debut, annee_voulue):
    annee_actuelle = 2017
    nb_actuel = nb_debut
    
    while annee_actuelle < annee_voulue:
        nb_actuel = f(nb_actuel)
        annee_actuelle += 1
        
    return nb_actuel

def annee_atteindra(seuil, nb_debut):
    annee_actuelle = 2017
    nb_actuel = nb_debut
    
    while nb_actuel < seuil:
        nb_actuel = f(nb_actuel)
        annee_actuelle += 1
        
    return annee_actuelle

if __name__ == "__main__":  # NE PAS SUPPRIMER CETTE LIGNE
    print("Debut du prog. principal")
    
    marc_estimation = int(input("estimation marc moustiques en 2017 : "))
    alice_estimation = int(input("estimation alice pour moustiques en 2017 : "))
        
    annee_voulue = int(input("année pour calculer l'estimation : "))
        
    print("selon marc : ",{nb_moustiques(marc_estimation, annee_voulue)})
    print("selon alice : ",{nb_moustiques(alice_estimation, annee_voulue)})
        
    seuil = int(input("seuil pour la population de moustiques : "))
    print("selon marc : ",{annee_atteindra(seuil, marc_estimation)})
    print("selon alice : ",{annee_atteindra(seuil, alice_estimation)})