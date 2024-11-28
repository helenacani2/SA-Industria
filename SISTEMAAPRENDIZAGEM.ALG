Algoritmo "sistemaAprendizagem"

tipo cadastro = registro
   mail: caractere
   senha: caractere
   setor: caractere
fimregistro

Var

   senhaInf, mailInf, experiencia, camp, confirmar: caractere
   login: vetor[1 ..5] de cadastro
   i, anos, aux, l,d: inteiro
   usuarioExiste: logico
   ale: vetor[1..5] de inteiro
   maq: vetor[1..10] de inteiro
   conta, valorCamp: real

Inicio
   // Pre-definição dos logins:

   escreval("Bem vindo à Nidec, insira seu usuário e senha")

   login[1].mail <- "fernanda@"
   login[1].senha <- "1234"
   login[1].setor <- "RH"

   login[2].mail <- "helena@"
   login[2].senha <- "6362"
   login[2].setor <- "FINANCEIRO"

   login[3].mail <- "joao@"
   login[3].senha <- "0000"
   login[3].setor <- "INFRAESTRUTURA"

   login[4].mail <- "fulano@"
   login[4].senha <- "0001"
   login[4].setor <- "MARKETING"

   escreval("Login:")
   leia(mailInf)
   escreval("")

   escreval("Senha: ")
   leia(senhaInf)
   escreval("")

   usuarioExiste <- falso

   // Usuário entra com seu e-mail e senha, que o direcionarão ao seu setor:
   para i de 1 ate 4 faca
      se (login[i].senha=senhaInf) e (login[i].mail=mailInf) entao
         usuarioExiste <- verdadeiro

         // Se o login for aceito, usuário será direcionado ao setor correspondente:
         escolha login[i].setor

            // Setor RH:
         caso "RH"
            escreval("Bem vindo ao setor do RH!")
            escreval("")
            escreval("Iniciaremos o processo de recrutamento. Verifique:")
            escreval("O candidato tem experiência na área?")
            leia(experiencia)
            se experiencia = "N" entao
               escreval("O perfil do entrevistado se encaixa na vaga de estágio.")
            fimse
            se experiencia = "S" entao
               escreval("De quantos anos?")
               leia(anos)
               se (anos>0) e (anos<5) entao
                  escreval("O perfil do candidato encaixa nas vagas de Usinagem.")
               fimse
               se (anos>5) e (anos<10) entao
                  escreval("O perfil do candidato encaixa nas vagas de Administração.")
               fimse
               se (anos>10) entao
                  escreval("O perfil do usuário encaixa nas vagas de Gerência.")
               fimse
            fimse

            // Setor Financeiro:
         caso "financeiro"
            escreval("Bem vindo ao setor do Financeiro! Você entrou nas transações da empresa. Verifique:")
            escreval("")

            // Calcular o déficit:
            para i de 1 ate 5 faca
               ale[i] <- randi(1000)
               escreval("Um usuário fez uma compra de ", ale[i], " reais")
               aux<-(ale[i])+aux
               d <- aux
            fimpara

            escreval(" ")

            // Calcular o lucro:
            para i de 1 ate 5 faca
               ale[i] <- randi(1000)
               escreval("Um usuário transferiu ",ale[i], " reais")
               aux<-(ale[i])+aux
               l <- aux
            fimpara
            conta <- l-d
            escreval("")
            escreval("A empresa teve déficit de R$-",d)
            escreval("A empresa teve lucro de R$",l)
            escreval("O valor total de lucro-déficit foi de R$", conta)

            // Setor Infraestrutura:
         caso "infraestrutura"

            escreval("Bem vindo ao setor de Infraestrutura! Verifique o estado das máquinas:")
            escreval("")
            para i de 1 ate 10 passo 1 faca
               maq[i] <- randi(6)

               se maq[i]=0 entao
                  escreval("A máquina", i, " está sob manutenção - uso suspenso.")

               senao
                  se maq[i]=1 entao
                     escreval("A máquina", i, " está com funcionando com êxito.")

                  senao
                     se maq[i]=2 entao
                        escreval("A máquina", i, " está com risco de quebra, analise a situação.")


                     senao
                        se maq[i]=3 entao
                           escreval("A máquina", i, " está parada, investigue e conserte imediatamente.")

                        senao
                           se maq[i]=4 entao
                              escreval("A máquina", i, " está superaquecendo, cuidado!")

                           senao
                              se maq[i]=5 entao
                                 escreval("A máquina", i, " está sem a trava de segurança! Suspenda o uso imediatamente. Risco de acidente!")
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimpara

            // Setor Marketing:
         caso "marketing"
            // Chama o Financeiro

            escreval("Bem vindo ao setor do Marketing!")

            escreval("")
            
            // Analisa os objetivos da campanha de marketing

            escreval("Quais são os objetivos da campanha atual do Marketing?")
            leia(camp)
            escreval("")
            escreval(camp)
            repita
               escreval("Confirme os objetivos da campanha com S ou N.")
               leia(confirmar)
               se confirmar="N" entao
                  escreval("Quais são os objetivos da campanha atual do Marketing?")
                  leia(camp)
                  escreval("")
                  escreval(camp)
               fimse
            ate confirmar="S"
            
            // Analisa opúblico alvo da campanha de marketing
            
            escreval("Qual é o público alvo?")
            leia(camp)
            escreval("")
            escreval(camp)
            repita
               escreval("Confirme o público alvo com S ou N.")
               leia(confirmar)
               se confirmar="N" entao
                  escreval("Qual é o público alvo?")
                  leia(camp)
                  escreval("")
                  escreval(camp)
               fimse
            ate confirmar="S"
            
            // Analisa os canais de divulgação da campanha de marketing
            
            escreval("Quais serão os canais de divulgação?")
            leia(camp)
            escreval("")
            escreval(camp)
            repita
               escreval("Confirme os os canais de divulgação com S ou N.")
               leia(confirmar)
               se confirmar="N" entao
                  escreval("Quais serão os canais de divulgação?")
                  leia(camp)
                  escreval("")
                  escreval(camp)
               fimse
            ate confirmar="S"
            
            // Analisa o valor da campanha de marketing

            escreval("")
            escreval("Qual é o valor da campanha?")
            leia(valorCamp)
            escreval("")

            escreval("Agora vamos analisar o crédito disponível na conta da empresa.")

            // Calcular o déficit:
            para i de 1 ate 5 faca
               ale[i] <- randi(1000)
               aux<-(ale[i])+aux
               d <- aux
            fimpara


            // Calcular o lucro:
            para i de 1 ate 5 faca
               ale[i] <- randi(1000)
               aux<-(ale[i])+aux
               l <- aux
            fimpara

            conta <- l-d

            escreval("")
            escreval("A empresa tem como crédito disponível R$", conta)

            se conta>=valorCamp entao
               escreval("Será possível realizar a campanha!")
            senao
               escreval("O valor da campanha excede o crédito da empresa em R$" , valorCamp-conta, ", e não será possível realizar o projeto.")
            fimse

            escreval("Caso tenha alguma dúvida, entre em contato com a Helena do financeiro no seguinte e-mail: ", login[2].mail)

         fimescolha
      fimse
   fimpara

   se usuarioExiste = falso entao
      escreval("Usuário inexistente.")
   fimse


Fimalgoritmo