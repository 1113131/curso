Quando('seleciono o mouse hover') do
 visit '/interacoes/mousehover'
 #find('.activator').hover
 find('.activator').hover.click
 sleep(5)
end