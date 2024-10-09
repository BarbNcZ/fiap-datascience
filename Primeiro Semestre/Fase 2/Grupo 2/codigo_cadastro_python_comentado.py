
import locale

# usar pt_BR ao invés de fr_FR limite o usuário à utilizar apenas vírgula como separador dos decimais, enquanto fr_FR permite ambos
locale.setlocale(locale.LC_NUMERIC, 'fr_FR.UTF-8')
nome_arquivo='1_5_arquivo_produto.csv'
# como este script não contém funções e a pergunta sobre qual o valor do produto poderá ser feita em 2 contextos distintos, armazena-se então em uma variável para melhor gerenciar a memória da máquina
pergunta_valor_produto='Valor do produto: '
# define o valor inicial da variável 'resposta' para que entre-se no loop de while a seguir
resposta = 'S'
# o contador serve não apenas para armazenar a quantidade de cadastros feitos, como também para adicionar o titulo de cada coluna do arquivo CSV e para alterar a forma de perguntar se o usuário deseja cadastrar, incluindo ou não a palavra 'continuar'
contador = 0
try:
    arquivo=open(nome_arquivo, "a")
    while resposta:
        resposta = input('Deseja' + (' continuar a' if contador > 0 else '') + ' cadastrar? (S para sim | N para nao): ')
        # usa-se o upper() para não considerar a resposta do usuário como case sensitive
        if resposta.upper() == 'SIM' or resposta.upper() == 'S':
            descricao = input('Descricao do produto: ')
            valor = input(pergunta_valor_produto)

            try:
                # converte o texto digitado pelo usuário do formato definido em 'locale', ou seja, fr_FR, para o formato padrão em inglês (vírgulas se tornarão pontos)
                valor = locale.atof(valor)
                # converte o texto digitado pelo usuário e convertido para o inglês em um valor numérico do tipo float
                valor = float(valor)
                valor_eh_valido = True
            # a excessão disparada caso não seja possível converter o valor para float é tratada aqui
            except ValueError as erro:
                valor_eh_valido = False

            # enquanto o usuário não informar um valor de produto válido, ou seja, um número (com ou sem decimais), entra neste outro loop de while e fica lá até retornar um valor válido
            while not valor_eh_valido:
                print('Valor do produto nao e valido! Informe apenas numeros')
                valor = input(pergunta_valor_produto)

                try:
                    valor = locale.atof(valor)
                    valor = float(valor)
                    valor_eh_valido = True
                except ValueError as erro:
                    valor_eh_valido = False
                    
                if valor_eh_valido:
                    # sai do loop de while se o valor informado for válido, ou seja, um número (com ou sem decimais)
                    break
                else:
                    # continua / recomeça o loop de while se o valor informado for inválido
                    continue

            embalagem = input('Tipo de embalagem: ')

            if contador == 0:
                cabecalho_colunas='Descricao;Valor;Tipo de embalagem'
                arquivo.write(cabecalho_colunas + '\n')

            linha_texto=descricao + ';' + str(valor) + ';' + embalagem
 
            arquivo.write(linha_texto + '\n')

            contador += 1
        elif resposta.upper() == 'NAO' or resposta.upper() == 'N':
            # sai do loop de while cadastro caso o usuário queira ao digitar 'n' ou 'nao'
            break
        else:
            print('Resposta incorreta, por favor digite apenas S para sim ou N para nao')
except FileNotFoundError as erro:
    # trata o erro de 'arquivo não encontrado' gerado pela lógica acima (certamente devido a abertura do arquivo com o comando 'open')
    print("Erro! Arquivo nao encontrado")
except OSError as erro:
    # trata qualquer erro de sistema gerado pela lógica acima
    print("Erro de sistema!")
except Exception as erro:
    # trata qualquer erro gerado pela lógica acima
    print("Erro desconhecido!")

# libera a ligação I/O do arquivo
arquivo.close()
print('Ate a proxima!')