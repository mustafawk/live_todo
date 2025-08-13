defmodule LiveTodo.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :title, :string
    field :completed, :boolean, default: false
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(todo, attrs, user_scope) do
    todo
    |> cast(attrs, [:title, :completed])
    |> validate_required([:title, :completed])
    |> put_change(:user_id, user_scope.user.id)
  end
end
