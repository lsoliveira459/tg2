import argparse

def transform_7bytes(bstr):
    #print(bstr)
    #print([hex(b) for b in bstr])
    if len(bstr) < 7:
        # Se no final sobrarem menos de 7 bytes
        # completar o vetor com zeros nao vai dar
        # problemas
        bstr = b''.join([bstr,bytes([0]*(7-len(bstr)))])
        #print([hex(b) for b in bstr])
    bstr2 = [0]*8
    bstr2[0] = 0x80 | (bstr[0]<<7)&0xff | bstr[0]>>1
    bstr2[1] = 0x80 | (bstr[0]<<6)&0xff | bstr[1]>>2
    bstr2[2] = 0x80 | (bstr[1]<<5)&0xff | bstr[2]>>3
    bstr2[3] = 0x80 | (bstr[2]<<4)&0xff | bstr[3]>>4
    bstr2[4] = 0x80 | (bstr[3]<<3)&0xff | bstr[4]>>5
    bstr2[5] = 0x80 | (bstr[4]<<2)&0xff | bstr[5]>>6
    bstr2[6] = 0x80 | (bstr[5]<<1)&0xff | bstr[6]>>7
    bstr2[7] = 0x80 | (bstr[6]<<0)&0xff
    #print(bstr2)
    bstr3 = b''.join([(b).to_bytes(1, byteorder='big') for b in bstr2])
    #print(bstr3)
    return bstr3

parser = argparse.ArgumentParser(description='A interface UART do computador em geral despreza os pacotes nulos. Este programa gera um arquivo sem pacotes nulos, ao custo de um overhead de 14%, para transmissão correta das informações.')
parser.add_argument('input_file', help='arquivo .bit de entrada')
parser.add_argument('--quiet', '-q', required=False, action='count', default=0, help='nivel de texto na saida')
args = parser.parse_args()

input = args.input_file
output = args.input_file[:-4]+"_transmissivel.bit"
if args.quiet < 2:
    print("Arquivo de entrada: %s"%input)
    print("Arquivo de saída: %s\n"%output)

with open(args.input_file, "rb") as f1:
    with open(args.input_file[:-4]+"_transmissivel.bit", "wb") as f2:
        i = 0
        while True:
            bstr = f1.read(7)
            if not bstr:
                break
            i += 1
            if i%1000 == 0 and args.quiet < 1:
                print("carregou %d bytes"%(7*i))
            nbstr = transform_7bytes(bstr)
            f2.write(nbstr)
        if args.quiet < 3:
            print("carregou %d bytes de %s"%(7*i,input))
            print("escreveu %d bytes em %s"%(8*i,output))
