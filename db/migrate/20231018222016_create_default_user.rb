class CreateDefaultUser < ActiveRecord::Migration[6.0]
  def up
    User.create!(
      login: "teste",
      password: "teste",
      name: "Teste User",
      email: "test@domain.com"
    )
  end

  def down
    user = User.find_by(login: "teste")
    user&.destroy
  end
end
