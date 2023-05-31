require 'rails_helper'

describe 'User view recipe details' do
  it 'sucessfully' do
    Recipe.create!(name: 'Pão de forma', time_to_prepare:'30 minutos', ingredients: 'trigo, agua, ovo', recipe_type: 'pão')
    Recipe.create!(name: 'Pudim de pão', time_to_prepare:'45 minutos', ingredients: 'pão, leite, açucar, ovo', recipe_type: 'sobremesa')

    visit root_path
    click_on 'Pudim de pão'

    expect(current_path).to eq recipe_path(Recipe.last)
    expect(page).to have_content 'Pudim de pão'
    expect(page).to have_content '45 minutos'
    expect(page).to have_content 'pão, leite, açucar, ovo'
    expect(page).to have_content 'sobremesa'
  end
end