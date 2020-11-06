Quando('eu faco cadastro') do
 visit'/users/new' 
 fill_in(id:'user_name', with: 'eduardo')
 find('#user_lastname').set('silva')
 find('#user-email').send_keys('edu.ehch@gmail.com')
 fill_in(id: 'user_address', with: 'nilda ribeiro')
 find('#user_university').set('anhanguera')
 find('#user_profile').send_keys('desempregado')
 fill_in(id: 'user_gender', with: 'masc')
 find('#user_age').set('39')
 find('input[value="Criar"]').click
end
  
Entao('verifico se fui cadastrado') do
texto = find('#notice') 
expect(texto.text).to eql 'Usuário Criado com sucesso'
   
end