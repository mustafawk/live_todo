defmodule LiveTodo.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LiveTodo.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(scope, attrs \\ %{}) do
    attrs =
      Enum.into(attrs, %{
        completed: true,
        title: "some title"
      })

    {:ok, todo} = LiveTodo.Todos.create_todo(scope, attrs)
    todo
  end
end
