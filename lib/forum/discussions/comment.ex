defmodule Forum.Discussions.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :conent, :string

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:conent])
    |> validate_required([:conent])
  end
end
