1. Definimos o tipo Pessoa como uma tupla contendo informações como nome, idade, altura e sexo.

2. A função pess recebe um número de registro x e retorna uma pessoa correspondente ao registro.

3. A função maiorIdade utiliza a função foldl1 para encontrar a pessoa de maior idade entre todas as pessoas registradas. A função foldl1 compara a idade acumulada idadeAcc com a idade da pessoa atual idade. A pessoa com a maior idade é mantida como acumulador acc e, no final, retornamos o número do registro dessa pessoa.

4. A função idadeMedia calcula a idade média de todas as pessoas. Primeiro, criamos uma lista registros contendo todas as pessoas. Em seguida, calculamos a soma das idades utilizando a função sum e dividimos pelo número de pessoas usando length registros. O resultado é a idade média.

5. A função homensMais25 conta o número de homens com idade superior a 25 anos. Utilizamos uma lista de compreensão para filtrar apenas as pessoas do sexo masculino com idade superior a 25. O resultado é o comprimento da lista resultante.
