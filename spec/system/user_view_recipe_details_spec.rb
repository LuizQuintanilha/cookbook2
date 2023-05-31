require 'rails_helper'

describe 'User view recipe details' do
  it 'sucessfully' do

    visit root_path
    click_on 'Pudim de pão'

    expect(current_path).to eq recipe_path
    expect(page).to have_content 'Pudim de pão'
    expect(page).to have_content '45 minutos'
    expect(page).to have_content 'pão, leite, açucar, ovo'
    expect(page).to have_content 'sobremesa'

  end
end