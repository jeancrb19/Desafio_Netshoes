#language: pt
Funcionalidade: Validar funções de compra na netshoes
  Cenario: Compra de tenis no site da netshoes
    Dado que estou no site "netshoes"
    Quando busco por "Tenis Mizuno Masculino"
    E seleciono o produto e escolho o tamanho
    E clico em Comprar
    Entao finalizo a compra
