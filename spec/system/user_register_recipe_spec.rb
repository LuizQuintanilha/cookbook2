require 'rails_helper'

describe 'user registers new recipe' do 
  it 'successfully' do 

    visit root_path 
    click_on 'Cadastrar Receita'
    fill_in 'Nome', with: 'Pudim de pão'
    fill_in 'Tempo de preparo', with: '60 minutos'
    fill_in 'Tipo de receita', with: 'Sobremesa'
    fill_in 'Ingredientes', with: 'Leite, pão, ovo, açucar'
    click_on 'Salvar'

    expect(current_path).to eq root_path
    expect(page).to have_content 'Receita cadastrada com sucesso.'
  end 
end 