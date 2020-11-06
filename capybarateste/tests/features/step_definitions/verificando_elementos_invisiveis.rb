Quando("clico em um botao") do
    visit'/buscaelementos/botoes'
    find('#teste').click
end

Entao("verifico se o texto desapareceu na tela com sucesso") do
    page.assert_text(text, 'Voçê Clicou no Botão!')
    page.has_text?('Voçê Clicou no Botão!')
    have_text('Voçê Clicou no Botão!')

    find('#teste').click

    assert_no_text(text, 'Voçê Clicou no Botão!')
    has_no_text?('Voçê Clicou no Botão!')
end