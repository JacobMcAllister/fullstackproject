# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     InClass.Repo.insert!(%InClass.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias InClass.Repo
alias InClass.Company.Developer


firstNames = ~w(John Susan Steve Stephanie Alex Ryan Paul Mike Keith Jake Matt Annette Tom)
lastNames = ~w(Smith Thompson Lancaster O'Conner Steveson O'Bama Trump)
zipcodes = ~w(89506 04538 04543 67055 67056 67058 85306 85321)
Enum.each(1..20, fn i ->
  Repo.insert!(%Developer{first_name: Enum.random(firstNames), last_name: Enum.random(lastNames), email: "itsover@finally.com", expertise: "Surviving", zipcode: Enum.random(zipcodes)})
end)
