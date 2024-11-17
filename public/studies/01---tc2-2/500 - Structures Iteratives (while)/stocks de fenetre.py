# Ecrivez votre programme ci-dessous.


def stock(n,t):
    liste = [1024]
    num = 1024


    for e in range(n):

        if int(e+1)%4 == 0:

            num=num-(20+(e+2)+500)
            liste.append(num)

        elif (e+1)%4 != 0:

            num=num-(20+(e+2))
            liste.append(num)


    if t == "a":

        for e in range(n):
            print("Semaine",e+1,": stock",liste[e])

    if t == "b":

        maxime = max(liste)
        print("Stock max égal à",maxime,", atteint en semaine",liste.index(maxime)+1)





def menu():
    print("a. Prévisions de stock")
    print("b. Stock maximal")
    print("(q pour quitter)")
    i = input(": ")
    

    while i != "q":

        if i == "a":
            n = int(input("numero de semaine : "))
            stock(n,"a")

        elif i == "b":
            n = int(input("numero de semaine : "))
            stock(n,"b")

        else:
            print("Choix incorrect, recommencez")
            i = input(": ")

menu()







# Rappel de l'exemple:
##Le programme doit commencer par afficher le menu suivant:
##
##a. Prévisions de stock 
##b. Stock maximal 
##(q pour quitter)
##
##Si Laurence tape q , le programme s'arrête.
##
##Si Laurence tape a , le programme lui demande un numéro de semaine n
##puis affiche les prévisions de stock de la semaine 1 à la semaine n.
##Par exemple: 
##Choisissez une semaine : 6 
##Semaine 1 : stock 1024 
##Semaine 2 : stock 1002 
##Semaine 3 : stock 979 
##Semaine 4 : stock 1455 
##Semaine 5 : stock 1430 
##Semaine 6 : stock 1404 
##
##Si Laurence tape b , le programme lui demande un numéro de semaine n
##puis calcule quel sera le stock maximal entre la semaine 1 et la semaine n
##(et lui indique à quelle semaine ce stock maximal sera atteint).
##Par exemple: Choisissez une semaine : 6 
##Stock max égal à 1455 , atteint en semaine 4
##
##Si Laurence tape autre chose que a, b ou q , le programme lui affiche un
##message d'erreur Choix incorrect, recommencez,
##et recommence à afficher ce message tant que le choix n'est pas valide.
