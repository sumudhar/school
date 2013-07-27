require 'csv'

puts "Importing countries..."
CSV.foreach(Rails.root.join("countries.csv"), headers: true) do |row|
  Country.create! do |country|
    country.id = row[0]
    country.name = row[1]
  end
end

puts "Importing states..."
CSV.foreach(Rails.root.join("states.csv"), headers: true) do |row|
  State.create! do |state|
    state.name = row[0]
    state.country_id = row[2]
  end
end
puts "Importing Comminities..."

Community.create([
      {name: "BC-A"},
      {name: "BC-B"},
      {name: "BC-C"},
      {name: "BC-D"},
      {name: "SC-A"},
      {name: "SC-B"},
      {name: "SC-C"},
      {name: "SC-D"},
      {name: "OC"},
      {name: "ST"},
      {name: "OTHER"}
    ])
  
puts "Importing Courses..."  

 Course.create(
    [
    {name: "PreKg", description: "KinderGarden"},
    {name: "LKG", description: "LKG"},
    {name: "UKG", description: "UKG"},
    {name: "First", description: "I"},
    {name: "Second", description: "II"},
    {name: "Third", description: "III"},
    {name: "Fourth", description: "IV"},
    {name: "Fifth", description: "V"},
    {name: "Sixth", description: "VI"},
    {name: "Seventh", description: "VII"},
    {name: "Eighth", description: "VIII"},
    {name: "Ninth", description: "IX"},
    {name: "Tenth", description: "X"},
    ]
    )  
puts "Creating Religions"
 Religion.create([
    {name: "Hindhu"},
    {name: "Muslim"},
    {name: "Christian"},
    {name: "Sikh"},
    {name: "Buddist"},
    {name: "Jain"},
    {name: "Zorastian"},
       ])