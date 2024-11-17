from typing import List

def split_ip(ip: str) -> List[str]:

    return ip.split('.')



def verif_ip_decim(ip_parts: List[str]) -> bool:

    #nombre de parts
    if len(ip_parts) != 4:
        return False

    #only chiffres int
    for part in ip_parts:
        for char in part:
            if char < '0' or char > '9':
                return False

        #not higher/lwr than possible in ipv4
        part_int = int(part)
        if not (0 <= part_int <= 255):
            return False
    
    #all good
    return True



def verif_ip_bin(ip_parts: List[str]) -> bool:

    #nombre de parts
    if len(ip_parts) != 4:
        return False

    for part in ip_parts:

        #parts de 8 bits seulement
        if len(part) != 8:
            return False

        #nthg other than binaires
        for char in part:
            if char != '0' and char != '1':
                return False

    #all good
    return True






if __name__ == "__main__":
    choix = input("Choisir le format de l'adresse a valider : B (ecriture binaire) - D (ecriture decimale) : ").strip().upper() #pas d'espaces en+ et tt en maj
    
    while choix != 'B' and choix != 'D':
        choix = input("Choisir le format de l'adresse a valider : B (ecriture binaire) - D (ecriture decimale) : ").strip().upper()
    
    ip = input(f"Saisir une adresse IP (format {choix}) : ").strip()
    ip_parts = split_ip(ip)

    if (choix == 'D' and verif_ip_decim(ip_parts)) or (choix == 'B' and verif_ip_bin(ip_parts)):
        print("IP valide")
    else:
        print("IP non valide")