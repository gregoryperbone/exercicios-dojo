Dado(/^que eu esteja na pagina inicial do site demoQA$/) do
  visit('http://opensource.demo.orangehrmlive.com/')
end

Quando(/^realizar login$/) do
  fill_in('txtUsername',:with => 'admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('LOGIN')
  
end

Quando(/^clicar no menu pim > Add Employee$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Quando(/^preencher os campos disponibilizados$/) do
  fill_in('firstName', :with => 'desafio')
  fill_in('middleName', :with => 'cucumber')
  fill_in('lastName', :with => 'dojo')
  check('chkLogin')
  fill_in('user_name', :with => 'desafio')
  senha = '123456789'
  fill_in('user_password', :with => senha)
  fill_in('re_password', :with => senha)
  select('Enabled' ,:from=>'status')
  
end

Quando(/^clicar em salvar$/) do
  click_button('Save')
end

Quando(/^clicar no menu pim > Employee List$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  sleep 2
end

Quando(/^selecionar um funcionario$/) do
  fill_in('empsearch_employee_name_empName', :with=> 'desafio cucumber')
  click_button('Search')
  click_link('desafio cucumber')
  sleep 2
  
end

Quando(/^clicar em editar$/) do
  click_button('Edit')
end

Quando(/^alterar um campo especifico$/) do
  fill_in('personal_txtEmpFirstName', :with => 'Alterando')
  fill_in('personal[txtEmpMiddleName]',:with => 'usuario')
  
end

Então(/^eu terei o colaborador cadastrado com sucesso$/) do
  assert_text('Personal Details')
end

Então(/^eu terei o campo salvo com sucesso$/) do
  assert_text('Successfully Saved')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch_employee_name_empName', :with=> 'Alterando usuario')
  click_button('Search')
  click_link('Alterando usuario')
  assert_text('Personal Details')
  assert_text('Alterando')
  assert_text('usuario')
end

