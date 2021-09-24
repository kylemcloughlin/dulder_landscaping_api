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
   unit: "Cubic Yard",
   quantity: 0,
   cat: Cat.find_by(name: cat.last[:name]),
   sub_cat: SubCat.find_by(name: sub_cat.first[:name]),
   photo: "https://lh3.googleusercontent.com/pw/AM-JKLXg_8i3xIkSL8U1BOyzygk02BHq-fqCuBu0wRWsOVhB7eoijY1wzZLsRWEZDAJFXUv5F4mFQG_MIJf02-YReb1VY2suRWHebnumqAOYk2VrOUnVX75BOKzOQwNxeesD-QDtnLL1JoFeDgn1Wk5kGIJe=w700-h702-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLWYPsiMsRMRkk8X5tOhOYOXKjjVqdIiQKDSVWFZRJgCXk1b9rOji86D7fGSn4ng4YwOCLcxQKHZx1COnPNeMWREQ2ddADsG6GYuu0rWY0vnJW10V1yuMObgkv-LmL9FUzhJCsS4Oqrt0ewu_6mi3yEr=w450-h451-no?authuser=0"
  },{
  name: "Screened Topsoil",
  price: 4000,
  disc: "n/a",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.first[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLWNxgRfOOR4wHEDsWzxjOFQlnFPgDqFllSQNHvXOIe1ThRukNFe4uRus7gpSdA5l33ZFg9yAdl61nyL0gCIgFE_a_Q21U66RSx7vIxWfIZj32zwFBgOURuYtCHr7s_nxIapxyrarBcq7g3RrdNuzLW6=w700-h702-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXDtJaT4Th5-OdXV1ZIdKHKd-lkw6TWWnBnvJX21AUlz9dgcKaPupVIQ6cReLX29PJEGWn2tCnArX7LV5sO25J-CUfoq9AYYgD8_4hSTh2bYtYFLTwQY8ss6hvCb2iVKWguuwRZ6fIUr_xrMRSv4DYR=s450-no?authuser=0"
},{
  name: "Sandy Fill",
  price: 3500,
  disc: "Use for filling low areas. Packs well and will grow grass",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: nil,
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLXr6Fy0zphTcW3HK_FHc-_HTq2HjRKo3vI9hbeJwfjbio3nkBSqIw_sZEekMWh92_AlnlX7-xFYivb044DPoDcKcIseFZQXhh368iPtTsT_Sohw6TnU8Vvx2xE5dg9coDlc3RA2YDCve1eoSJ2TAAAE=w700-h525-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLVGGwGhkRHL57JEaTmJeEnIBPvh4rrlb58BsQd8VCz7XNcM04LQfgPViImCvx0eW6F_Ohysk9f9kUwWj_fp3I5azohxyzKjntV6Aa6pPi4eEpZqOS_PEMSS2v1pBE1wo74sJUOYKT0pYefrCkS1TGa2=w450-h338-no?authuser=0"
},{
  name: "Pine Bark Mulch",
  price: 5500,
  disc: "Reduce watering and weed growth in gardens. Use to naturalize.",
  notes: "(Our most popular mulch)",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.second[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLXjy7LmM_tVnywgBeRE3vwYRMp4lLqF963ZvmPUuK67qRuNaUeOr_7aMs-EvR7fO7RVGO9nZ1SoBrdLYs5jaYufoIBHIVbAlrO3plqbNChGxzHISRZd1Lp00hQWt0gP1owXNi3gxbPOgtlWqyLNtx0R=w700-h465-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUUuTWtqyflF_9WYdnaRYVRXaA_HB7wdKyUyAAhKd2UlAAyr-sIUB5gFN6gcAxm3vpiywdWENIK6EVNP8rugpfQbLzzPx63k0fb6LDP40Cmt8LFMO-oTErnffK5t5wfbx-vNINUov97PoUE7z8AE7IQ=w450-h299-no?authuser=0"
},{
  name: "Beach Sand",
  price: 3000,
  disc: "Nice clean sand for beaches, sandboxes, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLX7i3KmBufBIyR4nkRepQWi0065RLKMVSWKJwnSvJUBQK7f64csn8OZCqhz5NZPnKahWmIllHnsF3KaziVFq4Mm2Up6bouduGgfKh7gyBnc9ZwfLyldbQm90C7B-wDmJNQa6THG6LFN7aFkWCfsusO4=w700-h525-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLWtou6MrDZpiyQrrwoSctDhF3sT72mU2v1PM3GpiPrmpJrKAy7_bQyR7ExiKfFQmXN3tQ5op8cInqJCMJqcQs_cK34YJ7D5J2fBaM9Wf3uExffUUxMvsn1YJ2CFLD-icEgBsDJZeZDFqc3BWL0CLqAo=w450-h338-no?authuser=0"
},{
  name: "Colored Cedar Mulch",
  price: 5500,
  disc: "Red, Black, and Brown",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLVUIpc7axmfUs9fji01cKHNClL_ogsf4JS3DWtuxztH0iDGZzFwVA95xyexKPl1-Fuz6Q4xuGyX1HvJwENzIqkg_2z9yTwKnbP1Oblm4sYsXaTP7wh8fc4p-V-aaayM28G4h_-wExP9cRw1XmN-fhIc=w700-h438-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXKCRxG1PGZyOBnsbQVhxfImSQJionMTMyiv_E07SoiP6GRwK0ZMz74Zzb9kNftWTjRvCVXBIrH_24uEhoWFQtCU6pXo2KpAU3a1Z_XJFqBDQ9RDBg7pLkcdVzwCuS6UKKeUQh-Xgv3vfpgmSYuNsSi=w450-h281-no?authuser=0"
},{
  name: "River Rock 3-5”",
  price: 7000,
  disc: "Colorful roundish rocks for landscaping features",
  notes: "Screened & washed",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLWbGTrLYSKxIWRiKeDk9zQehXXw8dYvl0DkzkscRZ_4CytbZuVrnx4u__87pWLoO7HWcICrMWgJswxZw6AQLv0CVjrGj5YluhborhIFMxLIvJlKsd5jPnU88_ikfqeGVXMWR0q9LoaQ8wd5s7jnAWxP=w700-h468-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXvsiwrOUWm5b0BZqc12vBJeCmWL_IwPmWF41uJt47HJIpeJf1Iwz8Y55Xb-SYb7L2k5z0A05-_MGCkWa_QFAH_wA4fNWl8-BoBAw7Bm2Z8vpytIDzD5D8NBlw7pzuMJhFNN0worpagPYNT76JOdzPn=w450-h301-no?authuser=0"
},{
  name: "River Rock 1-2”",
  price: 7000,
  disc: "Colorful roundish rocks for landscaping features",
  notes: "Screened & washed",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLUARJJ1vGrGnf5k1tlUwZJhYc2bbEhYd0L-3HmG14QZ53lZw2RG2Yd1ApCPgqjZUE55yNavbv4bI03rlLakzqbAepK7iCB1LeOETYQLXcf57MxAZ6Lgz80eOgCa3hVM4KIwI3oTWUZvsetrBuZkJ2vs=s700-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXfxfag3ikoiZ8aLVk-rHlkZFe-E5EM7YM_NfYq6kUl-YlmIZbWkT4ZxvIvQmYoM0qw7u4LSc3jZCq1aGuuSsTgls2larhtYs2nEuLDS8-Z_dlyQbHpu1SPQvHl_9xEszjYaWPpCJRbGRYOpZ4Aogx5=s450-no?authuser=0"
},{
  name: "Pea Gravel 3/8”",
  price: 7000,
  disc: "Decorative and easy on the feet. Pathways, firepits, dry gardens, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLUUycP5iwp619wnpfPvhC9f-CCS6AtlRXRzzlbjU4g8T69uIWMQLZD2O3M6ugw8Q_POkz9BC7s3fObNahYZkJoDSPmp5-3k5M7tQHdxypQhttKSsHHTKEUDQuKHuvS5axaXTBBLd_pEKh76J0Q8Tkbj=w700-h525-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLVToIYJGuRadjyfvuWAe7vF8cxa7mZcgC9Seitkm5j_sYHDryXMTWZoNBY5ap4UrPiUl_cttjmG4dCkUniF2e8SpNfwzr706wIQ2D_O9DFhTP0jTha0zXtifCEXIHgu4p6d3SqmW-sLUxKdubsF3_a_=w450-h338-no?authuser=0"
},{
  name: "Natural Field Boulders",
  price: 8000,
  disc: "Random sizes that can be man-handled. Rock gardens, small walls, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.first[:name]),
  sub_cat: SubCat.find_by(name: sub_cat.last[:name]),
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLXHr5n8M1ylh31yhPovrSwLzl1g0MSivrOgEM9SCIJl6M8weLlgD2BTfq015Lldb-4xywefGPSrF0NWHyWiORRwR6-OX4_8esmMcpSdu0zXK1TUdzXJnlwBLymfRJ1zS4wrvnXvUtdV-a2b4bJu9cXM=w676-h789-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUmMEd7JqIddrxPaK0fbLJsUWWrgzeuzMEDxrldeElGo-zIlRQ-KtKXvVJusV8P5aU4Nhral5cybqW7TQAGsoUZOb94HHkFu_mieLnKUcZsGA7zP4HQpPJeofyDoA0iQAjztpTYM6hA29SRP6-6aa05=w450-h526-no?authuser=0"
},{
  name: "5/8 crushed Limestone",
  price: 3600,
  disc: "Gravel for roads and bases. Packs hard",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLVZbyog9nehK92SCJzDJbBa56sS25NzaARqv-F1542PCP7606mrwOVtQplwXLpAOdAOeWQaDQpiCAIQ3XTM0mc8seUpGRwxDERr-SEW-WKjhzLyYaqzSm1yivuvfAer1l_5QSefBgX5semKKPQaWKlI=w700-h420-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLWtrCNS1bB7kiFTo8Z9Q1Skd07lK6zk-A9jdR65cDZzl6HNMA7OuMwz-yz47heStUE7u-yTylH2TtlzZ7yPemUABV3Ka7r5Ux4XeGYp6Qql39439_xD8BjX8igXiI98r822TFWPd2jRMjI11Sllh8d-=w450-h270-no?authuser=0"
},{
  name: "Limestone Screenings",
  price: 3600,
  disc: "Very fine grey gravel. Use for levelling stones, topdressing diveways, etc.",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLWFiRTOobX4BRuRW94BKs0nbWwaMhsu5X3u-ChR4GlDKHB3sY0jAKGvZ1t0jrkV2bme8sN7RhTiwb1wzqQhRSSu4_zYPNMuOXLzAkYqiWcozWWfIAWVgbbMnee-P0SBTTP58yDzcPIaREhhjbpbhnKo=w592-h789-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUxUdY2ds_tWmp1n0Lk1GmfzdS0NkJ0DGH-JlDtb1U3hh70ETWjtbJiKmAUUGtO3eTOE0J13MECsQc-IPLZd80x850_K2z-KCMJfyngEAyEYFn64ayrWGOtXWCw18slGUkqrKXx4C56QZp3ZJEJ8AX2=w450-h601-no?authuser=0"
},{
  name: "3/4 Clear Limestone",
  price: 4000,
  disc: "Clean stone used for good drainage",
  notes: "",
  unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLVZbyog9nehK92SCJzDJbBa56sS25NzaARqv-F1542PCP7606mrwOVtQplwXLpAOdAOeWQaDQpiCAIQ3XTM0mc8seUpGRwxDERr-SEW-WKjhzLyYaqzSm1yivuvfAer1l_5QSefBgX5semKKPQaWKlI=w700-h420-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLWtrCNS1bB7kiFTo8Z9Q1Skd07lK6zk-A9jdR65cDZzl6HNMA7OuMwz-yz47heStUE7u-yTylH2TtlzZ7yPemUABV3Ka7r5Ux4XeGYp6Qql39439_xD8BjX8igXiI98r822TFWPd2jRMjI11Sllh8d-=w450-h270-no?authuser=0"
},{
  name: "Sandy A Gravel",
  price: 3600,
  disc: "Stone and sand blend. Use for mixing concrete, roads, bases.",
  notes: "",
   unit: "Cubic Yard",
  quantity: 0,
  cat: Cat.find_by(name: cat.second[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLW_YyUYifBEYVhZ0D3O2i3LCgUE1j6AjrwMCGX4UUBUeBiG97RbRG3pxMF79F3mVP6deQzFQQ8flrFJkG2v7VZ7a2pQ-B372wouWs0KLx_mfUyI7BeaKH5_zl0AU2wuEClN4wtCOP_yKGL6VBHA-Zik=w1052-h789-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXMoY30d48mY7ZjwjqrZMBuG91iM-CGoklqk6kdqBv0cfrw2snq0rQqkJvi6vf5ZdtTPvzpMJeKcenPvdSlYUItnwT4nqahYyZEkEJHrUzLZg3de5bDZqnNgKsdFQ_K0c_aRhd4uftOEak0DQATtA3q=w700-h525-no?authuser=0"
  },{
    name: "Mortar Sand",
    price: 3600,
    disc: "Fine, washed sand for mixing mortar",
    notes: "",
    unit: "Cubic Yard",
    quantity: 0,
    cat: Cat.find_by(name: cat.second[:name]),
    sub_cat: nil,
    photo: "https://lh3.googleusercontent.com/pw/AM-JKLWhBZv4gGbX-pNdeiriHIw0WtzmafFLgCscLGGe5Dlv1xr-Q_0IQPxag29xYtp_Tu7ZOpLm28oSWvo1LeG3Yh9FXWKRX4mYTtvKp_j5FrNlHLzSLmUiaAG4L5r3hPtRgEvEAv5HJ330zuDprEyLDngM=w700-h525-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXGuEm-KMyB4wVro_IUd-3M4zqqDiZ-4YbiE-fr3OAlqGeoYtPPzYXOst_ILe7d2Uk_iJbehOxwGgHLtwFigXtJk-yfPX_lFgm2KNfYmff4mDlORG0YtyS3WviP_twG8OtB_AF2lSmKptod3f036YRZ=w450-h338-no?authuser=0"
    },{
      name: "Dry Stack Wall Stone",
  price: 30000,
  disc: "Random sized flat limestone for building rustic garden walls.",
  notes: "",
  unit: "Per Ton",
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLXq-KKhgbJ4TLNqFhCglK2DAffxQLetU2-qaonwV5g3OVKbO4PfECipo2wcXwwyXbwM_oKmcU8UcZOmQa2AQlGB7ZLIVIrml2w3talnEmyKwSxOQPqv9uklBYqOXPEOQm1-UqMamIveU35Mh8gjS03W=w700-h459-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLVTu3gv1ZmYpiirOSn3RFIVXzQmz8uwynFKliRYlQrRo-ItIAx2UQEaHziHwr-FB1bNzXwT62AbAMy0pdFhjWapFQ5EXXQ1hyHxwGrQqC7hMmIWxJevQ02JQLBmUSYciWK9LCBAAGqWnSxOaGRnPtB8=w450-h295-no?authuser=0"
},{
  name: "Limestone steps (random)",
  price: 5000,
  disc: "6” to 8” thick stone used for making steps.",
  notes: " Requires heavy equipment to install.",
  unit: "per Linear face ft",
  quantity: 0,
   cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLU6x04wIDHsXdzBhCHYTxqfEZIaHUS-rQOhjLwYXDbu7oEYRwdymVM5iOtZoyS9N90KT6zIPBi_9v_apkc7Brwc3bdyw72XveY8GXdK1xPtxjtHGenWw8chyBZW15ozaAuPQXVVrimwraNDzRcsoZQr=w745-h732-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLXPHobvylOlbiHlNI2aI0kQNpJzPW6juV4Jnj5xY3WwDIRwF6Qu5TwWeN4jUWyotMU0EhG8QLuDCAijS_FxYQMCVst7Q2cDo6A454jx72io1o3IJ2FY9bkuMb8FcNxnOjQXoWmc3EzbG5SBWkB4jm3a=w450-h442-no?authuser=0"
},{
  name: "Armor rock 10 -12” thick (random)",
  price: 3500,
  disc: "Block style stone used for making retaining walls.",
  notes: "Requires heavy equipment to install.",
  unit: "per Linear face ft",
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLXMYYoF5TQVr4bwMPKbpTqIlZXNuYps8KfJJUCW286EVMD0XABRnsNCKYYfQIhKT3oAIVoQrUR73azNasoeS91cbV4_2qH09cINKu20vCFGwrobgWgsIK-Yqlb0DD4YUPmRgaC5TLxI72hzsMlIijhO=w700-h628-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLWTx3wBx8Ud2j8CeMiJiR0BEY2VAypRkq6HFvfyoitYm8PqnRnw6qMMG9CSQ02NNKiegxQCQN_Q8ULg8sb_vHxYcbWqveBjm-XVOB2jecbIJtJ0yBnf_-qqUQHtc9pAR5b8lTKFpP3L-dPP9XH2x1rl=w450-h404-no?authuser=0"
},{
  name: "Limestone Flagstone",
  price: nil,
  disc: "Various prices depending on requirements",
  notes: "Per Ton",
  unit: 0,
  quantity: 0,
  cat: Cat.find_by(name: cat.third[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLX5PUB6mNny9MZ_eCohPx4ZTv1xo24uGSWMBbZuMKGaNaFKHZ6Bk8_XjvI43GUMJxncy-pClf9Bn6ewQ7KMkLCkY913nGd_WF9wlcDMhYyk-LfpYoHHwGFKbwoILVqD3cqDsS_B_QsArqwy4iTSi-Ke=w750-h500-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLW5Q5Fl_HCl3t7R5j46QvpTOL_Xh26IFCIlfhAoIIWXlIlHodL7Fv4DXugqQaCF2mCWq-PYAtSBGw4MmNolIvQzZ3puYUoTpXE_f6PzSf4OKgj3F4T-cLvCXp37_RK8ev2NoK0CagPil4tyZibACRQD=w450-h300-no?authuser=0"
},{
  name: "Woven Geotextile 200W",
  price: 0020,
  disc: "Base separator. Use under roads, parking areas, patios, etc.",
  notes: "Prevents sinking and weeds.",
  unit: "per Square ft.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLXLJ57bhUzMnHJS6cCAiNz6qf4Oafsa5GhtajPYQgaqP1vHLhboerFiL_0Y38WWuJ9_JCiFwUXf9nA8V0b_leBiQMLSsw-TFARyF53sC7QCjxGIGHLWOcj8-gcD1YltTh6-Qkwqj3vjkmFNcj7PVuty=w700-h581-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLVsMDnMl0zlVmrkto6gM3mJG2CJ2gCeesYmgNIKVLUZLmkGE6TWrVxFhG6BYLhFwP7zuac82gtYzknSESU8NyI_O7kBCgYpKNhZ3mdp63DIy_6ACFcHpdHza4Adwc4Vx-nq4KFddI6dpLonXhutDBsY=w450-h373-no?authuser=0"
  },{
    name: "Non-Woven Geotextile 270R (Filter CLoth)",
    price: 0020,
    disc: ". Use behind retaining walls, under pea gravel, etc.",
    notes: "Required for shoreline work.",
    unit: "per Square ft.",
    quantity: 0,
    cat: Cat.find_by(name: cat.last[:name]),
    sub_cat: nil,
    photo: "https://lh3.googleusercontent.com/pw/AM-JKLXKqN1LuUFCQ-pBb_xmKyH-DogTwvoaZp0XqOqsGnBQIZPjEMHPbyF5i7bkUB8qvLAUrAkdsf5Z7jcLa6yBWDe9463LLaExJrvWtIP2tZTOILXaRTwBhPfCAfyIm4AauVEkJJQabb_2EtG6IT3p4jBP=w700-h340-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUA9vcK8VY-VZmWMeGmHHHXuN4VGBX60d4XMltSmF88AAxVdvtI3SNe0BZArgB0SEPRcO2jcAJziwAl_5HURaJXMRSIaAJv3Hqb7OzZOXoq6dLDWiFkeUeB1w_pYswTYkEyD1Jo_OrpuVuuMq9Jhm0K=w450-h218-no?authuser=0"
},{
  name: "Naturalization mix",
  price: 1200,
  disc: "A blend of hardy grasses, clover, trefoil. Great cottage ground cover.",
  notes: "",
  unit: "per kg.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
     photo: "https://lh3.googleusercontent.com/pw/AM-JKLXfyczO8kgsUDVMfq0d6TkylN1PAOcd3aIfvz85PWTUAin1LAPxIYvs5KDdcRxQ-M4aDASSD-0Q4pV57quOGIgweWf2zqWClqHXcED7mUyg5e3FTluCX_aM-M6uxVWIoFVHCnrlShMfKho29DI4IZON=w488-h789-no?authuser=0",
   thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUoNmgZioTYOssrEm8ki1wnwRchCf2yojEcfrXHsQU5Pue7fFKLQMyzx610YtPr1qCtb3kHpq4nGJytbYGVKlfG98lRoKeYZK4QPoRrw2XEYd-5VDnx7lAKvKzQkQr316CUX8By0NYTM4pLvBbCjREF=w450-h728-no?authuser=0"
},{
  name: "Eco-Lawn low maintenance",
  price: 1500,
  disc: "Grass varieties that establish quickly, then requires less mowing.",
  notes: "",
  unit: "per kg.",
  quantity: 0,
  cat: Cat.find_by(name: cat.last[:name]),
  sub_cat: nil,
  photo: "https://lh3.googleusercontent.com/pw/AM-JKLWY0Kv-nzth8Hhx9Y8RVhZDdwrAw5MBXfFp1tFlKqcSNwFrfdAQgc_T_wTz2GkzumJ09ogpGt46dpSWQhkf59e4DtdPqLlMWvsH_mti5GyZDOpUE0BgmQZnXyZ1EWgX8f9EpElMaD7HjyS_b67yQKTO=w700-h285-no?authuser=0",
  thumb: "https://lh3.googleusercontent.com/pw/AM-JKLUH-rKLp_8RwDvWDbz_bZraXnd__ENQvpzdr6No6EtN3-u5PdEcBDKZ7bmqZ8lmWb_68Hba-9ZyTxZh8Dku59AReazauEHRd8fAl5z-7ywo69LItVAzwxqseGAU-cbwrhNfGbuEJEN_7rd7-Av-IHtH=w450-h183-no?authuser=0"
}]

  puts items.count
  puts Cat.find_by(name: cat.first[:name] )
  puts Cat.find_by(name: cat.second[:name])
  puts Cat.find_by(name: cat.third[:name])
  puts Cat.find_by(name: cat.last[:name])
items.each do |item|
  Item.create(item)

end


# {
#   name: "Stabilizing Sand for Flagstone & Pavers.",
#   price: 0020,
#   disc: "Material to fill gaps between flagstone or pavers. Sweep in and apply water to resist washout.",
#   notes: "",
#   unit: "per Bag.",
#   quantity: 0,
#   cat: Cat.find_by(name: cat.last[:name]),
#   sub_cat: nil,
#      photo: "",
#    thumb: ""
# },