#language: pt
#utf-8

Funcionalidade: Manter colaborador
	Eu como funcionario do RH
	Quero manter um colaborador no site ORANGEHRM
	Para gerenciar o quadro de funcionarios

@parte1	
Cenario: Realizar cadastro de funcionario
	Dado que eu esteja na pagina inicial do site demoQA
	Quando realizar login 
	E clicar no menu pim > Add Employee
	E preencher os campos disponibilizados
	E clicar em salvar
	Então eu terei o colaborador cadastrado com sucesso

@parte2	
Cenario: Editar cadastro de funcionario
	Dado que eu esteja na pagina inicial do site demoQA
	Quando realizar login 
	E clicar no menu pim > Employee List
	E selecionar um funcionario
	E clicar em editar
	E alterar um campo especifico
	E clicar em salvar
	Então eu terei o campo salvo com sucesso
	