class CreateProgTaes < ActiveRecord::Migration[7.1]
  def change
    create_table :prog_taes do |t|
      t.integer :siape
      t.string :nome
      t.integer :portaria
      t.string :classe
      t.integer :nivel_padrao_atual
      t.integer :nivel_padrao_novo
      t.date :inicio_prog
      t.date :fim_prog
      t.integer :iq_atual
      t.integer :iq_novo
      t.integer :anuenio
      t.boolean :insalubridade
      t.boolean :medico
      t.float :venc_basico_comp

      t.timestamps
    end
  end
end
