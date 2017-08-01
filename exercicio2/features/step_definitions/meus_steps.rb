Dado(/^que eu esteja na pagina inicial do site demoQA$/) do
  visit "http://www.demoqa.com/"
end

Quando(/^acessar a tela de registro$/) do
  click_link('Registration')
end

Quando(/^preencher os dados solicitados corretamente$/) do
  fill_in('name_3_firstname', :with => 'Gregory')
  fill_in('name_3_lastname', :with => 'Projeto')
  find("input[value='married']").click
  find("input[value='reading']").click
  select('Brazil', :from=>'dropdown_7')
  select('8', :from=>'mm_date_8')
  select('7', :from=>'dd_date_8')
  select('1992', :from=>'yy_date_8')
  fill_in('phone_9', :with => '11982134228')
  fill_in('username', :with => 'desafiodojo2')
  fill_in('email_1', :with => 'testedojo2@gmail.com')
  fill_in('description', :with => 'teste automatizado para o Desafio do DOJO')
  senha = '2132132131231231231231231312'
  fill_in('password_2', :with => senha)
  fill_in('confirm_password_password_2', :with => senha)
    
end

Quando(/^clicar em enviar$/) do
  click_button('Submit')
end

Então(/^eu terei me cadastrado com sucesso no site demoQA$/) do
  assert_text('Thank you for your registration')
end
