import em

print("hola mundo")

@# The basics.
@{
import random
x=4
foo=False;
lista=["a","b","c"]

letters=["a","b","c","d","e","f","g","h","i","j","l","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
random.shuffle(letters)
}
La variable X vale @x
El primer elemento de la lista es @lista[0]

@(foo ? "foo is true" ! "foo is false").
The re module has @(re ? "been imported" $ "not been imported").

@# counter
Numeros @"\n"
@[for i in range(10)] @i@[end for]


@#Prueba con discs

//Disc contacts encryption A-Z
@[for i in letters]@ crypt[@letters.index(i)]="@i";@"\n"@[end for]
