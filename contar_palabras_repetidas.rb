#contar palabras repetidas
text = "some words bca or abc or ab  ab ab  or even abx are ok but some others like abcx and abcxxx are compressed"
palabras = text.downcase.split(' ')

palabra = {}
palabras.each do |w|
  if palabra.has_key?(w)
    palabra[w] = palabra[w] + 1
  else
    palabra[w] = 1
  end
end


f = []
palabra.sort{ |a,b| a[1] <=> b[1] }.each do |pal|
  f << {palabra: pal[0], cantidad: pal[1]}
end

print f.sort_by! { |h| h[:cantidad] }.reverse
