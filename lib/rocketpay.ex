defmodule Rocketpay do
  alias Rocketpay.Users.Create, as: UserCreate

  defdelegate create_users(params), to: UserCreate, as: :call
end
