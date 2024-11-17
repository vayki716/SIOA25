def maximum(a, b):
    return a if a > b else b

def maximum3(a, b, c):
    return maximum(maximum(a, b), c)

def maximum3_input():
    a = float(input("a: "))
    b = float(input("b: "))
    c = float(input("c: "))
    return maximum3(a, b, c)

if __name__ == "__main__": # NE PAS SUPPRIMER CETTE LIGNE
    
    print(maximum(3, 5))
    print(maximum3(3, 5, 4))
    print(maximum3_input())