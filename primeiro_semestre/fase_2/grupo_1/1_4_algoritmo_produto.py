import csv

def insert_product():
    product_list = []
    while True:
        response = input("Deseja cadastrar um novo produto? (S/N): ").strip().lower()
        if response == 'n':
            break
        elif response == 's':
            try:
                description = input("Descrição do produto: ")
                value = float(input("Valor do produto: "))
                packaging = input("Tipo de embalagem: ")

                product = {
                    'Descricao': description,
                    'Valor': value,
                    'Embalagem': packaging
                }
                product_list.append(product)

            except ValueError:
                print("Erro: O valor do produto deve ser numérico. Tente novamente.")
        else:
            print("Resposta inválida. Digite 'S' ou 'N'.")

    return product_list


def process_csv(product_list):
    if len(product_list) < 5:
        print("Erro: É necessário cadastrar pelo menos 5 produtos.")
        return

    name = '1_5_arquivo_produto.csv'
    with open(name, 'w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file, delimiter=',')
        header = product_list[0].keys()
        writer.writerow(header)

        for product in product_list:
            writer.writerow(product.values())

    print(f"Arquivo {name} salvo com sucesso!")


def main():
    product_list = insert_product()
    process_csv(product_list)


if __name__ == "__main__":
    main()
