require 'rails_helper'

feature 'Ordinary user logs in' do
  scenario 'successfully' do
    user = Ordinary.create(name: 'caio',
                              email: 'caio@gmail.com',
                              password: 'qwoiruwieur',
                              password_confirmation: 'qwoiruwieur')


    visit login_path

    fill_in 'Email', with: user.email
    fill_in 'Senha', with: user.password
    click_on 'Entrar'

    expect(page).to have_content 'Bem vindo!!!'
  end
end
