
=begin

Recibo los parametros.
transformo todas las palabras en un array compuesto de sus
caracteres, asi puedo ordenar alfabeticamente e ir comparando luego una a una las palabras.
Si cumple la condicion se agregan a un array vacio para luego ser mostrado como resultado.

=end

def anagrama(palabra="",palabras=[])
    palabra = palabra.downcase.split('')
    anagramas = []
    palabras.each do |w|
      anagramas << w if (w.downcase.split('').sort == palabra.sort)
    end

    p anagramas
end

anagrama('gato',['colo','coso','toga','agot'])
