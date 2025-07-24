// PULL EXERCISES OF PROGRAM LOGIC 
// ===============================================

programa {

  inclua biblioteca Matematica

  funcao inicio() {
    real base, altura, perimetro, diagonal, area
    escreva("| Base do retângulo: ")
    leia(base)
    escreva("| Altura do retângulo: ")
    leia(altura)

    area = base*altura
    perimetro = 2*(base+altura)
    diagonal = (Matematica.raiz((base*base)+(altura*altura),2))

    escreva("| Area: ", area,"\n| Perimetro: ", perimetro,"\n| Diagonal: ", diagonal)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro a, b
    escreva("| Valor de A: ")
    leia(a)
    escreva("| Valor de B: ")
    leia(b)

    escreva("| Total: ", a+b)
  }
}



// ===============================================


programa {
  funcao inicio() {
    real und, in
    inteiro qtd
    escreva("| Preço UND do produto: ")
    leia(und)
    escreva("| Quantidade levada do produto: ")
    leia(qtd)
    escreva("| Valor recebido do Cliente: ")
    leia(in)

    escreva("| Total do produto: ", und*qtd)
    escreva("\n| Total do troco: ", in-(und*qtd))
  }
}


// ===============================================


programa {

  funcao inicio() {
    real r, pi
    pi = 3.14159

    escreva("| Digite o raio do circulo: ")
    leia(r)

    escreva("| Total da area do circulo é: ", pi*(r*r))
  }
}


// ===============================================


programa {

  funcao inicio() {
    real vHora, tHora
    cadeia nome

    escreva("| Digite o nome do Funcionario: ")
    leia(nome)
    escreva("| Digite o valor da Hora do Funcionario: ")
    leia(vHora)
    escreva("| Digite quantas horas o Funcionario trabalhou nesse mês: ")
    leia(tHora)

    escreva("| O pagamendo para ", nome, " deve ser R$", tHora*vHora)
  }
}


// ===============================================


programa {

  funcao inicio() {
    real dis, com

    escreva("| Quantos Km você andou?\nDigite: ")
    leia(dis)
    escreva("| Quantos litros você gastou?\nDigite: ")
    leia(com)

    escreva("| Consumo médio do veiculo usado: ", dis/com, " Km/Litro")
  }
}


// ===============================================


rograma {

  funcao inicio() {
    inteiro in, h, m, s, resto

    escreva("| Quantos segundos passou?\nDigite: ")
    leia(in)

    h = in/3600
    resto = in%3600
    m = resto/60
    s = resto%60

    escreva("| Tempo: ", h, ":", m, ":", s)
  }
}


// ===============================================


programa {
  funcao inicio() {
    real n1, n2, m
    escreva("| Entre com a primeira nota: ")
    leia(n1)
    escreva("| Entre com a segunda nota: ")
    leia(n2)   
    m = (n1+n2)/2
    se (m < 60)
    {
      escreva("| Aluno reprovado com média de: ", m," pontos")
    }
    senao
    {
      escreva("| Aluno aprovado com média de: ", m," pontos")
    }
  }
}


// ===============================================


programa {
  inclua biblioteca Matematica
  funcao inicio() {
    real a, b, c, delta, x1, x2
    escreva("| Entre com o Coeficiente de A: ")
    leia(a)
    escreva("| Entre com o Coeficiente de B: ")
    leia(b)   
    escreva("| Entre com o Coeficiente de C: ")
    leia(c)  
    delta = b*b - 4*a*c
    se (delta > 0)
    {
      x1 = (- b + Matematica.raiz(delta, 2))/2*a
      x2 = (- b - Matematica.raiz(delta, 2))/2*a
      escreva("| Raizes reais distintas: X1 = ", x1," e X2 = ", x2)
    }
    senao
    {
      se (delta == 0)
      {
        x1 = (- b + Matematica.raiz(delta, 2))/2*a
        x2 = (- b - Matematica.raiz(delta, 2))/2*a
        escreva("| Unica raiz: X1 = ", x1," e X2 = ", x2)
      }
      senao
      {
        escreva("| Raizes complexas")
      }
    }
  }
}


// ===============================================


programa {
  funcao exibir_menor(real n)
  {
    escreva("| O menor numero é: ", n)
  }
  funcao inicio() {
    real n1, n2, n3
    escreva("| Entre com o primeiro numero: ")
    leia(n1)
    escreva("| Entre com o segundo numero: ")
    leia(n2)   
    escreva("| Entre com o terceiro numero: ")
    leia(n3)
    se (n1 < n2 e n1 < n3)
    {
      exibir_menor(n1)
    }
    senao
    {
      se (n2 < n3)
      {
        exibir_menor(n2)
      }
      senao
      {
        exibir_menor(n3)
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real con
    escreva("| Entre com os minutos usados pelo cliente: ")
    leia(con)
    se (con <= 100)
    {
      escreva("| Cliente deve R$50")
    }
    senao
    {
      con = 50+((con-100)*2)
      escreva("| Cliente deve R$", con)
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real und, in, total
    inteiro qtd
    escreva("| Preço UND do produto: R$")
    leia(und)
    escreva("| Quantidade levada do produto: ")
    leia(qtd)
    escreva("| Valor recebido do Cliente: R$")
    leia(in)
    total = und*qtd
    escreva("| Total do produto: R$", total)
    se (in < total)
    {
      escreva("\n| Valor recebido do Cliente é insuficiente, Cliente deve: R$", total-in)
    }
    senao
    {
      escreva("\n| Total do troco: R$", in-total)
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real gli
    escreva("| Entre com a média de Glicose: ")
    leia(gli)
    se (gli > 50 e gli <= 100)
    {
      escreva("\n| Média NORMAL, valor de ", gli)
    }
    senao
    {
      se (gli > 100 e gli <= 140)
      {
        escreva("| Média ELEVADA, valor de ", gli)
      }
      senao
      {
        se (gli > 140 e gli < 500)
        {
          escreva("| Média DIABËTICA, valor de ", gli)
        }
        senao
        {
          escreva("| Média INVALIDA, refaça o teste")
        }
      }
    }
  }
}


// ===============================================


programa {
  funcao exibir_maior(real d)
  {
    escreva("| A maior distancia é: ", d)
  }
  funcao inicio() {
    real d1, d2, d3
    escreva("| Entre com a distancia do primeiro lance: ")
    leia(d1)
    escreva("| Entre com a distancia do segundo lance: ")
    leia(d2)   
    escreva("| Entre com a distancia do terceiro lance: ")
    leia(d3)
    se (d1 > d2 e d1 > d3)
    {
      exibir_maior(d1)
    }
    senao
    {
      se (d2 > d3)
      {
        exibir_maior(d2)
      }
      senao
      {
        exibir_maior(d3)
      }
    }
  }
}


// ===============================================


programa {
  funcao exibir_maior(real d)
  {
    escreva("| A maior distancia é: ", d)
  }
  funcao inicio() {
    real c, f
    caracter esc
    escreva("| Qual a escala da tempratura (C ou F): ")
    leia(esc)
    se (esc == 'c' ou esc == 'C')
    {
      escreva("| Digite a temperatura em Celsius: ")
      leia(c)
      f = (c*(9/5)+32)
      escreva("| Temperatura equivalente em Fahrenheit: ", f)
    }
    senao
    {
      se (esc == 'f' ou esc == 'F')
      {      
      escreva("| Digite a temperatura em Fahrenheit: ")
      leia(f)
      c = (5/9)*(f-32)
      escreva("| Temperatura equivalente em Celsius: ", c)
      }
      senao
      {
        escreva("| Entrada INVALIDA")
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real und, pto, total
    inteiro qtd, i
    inteiro cdo[10]
    total = 0.0
    para (inteiro i = 0; i < 10; i++)
    {
      escreva("| Entre com o código do produto: ")
      leia(cdo[i])
      escreva("| Preço UND do produto: R$")
      leia(und)
      escreva("| Quantidade comprada do produto: ")
      leia(qtd)
      pto = und * qtd
      escreva("| Valor toal a pagar por estes produtos: R$", pto)
      total = pto + total
      escreva("\n| ------------- \n")
    }
    escreva("| Total a pagar na reposição de produtos: R$", total)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n1, n2, div
    escreva("| Entre com o primeiro numero int.: ")
    leia(n1)
    escreva("| Entre com o segundo numero int.: ")
    leia(n2)
    //
    se (n1 > n2)
    {
      div = n1%n2
    }
    senao
    {
      div = n2%n1
    }
    //
    se (div == 0)
    {
      escreva("| São multiplos.")
    }
    senao
    {
      escreva("| Não são multiplos.")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real sla, nSla
    escreva("| Entre com o salário do Funcionario: R$")
    leia(sla)
    escreva("| ------------- \n")
      se (sla <= 1000)
      {       
        nSla = sla * 1.2
        escreva("| Porcentagem de aumento em 20%")
      }
      senao se (sla <= 3000)
      {       
        nSla = sla * 1.15
        escreva("| Porcentagem de aumento em 15%")
      }
      senao se (sla <= 8000)
      {       
        nSla = sla * 1.1
        escreva("| Porcentagem de aumento em 10%")
      }
      senao
      {       
        nSla = sla * 1.05
        escreva("| Porcentagem de aumento em 5%")
      }

    escreva("\n| Incremento no valor de: R$", nSla-sla)
    escreva("\n| Novo salário de: R$", nSla)
  }
}



// ===============================================


programa {
  funcao inicio() {
    inteiro hStart, hEnd, h
    escreva("| Digite a hora que o jogo começou: ")
    leia(hStart)
    escreva("| Digite a hora que o jogo acabou: ")
    leia(hEnd)
    escreva("| ------------- \n")
    se (hEnd > hStart)
    {       
      h = hEnd - hStart
    }
    senao      
    {       
      h = 24 - hStart + hEnd
    }
    escreva("| Tempo de jogo de: ", h, " horas.\n")
  }
}



// ===============================================


programa {
  funcao inicio() {
    real x, y
    escreva("| Valor de X: ")
    leia(x)
    escreva("| Valor de Y: ")
    leia(y)
    escreva("| ------------- \n")
      se ((x == 0) e (y == 0))
      {       
        escreva("| Origem")
      }
      senao se (x == 0)
      {       
        escreva("| Eixo Y")
      }
      senao se (y == 0)
      {       
        escreva("| Eixo X")
      }
      senao se ((x > 0) e (y > 0))
      {       
        escreva("| Q1")
      }
      senao se (y > 0)
      {       
        escreva("| Q2")
      }
      senao se (x > 0)
      {       
        escreva("| Q3")
      }
      senao
      {       
        escreva("| Q4")
      }
  }
}



// ===============================================


programa {
  funcao inicio() {
    real n, total, i
    total = 0
    i = 1
    enquanto (n != 0)
    {
      escreva("| ", i ," - Entre com um numero: ")
      leia(n)
      i++
      total = n + total
    }
    escreva("| ------------- \n")
    escreva("| Total: ", total)
  }
}



// ===============================================



programa {
  funcao inicio() {
    real x, y
    x = 0
    y = 1
    enquanto (x != y)
    {
      escreva("| Entre com X: ")
      leia(x)
      escreva("| Entre com Y: ")
      leia(y)
      se (x > y)
      {
        escreva("| Ordem DECRESCENTE")
      }
      senao se (y > x)
      {
        escreva("| Ordem CRESCENTE")
      }
      senao
      {
        escreva("| Fim ORDEM")
      }
      escreva("\n| ------------- \n")
    }
  }
}



// ===============================================


programa {
  funcao inicio() {
    real age, med
    inteiro i
    age = 0
    med = 0
    i = 0
    escreva("| Entre com a idade: ")
    leia(age)
    enquanto (age >= 0)
    {
      med = med + age
      i++
      escreva("| Entre com a idade: ")
      leia (age)
    }
    escreva("| ------------- \n")
    se (i == 0)
    {
    escreva("| IMPOSSIVEL CALCULAR\n")
    }
    med = med/i
    escreva("| MEDIA: ", med)
    }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro pass, ePass
    ePass = 0
    escreva("| Defina uma senha numérica: ")
    leia(pass)
    escreva("| ------------- \n")
    escreva("| Digite a Senha: ")
    leia(ePass)
    enquanto (pass != ePass)
    {
      escreva("| Senha Invalida! Tente novamente: ")
      leia(ePass)
    }
    escreva("| ------------- \n")
    escreva("| Acesso Permitido!\n")
  }
}


// ===============================================


programa {
  funcao inicio() {
    real x, y
    x = 1
    y = 2
    enquanto ((x != 0) e (y != 0))
    {   
      escreva("| Valor de X: ")
      leia(x)
      escreva("| Valor de Y: ")
      leia(y)
      se ((x > 0) e (y > 0))
      {       
        escreva("| Q1")
      }
      senao se ((y > 0) e (x < 0))
      {       
        escreva("| Q2")
      }
      senao se ((x > 0) e (y < 0))
      {       
        escreva("| Q4”)
      }
      senao se ((x < 0) e (y < 0))
      {       
        escreva("| Q3”)
      }
      senao
      {
        escreva("| FIM")
      }
      escreva("\n| ------------- \n")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real n1, n2, med
    escreva("| Digite a primeira nota: ")
    leia(n1)
    enquanto ((n1 < 0) ou (n1 > 10))
    {
      escreva("| Valor invalido! Tente novamente: ")
      leia(n1)
    }
    escreva("| Digite a segunda nota: ")
    leia(n2)
    enquanto ((n2 < 0) ou (n2 > 10))
    {
      escreva("| Valor invalido! Tente novamente: ")
      leia(n2)
    }
    escreva("| ------------- \n")
    med = (n1+n2)/2
    escreva("| Média: ", med)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, al, ga, di
    n = 0
    al = 0
    ga = 0
    di = 0
    enquanto (n != 4)
    { 
      escreva("| Informe um codigo (1, 2, 3) ou 4 para parar: ")
      leia(n)
      escolha (n)
      {
        caso 1:
          al++
        pare
        caso 2:
          ga++
        pare
        caso 3:
          di++
        pare       
      }
    }
    escreva("| ------------- \n")
    escreva("| MUITO OBRIGADO!")
    escreva("\n| Alcool: ", al,"\n| Gasolina: ", ga,"\n| Diesel: ", di)    
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro sum, x

    enquanto (x != 0)
    {
      escreva("\n| Entre com um numero: ")
      leia(x)
      se ((x % 2) != 0)
      {
        x = x + 1
      }
      // sum = x + (x+2) + (x+4) + (x+6) + (x+8)
      sum = x * 5 + 20
      escreva("| SOMA: ", sum)
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n

    escreva("| Entre com um numero: ")
    leia(n)
    para (inteiro i = 1; i <= 10; i++)
    {
      escreva("\n| ", n, " x ", i, " = ", n*i)
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro x, y , n, change
    n = 0
    escreva("| Entre com X: ")
    leia(x)
    escreva("| Entre com Y: ")
    leia(y)
    se (x > y)
    {
      change = x
      x = y
      y = change
    }
    para (inteiro i = x; i < y; i++)
    {
      se ((i % 2) != 0)
      {
        n = n + i
      }
    }
    escreva("| SOMA DOS IMPARES = ", n)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro x, y
    escreva("| Entre com X: ")
    leia(x)
    para (inteiro i = 1; i < x; i++)
    {
      se ((i % 2) != 0)        
      {
        escreva("\n| ", i)
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, valor, dentro, fora
    dentro = 0
    fora = 0
    escreva("| Digite a quantidade: ")
    leia(n)
    para (inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(valor)
      se ((valor >= 10) e (valor <= 20))        
      {
        dentro++
      }
      senao
      {
        fora++
      }
    }
    escreva("| DENTRO: ", dentro)
    escreva("\n| FORA: ", fora)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, valor
    escreva("| Digite a quantidade: ")
    leia(n)
    para (inteiro i = 0; i < n; i++)
    {
      escreva("\n| Digite um numero: ")
      leia(valor)

      se ((valor > 0) e ((valor % 2) == 0))        
      {
        escreva("| PAR POSITIVO")
      }
      senao se ((valor > 0) e ((valor % 2) != 0))
      {
        escreva("| IMPAR POSITIVO")
      }
      se ((valor < 0) e ((valor % 2) == 0))        
      {
        escreva("| PAR NEGATIVO")
      }
      senao se ((valor < 0) e ((valor % 2) != 0))
      {
        escreva("| IMPAR NEGATIVO")
      }
      senao se (valor == 0)
      {
        escreva("| NULO")
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real med, x ,y, z
    escreva("| Digite a quantidade: ")
    leia(n)
    para (inteiro i = 0; i < n; i++)
    {
      escreva("| ------------- \n")
      escreva("| Digite um numero: ")
      leia(x)
      escreva("| Digite um numero: ")
      leia(y)
      escreva("| Digite um numero: ")
      leia(z)
      x = x * 2
      y = y * 3
      z = z * 5
      med = (x+y+z)/10
      escreva("| MEDIA: ", med, "\n")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real div, numerador, denominador
    enquanto (verdadeiro)
    {
      escreva("| ------------- \n")
      escreva("| Entre com o numerador: ")
      leia(numerador)
      escreva("| Entre com o denominador: ")
      leia(denominador)
      se (denominador == 0)
      {
        escreva("| DIVISAO IMPOSIVEL\n")
      }
      senao
      {
	   div = numerador/denominador
        escreva("| DIVISAO: ", div, "\n")
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    real fat, n
    fat = 1
    escreva("| ------------- \n")
    escreva("| Entre com um numero: ")
    leia(n)
    para (inteiro i = 1; i <= n; i++)
    {
      fat = fat * i
    }
    escreva("| FATORIAL: ", fat, "\n")
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro qtd, total, test
    real c, r , s, pc, pr, ps
    caracter tip
    c = 0
    r = 0
    s = 0
    escreva("| Casos de teste a serem digitados: ")
    leia(test)
    para (inteiro i = 1; i <= test; i++)
    {
      escreva("| ", i ," - Quantidade de cobaias:  ")
      leia(qtd)
      escreva("| Tipo de cobaia: ")
      leia(tip)
      escolha (tip)
      {
        caso "C":
          c = c + qtd
        pare
        caso "R":
          r = r + qtd
        pare
        caso "S":
          s = s + qtd
        pare
        caso contrario:
          escreva("| ERROR!\n")
      }
      escreva("| ------------- \n")
    }
    total = c + r + s
    pc = (c/total)*100
    pr = (r/total)*100
    ps =  (s/total)*100
    escreva("| RELATORIO FINAL:\n")
    escreva("| Total de cobais: ", total)
    escreva("\n| Total de coelhos: ", c)
    escreva("\n| Total de ratos: ", r)
    escreva("\n| Total de sapos: ", s)
    escreva("\n| Porcentagem de coelhos: ", pc, "%")
    escreva("\n| Porcentagem de ratos: ", pr, "%")
    escreva("\n| Porcentagem de sapos: ", ps, "%")
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real vet[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(vet[i])
    }
    escreva("| ------------- \n")
    escreva("| NUMEROS NEGATIVOS: \n")
    para(inteiro i = 0; i < n; i++)
    {
      se (vet[i] < 0)
      {
        escreva("| ", vet[i],"\n")
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real soma, med
    soma = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real vet[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(vet[i])
      soma = soma + vet[i]
    }
    escreva("| VALORES:")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("  ", vet[i])
    }
    escreva("\n| SOMA: ", soma)
    med = soma/n
    escreva("\n| MEDIA: ", med)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real avg, porc, part
    avg = 0
    part = 0
    escreva("| Entre com a quantidade de pessoas: ")
    leia(n)
    cadeia name[n]
    real age[n]
    real high[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Dados da ", i+1,"a pessoa:")
      escreva("\n| Nome: ")
      leia(name[i])
      escreva("| Idade: ")
      leia(age[i])
      escreva("| Altura: ")
      leia(high[i])
      avg = avg + high[i]
    }
    escreva("| ------------- \n")
    avg = avg/n
    escreva("| Altura Média: ", avg)
    para(inteiro i = 0; i < n; i++)
    {
      se (age[i] < 16)
      {
        part = part + 1
      }
    }
    porc = (part/n)*100
    escreva("\n| Pessoas com menos de 16 anos: ", porc,"%")
    para(inteiro i = 0; i < n; i++)
    {
      se (age[i] < 16)
      {
        escreva("\n| ", name[i])
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real qtd
    n = 0
    qtd = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real num[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(num[i])
    }
    escreva("| ------------- ")
    para(inteiro i = 0; i < n; i++)
    {
      se ((num[i] % 2) == 0)
      {
        qtd = qtd + 1
      }
    }
    escreva("\n| NUMEROS PARES: ")
    escreva("\n| ")
    para(inteiro i = 0; i < n; i++)
    {
      se ((num[i] % 2) == 0)
      {
        escreva("", num[i],"  ")
      }
    }
    escreva("\n| QUANTIDADE DE PARES: ", qtd)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, pBig
    real big
    n = 0
    big = 0
    pBig = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real num[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(num[i])
    }
    escreva("| ------------- ")
    para(inteiro i = 0; i < n; i++)
    {
      se (num[i] > big)
      {
        big = num[i]
        pBig = i
      }
    }
    escreva("\n| MAIOR VALOR: ", big)
    escreva("\n| POSICAO DO MAIOR VALOR: ", pBig)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    n = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real a[n]
    real b[n]
    real c[n]
    escreva("| ------------- \n")
    escreva("| Digite os valores do vetor A: \n")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(a[i])
    }
    escreva("| ------------- \n")
    escreva("| Digite os valores do vetor B: \n")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(b[i])
    }
    escreva("| ------------- \n")
    escreva("| VETOR RESULTANTE: \n")
    para(inteiro i = 0; i < n; i++)
    {
      c[i] = a[i] + b[i]
      escreva("| ", i, " - ", c[i], "\n")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real avg
    n = 0
    avg = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real num[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(num[i])
    }
    escreva("| ------------- ")
    para(inteiro i = 0; i < n; i++)
    {
      avg = avg + num[i]
    }
    avg = avg/n
    escreva("\n| MEDIA DO VETOR: ", avg)
    escreva("\n| ELEMENTOS ABAIXO DA MEDIA: ")
    para(inteiro i = 0; i < n; i++)
    {
      se(num[i] < avg)
      {
        escreva("\n| ", num[i])
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, p
    real avg
    n = 0
    p = 0
    avg = 0
    escreva("| Entre com a quantidade de numeros: ")
    leia(n)
    real num[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Digite um numero: ")
      leia(num[i])
    }
    escreva("| ------------- ")
    para(inteiro i = 0; i < n; i++)
    {
      se((num[i]%2) == 0)
      {
        avg = avg + num[i]
	   p++
      }
    }
    avg = avg/p
    se(avg != 0)
    {
      escreva("\n| MEDIA DO VETOR: ", avg)
    }
    senao
    {
      escreva("\n| NENHUM NUMERO PAR")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, old
    cadeia oldName
    n = 0
    old = 0
    escreva("| Entre com a quantidade de pessoas: ")
    leia(n)
    cadeia name[n]
    real age[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Dados da ", i+1,"a pessoa:")
      escreva("\n| Nome: ")
      leia(name[i])
      escreva("| Idade: ")
      leia(age[i])
    }
    escreva("| ------------- ")
    para(inteiro i = 0; i < n; i++)
    {
      se (age[i] > old)
      {
        old = age[i]
        oldName = name[i]
      }
    }
    escreva("\n| PESSOA MAIS VELHA: ", oldName)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real n1, n2
    n = 0
    n1 = 0.0
    n2 = 0.0
    escreva("| Entre com a quantidade de pessoas: ")
    leia(n)
    cadeia name[n]
    real avg[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Dados da ", i+1,"a pessoa:")
      escreva("\n| Nome: ")
      leia(name[i])
      escreva("| Nota 1: ")
      leia(n1)
      escreva("| Nota 2: ")
      leia(n2)
      avg[i] = (n1+n2)/2
    }
    escreva("| ------------- ")
    escreva("\n| Alunos aprovados: ")
    para(inteiro i = 0; i < n; i++)
    {
      se (avg[i] >= 6)
      {
        escreva("\n| ", name[i])
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, m, f
    real avg, big, small
    n = 0
    m = 0
    f = 0
    avg = 0.0
    big = 0.0
    small = 0.0
    escreva("| Entre com a quantidade de pessoas: ")
    leia(n)
    cadeia name[n]
    real high[n]
    caracter gen[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Dados da ", i+1,"a pessoa:")
      escreva("\n| Nome: ")
      leia(name[i])
      escreva("| Altura: ")
      leia(high[i])
      escreva("| Genero: ")
      leia(gen[i])
    }
    para(inteiro i = 0; i < n; i++)
    {
      se(high[i] > big)
      {
        big = high[i]
      }
    }
    small = big
    para(inteiro i = 0; i < n; i++)
    {
      se(high[i] < small)
      {
        small = high[i]
      }
    }
    para(inteiro i = 0; i < n; i++)
    {
      se(gen[i] == 'f' ou gen[i] == 'F')
      {
        avg = high[i] + avg
        f++
      }
    }
    avg = avg/f
    para(inteiro i = 0; i < n; i++)
    {
      se(gen[i] == 'm' ou gen[i] == 'M')
      {
        m++
      }
    }
    escreva("| ------------- ")
    escreva("\n| Maior Altura: ", big)
    escreva("\n| Menor Altura: ", small)
    escreva("\n| Média da Altura entre as Mulheres: ", avg)
    escreva("\n| Quantidade de Homens: ", m)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, fit10, fit10_20, fit20
    real tFit, tBuy, tSell, fit, porFit
    n = 0
    fit10 = 0
    fit10_20 = 0
    fit20 = 0
    tFit = 0.0
    tBuy = 0.0
    tSell = 0.0
    escreva("| Entre com a quantidade de Produtos: ")
    leia(n)
    cadeia name[n]
    real buy[n]
    real sell[n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Dados da ", i+1,"a produto:")
      escreva("\n| Nome: ")
      leia(name[i])
      escreva("| Preço de compra: ")
      leia(buy[i])
      escreva("| Preço de venda: ")
      leia(sell[i])
    }
    para(inteiro i = 0; i < n; i++)
    {
      fit = sell[i] - buy[i]
      porFit = (fit*100)/buy[i]
      se (porFit < 10)
      {
        fit10 = fit10 + 1
      }
      senao se (porFit <= 20)
      {
        fit10_20 = fit10_20 + 1
      }
      senao
      {
        fit20 = fit20 + 1
      }
    }
    para(inteiro i = 0; i < n; i++)
    {
      tBuy = tBuy + buy[i]
      tSell = tSell + sell[i]
    }
    tFit = tSell - tBuy
    escreva("| ------------- ")
    escreva("\n| Lucro abaixo de 10%: ", fit10)
    escreva("\n| Lucro entre 10% e 20%: ", fit10_20)
    escreva("\n| Lucro acima de 20%: ", fit20)
    escreva("\n| Valor total de compra: ", tBuy)
    escreva("\n| Valor total de venda: ", tSell)
    escreva("\n| Lucro total: ", tFit)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, nNegative
    n = 0
    nNegative = 0
    escreva("| Qual a ordem da matriz? ")
    leia(n)
    inteiro matriz[n][n]
    inteiro diagonal[n][n]
    para(inteiro i = 0; i < n; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
      }
    }
    escreva("| ------------- ")
    escreva("\n| DIAGONAL PRINCIPAL: \n")
    escreva("| ")
    para(inteiro i = 0; i < n; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        se(i == j)
        {
          escreva("", matriz[i][j], "  ")
        }
        se(matriz[i][j] < 0)
        {
          nNegative++
        }
      }
    }
    escreva("\n| QUANTIDADE DE NEGATIVOS: ", nNegative)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro m, n
    real value
    m = 0
    n = 0
    escreva("| Qual a quantidade de linhas da matriz? ")
    leia(m)
    escreva("| Qual a quantidade de colunas da matriz? ")
    leia(n)
    real matriz[m][n]
    real vet[m]
    para(inteiro i = 0; i < m; i++)
    {
      value = 0
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
        value = value + matriz[i][j]
      }
      vet[i] = value
    }
    escreva("| ------------- ")
    escreva("\n| VETOR GERADO: \n")
    para(inteiro i = 0; i < m; i++)
    {
      escreva("| ", vet[i],"\n")
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro m, n
    m = 0
    n = 0
    escreva("| Qual a quantidade de linhas da matriz? ")
    leia(m)
    escreva("| Qual a quantidade de colunas da matriz? ")
    leia(n)
    real matriz[m][n]
    para(inteiro i = 0; i < m; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
      }
    }
    escreva("| ------------- ")
    escreva("\n| VALORES NEGATIVOS: ")
    para(inteiro i = 0; i < m; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        se(matriz[i][j] < 0)
        {
          escreva("\n| ", matriz[i][j])
        }
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro m, n
    real nbig
    m = 0
    n = 0
    escreva("| Qual a quantidade de linhas da matriz? ")
    leia(m)
    escreva("| Qual a quantidade de colunas da matriz? ")
    leia(n)
    real matriz[m][n]
    real vBig[m]
    para(inteiro i = 0; i < m; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
      }
    }
    para(inteiro i = 0; i < m; i++)
    {
      nbig = 0.0
      para(inteiro j = 0; j < n; j++)
      {
        se(matriz[i][j] > nbig)
        {
          nbig = matriz[i][j]
        }
      }
      vBig[i] = nbig
    }
    escreva("| ------------- ")
    escreva("\n| MAIOR ELEMENTO DE CADA LINHA: ")
    para(inteiro i = 0; i < m; i++)
    {
      escreva("\n| ", vBig[i])
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro m, n
    m = 0
    n = 0
    escreva("| Qual a quantidade de linhas da matriz? ")
    leia(m)
    escreva("| Qual a quantidade de colunas da matriz? ")
    leia(n)
    real a[m][n]
    real b[m][n]
    real c[m][n]
    escreva("| ------------- \n")
    escreva("| Digite os valores da matriz A: \n")
    para(inteiro i = 0; i < m; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(a[i][j])
      }
    }
    escreva("| ------------- \n")
    escreva("| Digite os valores da matriz B: \n")
    para(inteiro i = 0; i < m; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(b[i][j])
      }
    }
    escreva("| ------------- ")
    escreva("\n| MATRIZ RESULTANTE: ")
    para(inteiro i = 0; i < m; i++)
    {
      escreva("\n| ")
      para(inteiro j = 0; j < n; j++)
      {
        c[i][j] = a[i][j] + b[i][j]
        escreva("", c[i][j], "  ")
      }
    }
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n
    real value
    n = 0
    value = 0
    escreva("| Qual a ordem da matriz? ")
    leia(n)
    real matriz[n][n]
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
      }
    }
    para(inteiro i = 0; i < n; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        se(i < j)
        {
          value = value + matriz[i][j]
        }
      }
    }
    escreva("| ------------- ")
    escreva("\n| SOMA DOS ELEMENTOS ACIMA DA DIAGONAL PRINCIPAL: ", value)
  }
}


// ===============================================


programa {
  funcao inicio() {
    inteiro n, temp
    real value
    n = 0
    value = 0
    escreva("| Qual a ordem da matriz? ")
    leia(n)
    real matriz[n][n]
    // leitura matriz \/
    para(inteiro i = 0; i < n; i++)
    {
      escreva("| Elementos da ", i+1,"a linha:\n")
      para(inteiro j = 0; j < n; j++)
      {
        escreva("| Elemento [",i,",",j,"]: ")
        leia(matriz[i][j])
      }
    }
    // soma positivos \/
    para(inteiro i = 0; i < n; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        se(matriz[i][j] > 0)
        {
          value = value + matriz[i][j]
        }
      }
    }
    escreva("| ------------- ")
    escreva("\n| SOMA DOS POSITIVOS: ", value)
    escreva("\n| ------------- ")
    // mostrar linha escolhida \/
    escreva("\n| Escolha uma linha: ")
    leia(temp)
    escreva("| LINHA ESCOLHIDA: ")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("", matriz[temp][i], "  ")
    }
    escreva("\n| ------------- ")
    // mostrar coluna escolhida \/
    escreva("\n| Escolha uma Coluna: ")
    leia(temp)
    escreva("| COLUNA ESCOLHIDA: ")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("", matriz[i][temp], "  ")
    }
    escreva("\n| ------------- ")
    // mostrar diagonal princiap \/
    escreva("\n| DIAGONAL PRINCIPAL: ")
    para(inteiro i = 0; i < n; i++)
    {
      para(inteiro j = 0; j < n; j++)
      {
        se(i == j)
        {
          escreva("", matriz[i][j], "  ")
        }
      }
    }
    escreva("\n| ------------- ")
    // alterar matriz negativo * negativo \/
    escreva("\n| MATRIZ ALTERADA: ")
    para(inteiro i = 0; i < n; i++)
    {
      escreva("\n| ")
      para(inteiro j = 0; j < n; j++)
      {
        se(matriz[i][j] < 0)
        {
          matriz[i][j] = matriz[i][j] * matriz[i][j]  
        }
        escreva("", matriz[i][j], "  ")
      }
    }
  }
}


// ===============================================

