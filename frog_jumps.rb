=begin
si el valor de la posicion de partida es menor a la posicion de destino, voy incrementandola.
por cada iteracion voy agregando un salto adicional partiendo desde cero.
=end

def frog_jumps(desde, hasta, distancia)

  saltos = 0
  acumulador = desde
  while acumulador < hasta do
    acumulador += distancia
    saltos += 1
  end

  puts "Desde: #{desde} Hasta: #{hasta} con distancias de #{distancia} se requieren #{saltos} saltos."
end


frog_jumps(10, 85, 30)
