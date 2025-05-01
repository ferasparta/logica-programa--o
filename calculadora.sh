while True:
  try:
    operacao = input("Digite a operação (+,-,*,/, ou 'sair' para encerrar):")
    if operacao.lower() == 'sair':
      break

    num1 = float(input("Digite o primeiro número: "))
    num2 = float(input("Digite o segundo número: "))

    if operacao == '+':
      resultado = num1 + num2
    elif operacao == '-':
      resultado = num1 - num2
    elif operacao == '*':
      resultado = num1 * num2
    elif operacao == '/':
      if num2 != 0:
        resultado = num1 / num2
      else:
        print("Erro: Divisão por zero!")
        continue # Volta ao início do loop
    else:
      print("Operação inválida!")
      continue # Volta ao início do loop

    print("Resultado:", resultado)
  except ValueError:
    print("Erro: Entrada inválida. Por favor, digite números válidos.")
