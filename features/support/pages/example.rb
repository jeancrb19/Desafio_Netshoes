class Methods
  include Capybara::DSL

  def seleciona_maior_tamanho
    #conta quantos tamanhos tem na tela e armazena em uma variavel
    qtd_tamanho = within('.product-attr-list.attr-size') do
      all('.attr-name').count
    end
    puts "Tamanho #{qtd_tamanho}"
    #subtrai - 1 dessa variavel para que seja possível chamarmos ela pela posição
    qtd_tamanho = qtd_tamanho - 1

    #busco o elemento pela posição -1 e clico nele e valido se esta disponivel
    all('.attr-name')[qtd_tamanho].click

    while has_text?('COMPRAR') == false
      #Enquanto não houver o texto comprar na tela, ele subtrai - 1 da quantidade e tenta o proximo tamanho
      qtd_tamanho = qtd_tamanho - 1
      all('.attr-name')[qtd_tamanho].click
    end
  end
end
