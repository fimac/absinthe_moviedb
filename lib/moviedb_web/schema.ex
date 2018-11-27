defmodule MoviedbWeb.Schema do
  use Absinthe.Schema
  alias __MODULE__.QueryResolver

  object :actor do
    field(:firstname, :string)
    field(:lastname, :string)
  end

  object :genre do
    field(:name, :string)
  end

  object :movie do
    field(:title, :string)
    field(:summary, :string)
    field(:cast, list_of(:actor))
    field(:genres, list_of(:genre))
  end

  query do
    field(:movie, :movie) do
      @desc "The unique ID of the movie"
      arg(:id, non_null(:id))

      resolve(&QueryResolver.resolve_movie/2)
    end
  end
end
