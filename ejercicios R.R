#1. Clasificación de números positivos o negativos.

numeros <- numeric(10)

for (i in 1:10) {
  numeros[i] <- as.numeric(readline(prompt = paste("Ingresa el número", i, ": ")))
}

for (num in numeros) {
  if (num > 0) {
    cat(num, "es positivo\n")
  } else if (num < 0) {
    cat(num, "es negativo\n")
  } else {
    cat(num, "es cero\n")
  }
}

#2. Cálculo de números pares e impares.

numeros <- sample(1:100, 100, replace = TRUE)
pares <- c()
impares <- c()

for (num in numeros) {
  if (num %% 2 == 0) {
    pares <- c(pares, num)
  } else {
    impares <- c(impares, num)
  }
}

cat("Números pares:\n", pares, "\n")
cat("Números impares:\n", impares, "\n")



#3. Suma de los primeros N números.

N <- as.integer(readline(prompt = "Ingresa un número N: "))
suma <- 0

for (i in 1:N) {
  suma <- suma + i
}

cat("La suma de los números del 1 al", N, "es:", suma, "\n")



#4. Número de Fibonacci.

fibonacci <- c(0, 1)
i <- 3

while (i <= 20) {
  siguiente <- fibonacci[i - 1] + fibonacci[i - 2]
  fibonacci <- c(fibonacci, siguiente)
  i <- i + 1
}

cat("Los primeros 20 números de Fibonacci son:\n", fibonacci, "\n")


#5. Cálculo de factorial.


n <- as.integer(readline(prompt = "Ingresa un número n: "))
factorial <- 1

for (i in 1:n) {
  factorial <- factorial * i
}

cat("El factorial de", n, "es:", factorial, "\n")


#6. Juego de adivinanza.

set.seed(Sys.time())  
numero_secreto <- sample(1:100, 1)

repeat {
  adivinanza <- as.integer(readline(prompt = "Adivina el número entre 1 y 100: "))
  
  if (is.na(adivinanza)) {
    cat("Entrada inválida. Ingresa un número.\n")
    next
  }
  
  if (adivinanza < numero_secreto) {
    cat("El número es mayor.\n")
  } else if (adivinanza > numero_secreto) {
    cat("El número es menor.\n")
  } else {
    cat("¡Felicidades! Adivinaste el número:", numero_secreto, "\n")
    break
  }
}




# Ejercicio 7: Validación de contraseña

password_correcta <- "1234"

intentos <- 0

repeat {
  
  password <- readline(prompt = "Ingresa la contraseña: ")
  
  intentos <- intentos + 1
  
  if (password == password_correcta) {
    
    cat("Contraseña correcta.\n\n")
    
    break
    
  } else if (intentos >= 3) {
    
    cat("Acceso bloqueado.\n\n")
    
    break
    
  } else {
    
    cat("Contraseña incorrecta, intenta de nuevo.\n")
    
  }
  
}

# 8. Suma de dígitos de un número.

numero <- as.integer(readline(prompt = "Ingresa un número entero: "))
suma <- 0

while (numero > 0) {
  suma <- suma + (numero %% 10)  
  numero <- numero %/% 10        
}

cat("La suma de los dígitos es:", suma, "\n")



# 9. Impresión de patrones:

n <- 10

for (i in 1:n) {
  cat(strrep("*", i), "\n")
}

# 10. Números primos:

for (num in 2:100) {
  es_primo <- TRUE
  
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      es_primo <- FALSE
      break
    }
  }
  
  if (es_primo) {
    cat(num, "\n")
  }
}

























































