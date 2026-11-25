algoritmo "CadastroAcademia"
// Modulo 5.3 - Funcionarios e Professores
// Sistema Web para Gestao de Academia
var
  nome, perfil, continuar: caractere
  opcao: inteiro
  perfilValido, respostaValida: logico
inicio
  repita
    escreval("==============================================")
    escreval("  CADASTRO DE FUNCIONARIOS E PROFESSORES")
    escreval("==============================================")
    escreva("Nome do usuario: ")
    leia(nome)

    // Validacao do perfil de acesso (repete ate ser valido)
    perfilValido <- falso
    repita
      escreval("Perfis: A-Administrador | R-Recepcionista | P-Professor")
      escreval("        I-Instrutor | G-Colaborador em geral")
      escreva("Perfil de acesso: ")
      leia(perfil)
      perfil <- maiusc(perfil)
      se (perfil="A") ou (perfil="R") ou (perfil="P") ou (perfil="I") ou (perfil="G") entao
        perfilValido <- verdadeiro
      senao
        escreval("Perfil invalido! Informe apenas A, R, P, I ou G.")
      fimse
    ate perfilValido

    escreval("")
    escreval("Cadastro realizado com sucesso!")
    escreval("Usuario: ", nome, " | Perfil: ", perfil)

    // Menu de funcionalidades conforme o perfil (repete ate escolher 0)
    repita
      escreval("")
      escreval("---- MODULOS DISPONIVEIS PARA O PERFIL ", perfil, " ----")
      escolha perfil
        caso "A"
          escreval("1 - Usuarios e Permissoes")
          escreval("2 - Cadastro de Alunos")
          escreval("3 - Funcionarios e Professores")
          escreval("4 - Modalidades e Planos")
          escreval("5 - Matriculas")
          escreval("6 - Financeiro")
          escreval("7 - Relatorios e Consultas")
          escreval("8 - Configuracoes do Sistema")
        caso "R"
          escreval("1 - Cadastro e Consulta de Alunos")
          escreval("2 - Matriculas")
          escreval("3 - Consulta de Planos")
          escreval("4 - Mensalidades e Pagamentos")
          escreval("5 - Situacao Financeira do Aluno")
        caso "P"
          escreval("1 - Consulta de Alunos")
          escreval("2 - Consulta de Modalidades")
          escreval("3 - Fichas de Treino")
          escreval("4 - Avaliacoes Fisicas")
        caso "I"
          escreval("1 - Consulta de Alunos")
          escreval("2 - Consulta de Fichas de Treino")
          escreval("3 - Historico de Treinos")
        caso "G"
          escreval("1 - Consulta de Modalidades")
          escreval("2 - Consulta de Planos")
          escreval("3 - Alteracao de Senha")
      fimescolha
      escreval("0 - Sair do menu")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      // Executa a funcionalidade somente se pertencer ao perfil
      escolha perfil
        caso "A"
          escolha opcao
            caso 1
              escreval(">> Acessando: Usuarios e Permissoes")
            caso 2
              escreval(">> Acessando: Cadastro de Alunos")
            caso 3
              escreval(">> Acessando: Funcionarios e Professores")
            caso 4
              escreval(">> Acessando: Modalidades e Planos")
            caso 5
              escreval(">> Acessando: Matriculas")
            caso 6
              escreval(">> Acessando: Financeiro")
            caso 7
              escreval(">> Acessando: Relatorios e Consultas")
            caso 8
              escreval(">> Acessando: Configuracoes do Sistema")
            caso 0
              escreval("Saindo do menu...")
            outrocaso
              escreval("Opcao invalida para este perfil!")
          fimescolha
        caso "R"
          escolha opcao
            caso 1
              escreval(">> Acessando: Cadastro e Consulta de Alunos")
            caso 2
              escreval(">> Acessando: Matriculas")
            caso 3
              escreval(">> Acessando: Consulta de Planos")
            caso 4
              escreval(">> Acessando: Mensalidades e Pagamentos")
            caso 5
              escreval(">> Acessando: Situacao Financeira do Aluno")
            caso 0
              escreval("Saindo do menu...")
            outrocaso
              escreval("Opcao invalida para este perfil!")
          fimescolha
        caso "P"
          escolha opcao
            caso 1
              escreval(">> Acessando: Consulta de Alunos")
            caso 2
              escreval(">> Acessando: Consulta de Modalidades")
            caso 3
              escreval(">> Acessando: Fichas de Treino")
            caso 4
              escreval(">> Acessando: Avaliacoes Fisicas")
            caso 0
              escreval("Saindo do menu...")
            outrocaso
              escreval("Opcao invalida para este perfil!")
          fimescolha
        caso "I"
          escolha opcao
            caso 1
              escreval(">> Acessando: Consulta de Alunos")
            caso 2
              escreval(">> Acessando: Consulta de Fichas de Treino")
            caso 3
              escreval(">> Acessando: Historico de Treinos")
            caso 0
              escreval("Saindo do menu...")
            outrocaso
              escreval("Opcao invalida para este perfil!")
          fimescolha
        caso "G"
          escolha opcao
            caso 1
              escreval(">> Acessando: Consulta de Modalidades")
            caso 2
              escreval(">> Acessando: Consulta de Planos")
            caso 3
              escreval(">> Acessando: Alteracao de Senha")
            caso 0
              escreval("Saindo do menu...")
            outrocaso
              escreval("Opcao invalida para este perfil!")
          fimescolha
      fimescolha
    ate opcao = 0

    // Pergunta se deseja cadastrar outro usuario (valida S/N)
    respostaValida <- falso
    repita
      escreval("")
      escreva("Deseja cadastrar outro usuario? (S/N): ")
      leia(continuar)
      continuar <- maiusc(continuar)
      se (continuar="S") ou (continuar="N") entao
        respostaValida <- verdadeiro
      senao
        escreval("Resposta invalida! Digite S ou N.")
      fimse
    ate respostaValida
  ate continuar = "N"

  escreval("")
  escreval("Sistema encerrado. Ate logo!")
fimalgoritmo
