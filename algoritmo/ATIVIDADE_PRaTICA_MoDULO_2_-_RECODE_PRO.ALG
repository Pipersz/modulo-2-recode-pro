


procedimento cadastrarCliente()
// Insere o cliente na proxima posicao livre.
// O i-esimo cliente eh representado pelos valores
// na posicao i dos vetores clientes, emails e telefones.
inicio
   escreval ("Cadastrar cliente")
   escreva ("Digite o nome do cliente: ")
   leia (clientes[proximoCliente])
   escreva("Digite o email do cliente: ")
   leia (emails[proximoCliente])
   escreva("Digite o telefone do cliente: ")
   leia (telefones[proximoCliente])
   proximoCliente <- proximoCliente + 1
fimprocedimento


procedimento cadastrarDestino()
// Insere o destino na proxima posicao livre.
// O i-esimo destino eh representado pelos valores
// na posicao i dos vetores destinos, dataIda e dataVolta.
inicio
   escreval ("Cadastrar destino")
   escreva ("Qual o seu destino?: ")
   leia (destinos[proximoDestino])
   escreva("Digite a data da sua partida: ")
   leia (dataIda[proximoDestino])
   escreva("Digite a data da sua volta: ")
   leia (dataVolta[proximoDestino])
   proximoDestino <- proximoDestino + 1
fimprocedimento


procedimento consultarCliente()
// Busca o cliente pelo nome. Se o cliente existir, escreve
// o nome, email e telefone. Senao, escreve "Cliente nao encontrado".
var
   posCliente: inteiro
   clienteBusca: caracter
inicio
   posCliente <- -1
   escreval ("Consultar cliente")
   escreva ("Digite o nome completo do cliente: ")
   leia (clienteBusca)
   para i de 0 ate 99 faca
        se clienteBusca = clientes[i] entao
             posCliente <- i
             interrompa
        fimse
   fimpara
   se posCliente = -1 entao
      escreval ("Cliente nao encontrado.")
   senao
        escreval ("Cliente encontrado: " + clientes[posCliente] + " " + emails[posCliente] + " " + telefones[posCliente])
   fimse
fimprocedimento


procedimento consultarDestino()
// Busca o destino pelo nome. Se o destino existir, escreve
// o nome, data de ida e data de volta.Senao, escreve
// "Destino nao encontrado"
var
   posDestino: inteiro
   destinoBusca: caracter
inicio
   posDestino <- -1
   escreval ("Consultar destino")
   escreva ("Digite o destino: ")
   leia (destinoBusca)
   para i de 0 ate 99 faca
        se destinoBusca = destinos[i] entao
           posDestino <- i
           interrompa
        fimse
   fimpara
   se posDestino = -1 entao
      escreval ("Destino nao encontrado.")
   senao
        escreval ("Destino encontrado: "+ destinos[posDestino] + " " + dataIda[posDestino] + " " + dataVolta[posDestino])
   fimse
fimprocedimento


Algoritmo "Atividade prática módulo 2 - Recode Pro"
Var
i: inteiro
opcao: inteiro
clientes: vetor[0..99] de caracter
emails: vetor[0..99] de caracter
telefones: vetor[0..99] de caracter
destinos: vetor[0..99] de caracter
dataIda: vetor[0..99] de caracter
dataVolta: vetor[0..99] de caracter
proximoCliente: inteiro
proximoDestino: inteiro

Inicio
proximoCliente <- 0
proximoDestino <- 0
opcao <- -1

enquanto opcao <> 0 faca

   escreval ("0:sair")
   escreval ("1:cadastrar cliente")
   escreval ("2:cadastrar destino")
   escreval ("3:consultar cliente")
   escreval ("4:consultar destino")
   escreval ()
   escreva ("Escolha uma opcao: ")

   leia (opcao)
   escreval ("")
   se opcao = 0 entao
      interrompa
   fimse

   se opcao = 1 entao
      cadastrarCliente()
   fimse

   se opcao = 2 entao
      cadastrarDestino()
   fimse

   se opcao = 3 entao
      consultarCliente()
   fimse

   se opcao = 4 entao
      consultarDestino()
   fimse
   
   escreval ("")

fimenquanto

escreval ("Fim da execucao")

Fimalgoritmo