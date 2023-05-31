require 'rails_helper'

describe 'User visit homepage' do
  it 'and view the homepage' do

    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_content 'Cookbook'
  end

  it 'and view recype list' do
    Recipe.create!(name: 'Pão de forma', time_to_prepare:'30 minutos', ingredients: 'trigo, agua, ovo', recipe_type: 'pão')
    Recipe.create!(name: 'Pudim de pão', time_to_prepare:'45 minutos', ingredients: 'pão, leite, açucar, ovo', recipe_type: 'sobremesa')

    visit root_path

    expect(page).to have_content 'Pão de forma'
    expect(page).to have_content 'Pudim de pão'
  
  end
  
end