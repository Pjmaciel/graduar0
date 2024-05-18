programa {

  inclua biblioteca Texto --> tx

  funcao inicio() {
    cadeia romano = "III"
    inteiro resultado = romanoParaInteiro(romano) 
    escreva("O numero romando" + romano + "convertido para inteiro é: " + resultado)
  }

  funcao inteiro romanoParaInteiro(cadeia s)
  {
    inteiro comprimento = tx.numero_caracteres(s)
    inteiro i = 0
    inteiro resultado = 0
    inteiro valorAtual = 0
    inteiro valorProximo = 0

    enquanto(i < comprimento)
    {
      valorAtual = valorRomano(s[i])

      se (i < comprimento(s) - 1) {
        valorProximo = valorRomano(s[i + 1])
      }

      se (valorAtual < valorProximo) {
        // Subtração para números repetidos ou precedidos por um maior valor
        resultado -= valorAtual
      } senao {
        // Adição normal
        resultado += valorAtual
      }

      i++
    }

    retorne resultado
  }

  funcao inteiro valorRomano(caracter c)
  {
    escolha (c)
    {
      caso 'I':
        retorne 1
      caso 'V':
        retorne 5
      caso 'X':
        retorne 10
      caso 'L':
        retorne 50
      caso 'C':
        retorne 100
      caso 'D':
        retorne 500
      caso 'M':
        retorne 1000
      caso contrario:
        retorne 0
    }
  }
  
}
