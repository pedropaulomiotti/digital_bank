puts '======================================================================='
puts 'Criando o 1º Usuário...'
user = User.create!(full_name: 'Teste 1', identification: '22296224040', phone:'61912345678',
                    email: 'teste1@user.com', birthday: '1998-05-02', password: '123456')
puts 'Usuário criado com sucesso!'
puts "E-mail: #{user.email}"
puts "Senha: #{user.password}"
puts '======================================================================='
puts 'Criando o 2º Usuário...'
user = User.create!(full_name: 'Teste 2', identification: '72477028006', phone:'61987654321',
                    email: 'teste2@user.com', birthday: '1999-03-09', password: '654321')
puts 'Usuário criado com sucesso!'
puts "E-mail: #{user.email}"
puts "Senha: #{user.password}"
puts '======================================================================='
