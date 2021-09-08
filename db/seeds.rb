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
  name: 'Soils',
  disc: 'test disc for blah blah blah'
},{
  name: 'Landscape Rocks',
  disc: 'test disc for blah blah blah'
},{
  name: 'Gravels',
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
  cat:  Cat.find_by(name: cat.first[:name])
},{
  name: 'top soil',
  disc: 'test disc for blah blah blah',
  cat: Cat.find_by(name: cat.first[:name])
},{
  name: 'pebbles',
  disc: 'test disc for blah blah blah',
  cat: Cat.find_by(name: cat.first[:name])
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
   sub_cat: SubCat.find_by(name: sub_cat.first[:name])
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
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.second[:name]),
},{
  name: "Beach Sand",
  price: 3000,
  disc: "Nice clean sand for beaches, sandboxes, etc.",
  notes: "",
  unit: "(cu.yd.)",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "Colored Cedar Mulch",
  price: 5500,
  disc: "Red, Black, and Brown",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "River Rock 3-5”",
  price: 7000,
  disc: "Colorful roundish rocks for landscaping features",
  notes: "Screened & washed",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "River Rock 1-2”",
  price: 7000,
  disc: "Colorful roundish rocks for landscaping features",
  notes: "Screened & washed",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "Pea Gravel 3/8”",
  price: 7000,
  disc: "Decorative and easy on the feet. Pathways, firepits, dry gardens, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "Natural Field Boulders",
  price: 8000,
  disc: "Random sizes that can be man-handled. Rock gardens, small walls, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
},{
  name: "5/8 crushed Limestone",
  price: 3600,
  disc: "Gravel for roads and bases. Packs hard",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
},{
  name: "Limestone Screenings",
  price: 3600,
  disc: "Very fine grey gravel. Use for levelling stones, topdressing diveways, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
},{
  name: "3/4 Clear Limestone",
  price: 4000,
  disc: "Clean stone used for good drainage",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
},{
  name: "Sandy A Gravel",
  price: 3600,
  disc: "Stone and sand blend. Use for mixing concrete, roads, bases.",
  notes: "",
   unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
},{
  name: "Mortar Sand",
  price: 3600,
  disc: "Fine, washed sand for mixing mortar",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
},{
  name: "Dry Stack Wall Stone",
  price: 30000,
  disc: "Random sized flat limestone for building rustic garden walls.",
  notes: "",
  unit: "Per Ton",
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
},{
  name: "Limestone steps (random)",
  price: 5000,
  disc: "6” to 8” thick stone used for making steps.",
  notes: " Requires heavy equipment to install.",
  unit: "per Linear face ft",
  quantity: 0,
   cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
},{
  name: "Armor rock 10 -12” thick (random)",
  price: 3500,
  disc: "Block style stone used for making retaining walls.",
  notes: "Requires heavy equipment to install.",
  unit: "per Linear face ft",
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
},{
  name: "Limestone Flagstone",
  price: nil,
  disc: "Various prices depending on requirements",
  notes: "Per Ton",
  unit: 0,
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
},{
  name: "Woven Geotextile 200W",
  price: 0020,
  disc: "Base separator. Use under roads, parking areas, patios, etc.",
  notes: "Prevents sinking and weeds.",
  unit: "per Square ft.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
},{
  name: "Non-Woven Geotextile 270R (Filter CLoth)",
  price: 0020,
  disc: ". Use behind retaining walls, under pea gravel, etc.",
  notes: "Required for shoreline work.",
  unit: "per Square ft.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
},{
  name: "Stabilizing Sand for Flagstone & Pavers.",
  price: 0020,
  disc: "Material to fill gaps between flagstone or pavers. Sweep in and apply water to resist washout.",
  notes: "",
  unit: "per Bag.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
},{
  name: "Naturalization mix",
  price: 1200,
  disc: "A blend of hardy grasses, clover, trefoil. Great cottage ground cover.",
  notes: "",
  unit: "per kg.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
},{
  name: "Eco-Lawn low maintenance",
  price: 1500,
  disc: "Grass varieties that establish quickly, then requires less mowing.",
  notes: "",
  unit: "per kg.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
}]

  puts items.count
  puts Cat.find_by(name: cat.first[:name] )
  puts Cat.find_by(name: cat.second[:name])
  puts Cat.find_by(name: cat.third[:name])
  puts Cat.find_by(name: cat.last[:name])
items.each do |item|
  Item.create(item)

end
