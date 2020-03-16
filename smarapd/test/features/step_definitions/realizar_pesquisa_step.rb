Dado("que foi realizado o acesso a url do sistema") do                        
     visit ''
  end                                                                           
                                                                                
  Quando("realizo a pesquisa de pessoas") do
    pesquisar.preencher_campo_pesquisa
    pesquisar.realizar_pesquisa
end                                                                           
    
 Então("será exibido a tabela referente a pesquisa.") do                       
    page.assert_text('Karina')
    expect(page.assert_text('Karina')).to eq true
 end                                                                           
    