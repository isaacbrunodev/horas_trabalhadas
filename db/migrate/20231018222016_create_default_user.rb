class CreateDefaultUser < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        User.create(
          login: "teste",
          password: "teste",
          name: "Test User",
          email: "test@domain.com"
        )
      end

      dir.down do
        user = User.find_by(login: "teste")
        user&.destroy
      end
    end
  end
end
