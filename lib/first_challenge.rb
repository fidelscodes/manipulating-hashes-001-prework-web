require "pry"

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts["Freddy Mercury"].each do |attribute, value|
    # attribute here is :name, :email, :favorite_icecream_flavors
    if attribute == :favorite_icecream_flavors
      # value here is the array of ice cream flavors
      value.delete_if { |flavor| flavor == "strawberry" }
      # binding.pry
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end
