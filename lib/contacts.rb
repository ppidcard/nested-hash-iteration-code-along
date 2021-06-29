require 'pry'


  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
def remove_strawberry(contacts)
  contacts.each do |name, name_data|
    if name == "Freddy Mercury"
      name_data.each do |attr, data| 
        if attr == :favorite_ice_cream_flavors
        data.delete_if{|flavour| flavour == 'strawberry'}
        end
      end
    end
  end
  p contacts
end
remove_strawberry(contacts)