nome_arquivo="1_5_arquivo_produto.csv"
#arquivo=open(nome_arquivo, "a")
arquivo=""
resposta = input('Deseja cadastrar? (S para sim | N para nao | E para sair)')
while resposta:
    if resposta.upper() == 'sim' or resposta.upper() == 's':
        descricao = input('Descricao do produto: ')
        valor = input('Valor do produto: ')
        embalagem = input('Tipo de embalagem: ')

        linha_texto=descricao + ';' + valor + ';' + embalagem + ';'
        #arquivo.write(linha_texto + '\n')
        arquivo += linha_texto + '\n'
    elif resposta.upper() == 'E':
        break
    else:
        print('Resposta incorreta, por favor digite apenas S, N ou E')
        resposta = input('Deseja cadastrar? (S para sim | N para nao | E para sair)')

print(arquivo)
#arquivo.close()
#print('Até a proxima! Verifique o arquivo CSV')