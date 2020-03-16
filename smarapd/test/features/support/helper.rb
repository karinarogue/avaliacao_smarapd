module Helper

    def tirar_foto(nome_arquivo, resultado)
        #a pasta screenshots que vai ser concatenado com o resultado
        caminho_arquivo = "screenshots/#{resultado}"

        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        #tira foto da pagina
        page.save_screenshot(foto)
        #add relatório html, com link 'Clique aqui
        embed(foto,'imagem/png', 'Clique Aqui')
        
    end
    
end