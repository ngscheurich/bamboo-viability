defmodule Bamboo.Schema do
  defmacro __using__(_opts) do
    quote do
      use Ecto.Schema

      @type t :: %__MODULE__{}

      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
      @timestamps_opts [type: :utc_datetime]
    end
  end
end
