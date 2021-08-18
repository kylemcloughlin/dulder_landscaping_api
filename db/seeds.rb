# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# @item = Item.destory_all
# @sub_cat = SubCat.destory_all

cat = [{
  name: 'Gravels',
  disc: 'test disc for blah blah blah'
},{
  name: 'Landscape Rocks',
  disc: 'test disc for blah blah blah'
},{
  name: 'Soils',
  disc: 'test disc for blah blah blah'
},{
  name: 'Related Products',
  disc: "test disc for blah blah blah",
}
]


cat.each do |cc|
  Cat.create(cc)
end
sub_cat = [{
  name: 'mulch',
  disc: 'test disc for blah blah blah',
  cat:  Cat.find_by(name: cat.third[:name])
},{
  name: 'top soil',
  disc: 'test disc for blah blah blah',
  cat: Cat.find_by(name: cat.last[:name])
}
]

puts cat.last
puts cat.last[:name]

sub_cat.each do |cc|
  SubCat.create(cc)
end


items = [
  {
   name: "Triple Mix garden soil", 
   price: 4500,
   disc: "Use for gardens or topdressing for grass.",
   notes: "(Our most popular product)", 
   unit: '(cu.yd.)',
   quantity: 0,
   cat: Cat.find_by(name: cat.last[:name]),
   sub_cat: SubCat.find_by(name: sub_cat.last[:name])
  },{
  name: "Screened Topsoil",
  price: 4000,
  disc: "n/a",
  notes: "",
  unit: " (cu.yd.)",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.first[:name]),
},{
  name: "Sandy Fill",
  price: 3500,
  disc: "Use for filling low areas. Packs well and will grow grass",
  notes: "",
  unit: "(cu.yd)",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: nil,
},{
  name: "Pine Bark Mulch",
  price: 5500,
  disc: "Reduce watering and weed growth in gardens. Use to naturalize.",
  notes: "(Our most popular mulch)",
  unit: "(cu.yd.)",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.second[:name]),
},{
  name: "Beach Sand",
  price: 3000,
  disc: "Nice clean sand for beaches, sandboxes, etc.",
  notes: "",
  unit: "(cu.yd.)",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
}
]

items.each do |item|
 Item.create(item)
end