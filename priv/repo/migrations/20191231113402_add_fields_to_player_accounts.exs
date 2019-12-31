defmodule Platform.Repo.Migrations.AddFieldsToPlayerAccounts do
  use Ecto.Migration

  def change do
    alter table(:players) do
      add :display_name, :string
      add :password_digest, :string
      modify :score, :integer, default: 0
    end

    create unique_index(:players, [:username])
  end
end
