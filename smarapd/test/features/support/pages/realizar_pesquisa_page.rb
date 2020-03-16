class RealizarPesquisa < SitePrism::Page

    set_url ''

    element :pesquisa, '#txtNome'
    element :btnPesquisar, '.glyphicon.glyphicon-search'
    elements :lista, 'tr > td'

    def preencher_campo_pesquisa
        pesquisa.set 'Karina'
    end   
        
    def realizar_pesquisa
        btnPesquisar.click
    end
end
        


    