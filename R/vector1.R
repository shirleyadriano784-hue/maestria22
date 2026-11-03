# Función para visualizar el mayor y menor de un vector

visualizar_mayor_menor <- function(vector) {

  # Calcular el valor mayor y menor
  mayor <- max(vector)
  menor <- min(vector)

  # Mostrar resultados
  cat("Vector:", vector, "\n")
  cat("Número mayor:", mayor, "\n")
  cat("Número menor:", menor, "\n")

  # Crear gráfico
  plot(vector,
       type = "b",
       col = "blue",
       pch = 19,
       main = "Mayor y menor de un vector",
       xlab = "Posición",
       ylab = "Valores")

  # Dibujar línea del valor mayor
  abline(h = mayor, col = "red", lty = 2, lwd = 2)

  # Dibujar línea del valor menor
  abline(h = menor, col = "green", lty = 2, lwd = 2)

  # Agregar leyenda
  legend("topright",
         legend = c("Valores", "Mayor", "Menor"),
         col = c("blue", "red", "green"),
         lty = c(1, 2, 2),
         pch = c(19, NA, NA))
}

# Crear un vector de ejemplo
datos <- c(15, 8, 25, 3, 18, 30, 12, 5)

# Ejecutar la función
visualizar_mayor_menor(datos)
