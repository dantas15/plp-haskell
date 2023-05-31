-- cabecalho
type Nome = String
type Curso = String
type Periodo = Int
type Nota = Float
type Aluno = (Nome, Curso, Periodo, Nota)
type Disciplina = [Aluno]

alunos :: Int -> Aluno
alunos matricula
  | matricula == 1 = ("Rodrigo", "S.Inf.", 3, 6.0)
  | matricula == 2 = ("Joao", "Eng.Comp.", 5, 5.0)
  | matricula == 3 = ("Lucas", "C.Comp.", 8, 3.5)
  | matricula == 4 = ("Ana", "C.Comp.", 5, 8.0)
  | matricula == 5 = ("Maria", "C.Comp.", 7, 9.5)
  | matricula == 6 = ("Paulo", "C.Comp", 6, 6.0)
  | matricula == 7 = ("Jose", "S.Inf.", 8, 7.0)
  | matricula == 8 = ("Eduarda", "C.Comp.", 4, 1.0)
  | matricula == 9 = ("Carla", "Eng.Comp.", 6, 6.5)
  | matricula == 10 = ("Luiz", "C.Comp.", 7, 5.7)


disciplina :: Disciplina
-- considerando que todos os alunos sao de uma disciplina
disciplina =
  [
    alunos 1,
    alunos 2,
    alunos 3,
    alunos 4,
    alunos 5,
    alunos 6,
    alunos 7,
    alunos 8,
    alunos 9,
    alunos 10
  ]
-- exercicios
-- Função que retorna o número de alunos reprovados na disciplina
contarReprovados :: Disciplina -> Int
contarReprovados = length . filter (\(_, _, _, nota) -> nota < 6.0)

-- Função que retorna o nome do aluno com a menor nota na disciplina
menorNota :: Disciplina -> Nome
menorNota disciplina = nome
  where
    (nome, _, _, _) = foldl1 (\acc@(nomeAcc, _, _, notaAcc) aluno@(_, _, _, nota) -> if nota < notaAcc then aluno else acc) disciplina

main = do
  print $ contarReprovados disciplina
  print $ menorNota disciplina