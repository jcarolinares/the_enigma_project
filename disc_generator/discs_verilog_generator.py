#PROBLEMAS DE FUNCIONAMIENTO EN LA GENERACION DE DISCOS ENIGMA

import em

number_of_discs=input("Please enter the number of discs:\n")
for number in range(number_of_discs):

    file_name="disc_"+str(number+1)+".v"

    file = open(file_name, 'w')
    interpreter = em.Interpreter(output=file, argv=str(number+1))

    # Process an actual file (and output to stdout):
    interpreter.file(open('enigma_disc.em'))
    interpreter.shutdown() # this is important; see below
