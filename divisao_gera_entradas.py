from bitstring import BitArray #instalada com pip
import itertools

def bin2int(a):
    b = BitArray(bin=a)
    return b.int

def int2bin(a, length):
    a = int(a)
    b = BitArray(int=a, length = length) # lenght eh o tamanho da string binaria
    return b.bin

BITS_ENTRADA = 8
BITS_SAIDA = 8

input_f = open("entradas.txt","w")
output_f = open("saidas_ref.txt","w")
testes_a = range(1, 12)
testes_b = range(1, 12)

for a,b in itertools.product(testes_a, testes_b):
    if (a > b):
      resto = a % b
      resultado = a // b
    else:
      resto = 1
      resultado = 0
    
    bin_a = int2bin(a, BITS_ENTRADA)
    bin_b = int2bin(b, BITS_ENTRADA)
    bin_resto = int2bin(resto, BITS_SAIDA)
    bin_resultado = int2bin(resultado, BITS_SAIDA)
    
    print(f'{bin_a} {bin_b}', file = input_f)
    print(f'{bin_resultado} {bin_resto}', file = output_f)

input_f.close()
output_f.close()