Dado("que estou no site {string}") do |url|
  #Acessa a url citada dentro do arquivo elements.yml
  visit(DATA[url])
end

Quando("busco por {string}") do |produto|
  #preenche a barra de pesquisa com o produto e pressiona o enter
  find(DATA['barra_pesquisa']).set(produto).native.send_keys(:enter)
end

Quando("seleciono o produto e escolho o tamanho") do
  #Seleciona o primeiro produto da lista de resultados
  first(DATA['produto']).click
  #valida se esta na tela do produto pelo texto Comprar
  assert_text('COMPRAR')
  #seleciona o maior tamanho disponivel, codificação ta dentro de pages/example.rb
  Methods.new.seleciona_maior_tamanho
end

Quando("clico em Comprar") do
  #Clica no botao comprar
  click_button("Comprar")
end

Entao("finalizo a compra") do
  #Clica no botao concluir compra
  first('#cartCompletePurchase').click
end
