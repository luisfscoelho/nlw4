defmodule Rocketpay.Repo.Migrations.CreateAccoutsTable do
  use Ecto.Migration

  def change do
    create table :accounts do
      add :balance, :decimal
      add :user_id, references(:users, type: :binary_id)

      timestamps()
    end

    create constraint(:accounts, :balance_mus_be_positive_or_zero, check: "balance >= 0")
  end
end
