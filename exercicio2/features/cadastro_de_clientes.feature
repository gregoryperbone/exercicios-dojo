#language: pt
#utf-8

Funcionalidade: Cadastrar Clientes
	Eu como usuario
	Quero realizar o cadastro no site
	Para poder acessar a area logada
	
Cenario: Realizar cadastro de usuario
	Dado que eu esteja na pagina inicial do site demoQA
	Quando acessar a tela de registro 
	E preencher os dados solicitados corretamente
	E clicar em enviar
	Então eu terei me cadastrado com sucesso no site demoQA
	