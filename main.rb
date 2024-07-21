def caesar_cipher(string, key)
  array = string.bytes
  array.map! do |number|
    if number.between?(65,90) || number.between?(97,122)
      number+=key
      unless number.between?(65,90) || number.between?(97,122)
        number-=26
      end
    end
    number.chr
  end
 array.join
end
puts 'Digite o texto que deve ser criptografado:'
string = gets.chomp
puts 'Insira a chave para criptografia:'
key = gets.chomp.to_i 
puts caesar_cipher(string, key)