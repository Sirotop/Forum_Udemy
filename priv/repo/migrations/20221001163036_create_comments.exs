defmodule Forum.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :conent, :string

      timestamps()
    end
  end
end
