defmodule Forum.DiscussionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Forum.Discussions` context.
  """

  @doc """
  Generate a topic.
  """
  def topic_fixture(attrs \\ %{}) do
    {:ok, topic} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> Forum.Discussions.create_topic()

    topic
  end

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        conent: "some conent"
      })
      |> Forum.Discussions.create_comment()

    comment
  end
end
