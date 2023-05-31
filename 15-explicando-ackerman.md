# Ackerman

1. A função ackermann recebe dois argumentos inteiros, m e n, e retorna um resultado inteiro.

2. Nos primeiros dois padrões de casamento, tratamos os casos base da função de Ackermann.

    - Se m for igual a 0, retornamos n + 1.
    - Se m for diferente de 0 e n for igual a 0, chamamos recursivamente a função ackermann com m - 1 e 1 como argumentos.

3. No último padrão de casamento, tratamos o caso geral da função de Ackermann.

    - Chamamos recursivamente a função ackermann com `m- 1` e ackermann m (n - 1) como argumentos.

4. A recursão é utilizada para calcular o valor da função de Ackermann até chegar aos casos base.
