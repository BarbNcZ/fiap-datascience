# mensagem do sac e insercao de valor

print("Por gentileza, avalie seu atendimento.")

nota = int(input("Considerando 1 totalmente insatisfeito e 10 totalmente satisfeito, insira uma nota de satisfação: "))

# mensagem de confirmacao da nota inserida

print("Voce avaliou com nota {}".format(nota))

# condicao if e resultado da avaliacao

if (nota) >= 9:

    print("Satisfeito!\nAgradecemos o contato.")

elif (nota) >= 7 and (nota) <= 8:
    print("Neutro.\nIremos melhorar.")

elif (nota) <= 6:
    print("Insatisfeito.\nPoxa! Sentimos muito pelo inconveniente.")