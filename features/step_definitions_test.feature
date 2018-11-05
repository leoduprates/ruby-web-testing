# language: pt

Funcionalidade: Testes Unitarios para as Step Definitionss

  @unit_test
  Cenário: Testando as Step Definitions
    Dado que eu acesse a pagina "file:///../test/www/index.html"
    Quando eu procuro pelo campo "Search"
    E eu preencho "Test" no campo "Search"
    Entao o texto "Test" deve existir no campo "name: searchinput"
    E eu clico no botão "xpath: //input[@value='send']"
    Entao eu vejo o texto "I will be gone in a second"
    Quando eu limpo o campo "name: a"
    E eu seleciono "name: checkbox" no check box
    E eu seleciono a opção número 1 do combobox "name: selectbox"
    Quando eu seleciono a opção com "dos" no combobox "name: selectbox2"
    E eu envio o formulario "xpath: //input[@value='send']"
    Quando eu deleto os cookies
    E eu espero por 2 segundos
    Entao eu espero que o título da pagina seja "WebdriverIO Testpage"
    Entao eu espero que o elemento "name: selectbox2" esteja visível
    Entao eu tiro um screenshot


    @smoke
    Cenário: Isso é um teste
      Dado que eu acesse o Woop
      E eu preencho "Test" no campo "search"
