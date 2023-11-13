class ProgTae < ApplicationRecord

    validates :siape,
        length: {minimum:6, maximum:7}
    validates :siape, :nome, :portaria, :classe, :inicio_prog, :fim_prog, :nivel_padrao_atual, 
    :nivel_padrao_novo, :iq_novo, :iq_atual,
        presence: true 
    validates :nivel_padrao_atual, :nivel_padrao_novo,
        length: {minimum:3, maximum:3}
        
end
7