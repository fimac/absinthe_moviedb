defmodule MoviedbWeb.Schema.QueryResolver do
  @movies %{
    "1" => %{
      title: "Splash",
      summary: "Tom Hanks falls in love with a fish that has blonde hair",
      cast: [
        %{firstname: "Tom", lastname: "Hanks"},
        %{firstname: "Daryl", lastname: "Hannah"}
      ],
      genres: [%{name: "rom-com"}, %{name: "comedy"}]
    },
    "2" => %{
      title: "Gone in 60 seconds",
      summary: "Nic Cage and Angelina Jolie steal cars",
      cast: [
        %{firstname: "Nicholas", lastname: "Cage"},
        %{firstname: "Angelina", lastname: "Jolie"}
      ],
      genres: [%{name: "thriller"}]
    }
  }

  def resolve_movie(%{id: id}, _) do
    {:ok, Map.get(@movies, id)}
  end

  # keep the name of the field the same as the resolver function.
end
