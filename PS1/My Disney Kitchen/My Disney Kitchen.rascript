// My Disney Kitchen
// #ID = 17139

// $0BD064: [16-bit] Game State (1)
//          0x00 = On the main menu/title screen
//          0x20 = Inside "Recipe Box"
//          0x80 = In the kitchen
//          0x220 = Inside "Make a cake"
//          0x320 = Inside "Make breakfast"
function game_state() => word(0x0BD064)

ModeLookup = {
    128 : " 🧑‍🍳Cooking in the kitchen",
    544 : " 🎂Baking a cake",
    800 : " 🍽️Making breakfast",
}

// $0C3718: [16-bit] Dialogs & Interactions
//          0x02 = Use Popcorn maker with a bowl
//          0x03 = Use Popcorn maker without Bowl
//          0x04 = Use empty Popcorn maker
//          0x05 = Microwave oven active
//          0x07 = Use Garbage disposal
//          0x09 = Use the wrench
//          0x17 = Soup on table
//          0x18 = Spaghetti on table
//          0x19 = Ice cream on table
//          0x1a = Cooked food on table
//          0x1c = Uncooked food on table
//          0x1d = burnt food on table
//          0x2b = Cooked chicken (Phone call dialog)
//          0x2d = Sink stopper (Phone call dialog)
//          0x2e = Burnt food (Phone call dialog)
//          0x3b = Retrieve Sausages
//          0x3c = Retrieve hamburgers
//          0x3d = Retrieve item from trash can 1
//          0x3f = Vegetables on table
//          0x40 = food spill on table
//          0x41 = Burnt Toast (Phone call dialog)
//          0x43 = Cooked beef (Phone call dialog)
//          0x4f = Retrieve item from trash can 2
//          0x50 = Retrieve Fish
//          0x51 = Retrieve Beef
//          0x52 = Retrieve item from trash can 3
//          0x53 = French Fries on table
//          0x55 = Fruit on table
//          0x57 = Item on table
//          0x59 = Popcorn without Bowl (Dialog)
//          0xffff = None
//          
//          Radio News:
//          0x60 = Advertisement 1
//          0x61 = Advertisement 2
//          0x62 = Advertisement 3
//          0x63 = Advertisement 4
//          0x64 = Advertisement 5
//          0x65 = Weather Report 1
//          0x66 = Weather Report 2
//          0x67 = Comedy Cuisine 1
//          0x68 = Comedy Cuisine 2
//          0x69 = Comedy Cuisine 3
//          0x6a = Comedy Cuisine 4
//          0x6b = Comedy Cuisine 5
//          0x6c = Comedy Cuisine 6
//          0x5f = News Flash 1
//          0x6d = News Flash 2
//          0x6e = News Flash 3
//          0x6f = News Flash 4
//          0x70 = News Flash 5
//          0x71 = News Flash 6
//          0x72 = News Flash 7
//          0x77 = News Flash 8
//          0x73 = Bulletins 1
//          0x74 = Bulletins 2
//          0x75 = Bulletins 3
//          0x76 = Bulletins 4
//          
//          Phone Calls:
//          Mickey:
//          0x4a = Call 1
//          0x4b = Call 2
//          0x48 = Call 3
//          Minnie:
//          0x32 = Call 1
//          0x33 = Call 2
//          0x34 = Call 3
//          0x35 = Call 4
//          0x36 = Call 5
//          0x37 = Call 6
//          Minnie & Mickey Tips:
//          0x11 = Call 1
//          0x12 = Call 2
//          0x13 = Call 3
//          0x14 = Call 4
//          0x15 = Call 5
//          0x16 = Call 6
//          Received Calls from Voicemails:
//          0x2f = Call 1
//          0x30 = Call 2
//          0x31 = Call 3
//          0x45 = Call 4
//          0x46 = Call 5
//          0x47 = Call 6
//          
//          Recipe Box:
//          0x01 = Quick Biscuits
//          0x15 = Breakfast Milkshake
//          0x24 = Breakfast Burrito
//          0x38 = Cubcakes
//          0x56 = Potato Chip Chicken Fingers
//          0x69 = Chinese Sesame Noodles
//          0x7e = Choc-o-Bananas
//          0x90  = Caramel Turtles
//          0xac = Edible Fishbowl
//          0xba  = Eggs in a Nest
//          0xcb = Fruity Kabobs
//          0xde = Giant Chocolate Chip Cookies
//          0xf6  = Gingerbread Pancakes
//          0x10c = Hummus
//          0x119 = Hit-the-Trail Mixes
//          0x124 = Ice Cream Flowerpots
//          0x136 = Lasagna a la Mom
//          0x153 = PB&J Surprise Muffins
//          0x171 = Pizza Men
//          0x182 = Peanut Butter Soup
//          0x19C = Quesadilla
//          0x1b1 = Tiger-Striped Brownies
//          0x1cf = Skeleton Crudite and Dip
//          0x1e8 = Strawberry Slush
//          0x1f5 = Spider Pretzels
//          0x201  = Super Salad Pita
//          0x21a = Steak on a stick
//          0x22f = Tater Boats
//          0x240 = Three Bars Porridge
//          0x252 = Vegetable Tempura
function dialogs_interactions() => word(0x0C3718)

// $0C371A: [16-bit] Dialog Handler
//          0x01 = Active (Inside "Make a Cake")
//          0x02 = Active (Inside "Make Breakfast")
//          0x03 = Active (Inside "Recipe Box"
//          0xffff = None
function dialog_handler() => word(0x0C371A)

// $0C3728: [16-bit] Make Breakfast & Make a Cake Dialogs
//          Make Breakfast:
//          0x4d9 = Serving Variety
//          0xa61 = Serving Variety Completed
//          0xe336 = Serving Bacons
//          0xe8ce = Serving Bacons Completed
//          0xf249 = Serving Eggs
//          0xf537 = Serving Pancakes
//          0xfa3f = Serving Pancakes Completed
//          0xf831 = Serving Eggs Completed
//          
//          Make a Cake:
//          Plain Cake
//          0x9100 = Serving
//          0x96a8 = Eating
//          0x9bd8 = Serving Completed
//          
//          Strawberry Cake
//          0xc277 = Serving 1
//          0xbceb = Eating 1
//          0xc21b = Serving Completed 1
//          0xc827 = Eating 2
//          0xcd57 = Serving Completed 2
//          
//          Lemon Cake
//          0xa7c0 = Serving 1
//          0xace0 = Eating 1
//          0xb210 = Serving Completed 1
//          0xab97 = Serving 2
//          0xb05f = Eating 2
//          0xb58f = Serving Completed 2
//          
//          Chocolate Cake
//          0x90ff = Serving 1
//          0x96ff = Eating 1
//          0x9cf2 = Serving Completed 1
//          0xb5ee = Serving 2
//          0xbaf6 = Eating 2
//          0xc026 = Serving Completed 2
//          
//          Vanilla Cake
//          0xc6f5 = Serving
//          0xcc95 = Eating
//          0xd1c5 = Serving Completed
//          
//          Checkered Cake
//          0xa2a6 = Serving
//          0xa7ce = Eating
//          0xacfe = Serving Completed
//          
//          Goofy's Picture
//          0x9104 = Serving
//          0x9614 = Eating
//          0x9b44 = Serving Completed
//          
//          Pluto's Picture
//          0x9105 = Serving
//          0x9715 = Eating
//          0x9c45 = Serving Completed
//          
//          Donald's Picture
//          0x9e23 = Serving
//          0xa2cb = Eating
//          0xa7fb = Serving Completed
//          
//          Minnie's Picture
//          0xa974 = Serving
//          0xaecc = Eating
//          0xb3fc = Serving Completed
//          
//          Daisy's Picture
//          0xad0d = Serving
//          0xb1a5 = Eating
//          0xb6d5 = Serving Completed
//          
//          Mickey's Picture
//          0xbf4c = Serving
//          0xc4d4 = Eating
//          0xca04 = Serving Completed
function make_breakfast_make_a_cake_dialogs() => word(0x0C3728)

// $0C6682: [16 bit] what object is being held
//          0xFFFF = Nothing
//          0x004 = Kitchen knife
//          0x005 = mixing spoon
//          0x006 = whisk
//          0x007 = baster
//          0x008 = teal mug
//          0x009 = green mug
//          0x00A = brown mug
//          0x00B = purple mug
//          0x00C = wine glass
//          0x00D = wine glass
//          0x00E = large plate
//          0x00F = medium-sized plate
//          0x010 = medium-sized plate
//          0x011 = medium-sized plate
//          0x012 = medium-sized plate
//          0x016 = tea cup
//          0x017 = tea cup
//          0x018 = tea cup
//          0x019 = tea cup
//          0x032 = tea kettle
//          0x039 = baking pan
//          0x03D = ladle
//          0x03F = large pot
//          0x041 = frying pan
//          0x043 = blended liquid
//          0x049 = cheese grater
//          0x04B = Colander
//          0x04D = large mixing bowl
//          0x04F = small mixing bowl
//          0x054 = ice cream tub
//          0x056 = mustard bottle
//          0x057 = ketchup bottle
//          0x068 = cheese block
//          0x069 = chocolate sauce
//          0x06A = tomato paste
//          0x06B = Jam
//          0x06C = pickle jar
//          0x06D = whip cream
//          0x06E = milk carton
//          0x06F = heavy cream pitcher
//          0x070 = raw steak
//          0x072 = raw sausage
//          0x078 = raw hamburger
//          0x079 = raw fish
//          0x07A = raw chicken
//          0x095 = ice cream scoop
//          0x096 = salt
//          0x097 = pepper
//          0x098 = peanut butter jar
//          0x099 = popcorn container
//          0x09F = cereal
//          0x0A0 = can of green peas
//          0x0A1 = can of tomato
//          0x0A4 = can of corn
//          0x0AA = dish soap
//          0x0AB = wrench
//          0x0AC = sponge
//          0x0D6 = tablecloth
//          0x0D8 = small plate
//          0x0DA = small plate
//          0x0DC = small plate
//          0x0DE = small plate
//          0x0E0 = Peanut Butter knife
//          0x0E2 = popcorn spoon
//          0x10E = vegitable/fruit, bread, hotdog/hamburger bun
//          0x10F = cheese slice, butter, egg, frozen pizza, cookie
//          0x11A = cooked chopped broccoli
//          0x1E5 = syrup (breakfast)
//          0x1ED = butter (breakfast)
//          0x1F4 = spatula (breakfast)
//          0x1F5 = chocolate icing (make a cake)
//          0x1F6 = vanilla icing (make a cake)
//          0x1F7 = lemon icing (make a cake)
//          0x1F8 = strawberry icing (make a cake)
//          0x1FE = strawberry icing knife (make a cake)
//          0x1FF = lemon icing knife (make a cake)
//          0x200 = chocolate icing knife (make a cake)
//          0x201 = vanilla icing knife (make a cake)
//          0x202 = checker icing knife (make a cake)
//          0x204 = cake tin (make a cake)
//          0x205 = baked cake (make a cake)
//          0x208 = cake stensil (make a cake)
//          0x20A = cake mixing bowl (make a cake)
//          0x20D = mixer (make a cake)
//          0x20E = chocolate (make a cake)
//          0x20F = vanilla (make a cake)
//          0x210 = lemon (make a cake)
//          0x211 = strawberry (make a cake)
//          0x228 = egg (breakfast)
//          0x229 = bacon (breakfast)
//          0x22A = pancake (breakfast)
//          0x23A = cooked food (breakfast)
//          0x254 = more cooked food (breakfast) all addresses inbetween are cooked food too.
function what_object_is_being_held() => word(0x0C6682)

// $0C66FC: [8-bit] Wallpaper
//          0x00 = red/yellow default
//          0x01 = teal print/ blue striped
//          0x02 = red squares
//          0x03 = blue squares
//          0x04 = teal print/ white print
//          0x05 = green print/ white print
//          0x06 = orange squares/ orange stripes
//          0x07 = orange squares/ yellow checker
function wallpaper() => byte(0x0C66FC)

// $0C66FD: [8-bit] Picture next to the door
//          0x00 = Mickey at the docks
//          0x01 = Minnie skiing
//          0x02 = Pluto at the farm
//          0x03 = Goofy in the city
//          0x04 = Donald dressed up
//          0x05 = Daisy
function picture_next_to_the_door() => byte(0x0C66FD)

// $0C66FF: [8-bit] Tablecloth
//          0x01 = green check
//          0x02 = red polka
//          0x03 = blue/yellow check
//          0x04 = green polka
//          0x05 = yellow check
//          0x06 = red check
function tablecloth() => byte(0x0C66FF)

// $0C6700: [8-bit] Clock
//          0x00 = 12
//          0x01 = Breakfast time
//          0x02 = Lunch time
//          0x03 = 9
function clock() => byte(0x0C6700)

// $0C6A35: [8-bit bitflags] Events
//          Bit1 = hovering over Recipe box
//          Bit4 = Radio off
//          Bit6 = garbage disposal
function _8_bit_bitflags_events_2() => word(0x0C6A35)
function _8_bit_bitflags_events_2_radio_off() => bit4(0x0C6A35)

RadioOffLookup = {
    00 : " Radio off",
    10 : " Radio on",
}

// $0C81F8: [8-bit] Game State (2)
//          0x04 = In the kitchen
//          0x05 = Entering "Make Breakfast"
//          0x06 = Inside "Make Breakfast"
//          0x07 = Leaving "Make Breakfast"
//          0x08 = Entering "Make a Cake"
//          0x09 = Inside "Make a Cake"
//          0x0a = Leaving "Make a Cake"
//          0x0b = Entering "Recipe Box"
//          0x0c = Inside "Recipe Box"
//          0x0d = Leaving "Recipe Box"
//          0x0f = Inside "Recipe Box Ingredients Page"
//          0x10 = Leaving "Recipe Box Ingredients Page"
//          0x11 = Main Menu Screen
//          0x12 = Eating Cake/Breakfast Scene
//          0x13 = Mop (bubble effect screen)
//          0x14 = Active dialog
function game_state_2() => byte(0x0C81F8)

// $0C82AA: [8-bit] Radio station
//          0x00 = default
//          0x01 = station 2
//          0x02 = station 3
//          0x03 = station 4
//          0x04 = station 5
//          0x05 = station 6
//          0x06 = station 7
//          0x07 = station 8
//          0x08 = station 9
function radio_station() => byte(0x0C82AA)
function radio_station_word() => word(0x0C82AA)

RadioLookup = {
    00 : " Listening to radio station 1",
    01 : " Listening to radio station 2",
    02 : " Listening to radio station 3",
    03 : " Listening to radio station 4",
    04 : " Listening to radio station 5",
    05 : " Listening to radio station 6",
    06 : " Listening to radio station 7",
    07 : " Listening to radio station 8",
    08 : " Listening to radio station 9",
}

// $0C82D2: [16-bit] Demo Mode
//          0x00 = Not in Demo
//          0x800a = In Demo
function demo_mode() => word(0x0C82D2)

DemoLookup = {
    32778 : " Playing the demo",
}

// $0C843C: [8-bit] Liquid in Teal Mug
//          0x00 = Tea
//          0x08 = Milk
//          0x0a = Water
//          0x0b = Empty
function liquid_in_teal_mug() => byte(0x0C843C)

// $0C845C: [8-bit] Liquid in Green Mug
function liquid_in_green_mug() => byte(0x0C845C)

// $0C847C: [8-bit] Liquid in Brown Mug
function liquid_in_brown_mug() => byte(0x0C847C)

// $0C849C: [8-bit] Liquid in Purple Mug
function liquid_in_purple_mug() => byte(0x0C849C)

// $0C84AA: [16-bit] Wine Glass 1 Liquid Contents
//          0x6b70 = Empty
//          0x6bb0 = Broccoli, green peas
//          0x6bF0 = Cheese, orange
//          0x6c30 = Banana, fish, heavy cream, potato, spaghetti
//          0x6c70 = Carrot, cookie
//          0x6cb0 = Chicken, pizza, sausage
//          0x6cf0 = Grape
//          0x6d30 = Beef, hamburger, strawberry, tomato soup
//          0x6d70 = Milk, slice of cheese
//          0x6dB0 = Apple, corn, canned corn soup, egg
//          0x6df0 = Water
function wine_glass_1_liquid_contents() => word(0x0C84AA)

// $0C84CA: [16-bit] Wine Glass 2 Liquid Contents
function wine_glass_2_liquid_contents() => word(0x0C84CA)

// $0C8B9C: [8-bit] Blender related
//          0x00 = Tea in blender
//          0x01 = Blended broccoli, green peas, pickle
//          0x02 = Blended buns, cheese, orange, roll bread
//          0x03 = Blended banana, butter, crackers, fish, heavy cream, potato, spaghetti, toast bread
//          0x04 = Blended cookie, carrot
//          0x05 = Blended chicken, pizza, sausage
//          0x06 = Blended grape
//          0x07 = Blended beef, hamburger, strawberry, tomato soup
//          0x08 = Blended slice of cheese, milk
//          0x09 = Blended apple, corn, corn soup, egg
//          0x0a = Water in blender
//          0x0b = Blender (empty/default state)
//          0x21 = Blender (held with ID 01 liquid)
//          0x22 = Blender (held with ID 02 liquid)
//          0x23 = Blender (held with ID 03 liquid)
//          0x24 = Blender (held with ID 04 liquid)
//          0x25 = Blender (held with ID 05 liquid)
//          0x26 = Blender (held with ID 06 liquid)
//          0x27 = Blender (held with ID 07 liquid)
//          0x28 = Blender (held with ID 08 liquid)
//          0x29 = Blender (held with ID 09 liquid)
//          0x2B = Blender (pouring liquid)
function blender_related() => byte(0x0C8B9C)

// $0C8DA8: [8-bit] Ice Cream Tub State
//          0x83 = Closed (In freezer)
//          0x84 = Held (Frozen)
//          0x85 = Held (Melted)
//          0x86 = Opened (Placed)
//          0x87 = Melted
function ice_cream_tub_state() => byte(0x0C8DA8)

// $0C9688: [8-bit] Canned Corn Soup 1 State
//          0x7d = Sealed
//          0x7e = Opened
function canned_corn_soup_1_state() => byte(0x0C9688)

// $0C96A8: [8-bit] Canned Corn Soup 2 State
function canned_corn_soup_2_state() => byte(0x0C96A8)

// $0C96C8: [8-bit] Canned Corn Soup 3 State
function canned_corn_soup_3_state() => byte(0x0C96C8)

// $0C9728: [8-bit] Canned Green Peas 1 State
//          0x76 = Sealed
//          0x77 = Opened
function canned_green_peas_1_state() => byte(0x0C9728)

// $0C9748: [8-bit] Canned Tomato 1 State
//          0x72 = Sealed
//          0x73 = Opened
function canned_tomato_1_state() => byte(0x0C9748)

// $0C9768: [8-bit] Canned Green Peas 2 State
function canned_green_peas_2_state() => byte(0x0C9768)

// $0C97A8: [8-bit] Canned Corn Soup 4 State
function canned_corn_soup_4_state() => byte(0x0C97A8)

// $0C97C8: [8-bit] Canned Tomato 2 State
function canned_tomato_2_state() => byte(0x0C97C8)

// $0C98BC: [8-bit] Sponge State
//          0x0b = Placed
//          0x2b = Held (Dry)
//          0x2c = Held (wet with Food Spill)
//          0x30 = Held [wet with Water)
function sponge_state() => byte(0x0C98BC)

// $0C9A2C: [8-bit] Grinding food in Garbage Disposal
//          0x09 = Inactive
//          0x0d = Active (when food get thrown in sink)
function grinding_food_in_garbage_disposal() => byte(0x0C9A2C)

// $0C9E28: [16-bit] Small Plate 1 Content
//          0x8e = Empty
//          0x91 = Liquid
//          0x25e = Cereal
//          0x25f = Milk with Cereal
function small_plate_1_content() => word(0x0C9E28)

// $0C9E68: [16-bit] Small Plate 2 Content
function small_plate_2_content() => word(0x0C9E68)

// $0C9EA8: [16-bit] Small Plate 3 Content
function small_plate_3_content() => word(0x0C9EA8)

// $0C9EE8: [16-bit] Small Plate 4 Content
function small_plate_4_content() => word(0x0C9EE8)

// $0CA4EE: [8-bit] State of Object 1
//          0x00 = None
//          0x30 = Burnt
function state_of_object_1() => byte(0x0CA4EE)

// $0CA4F8: [16-bit] ID of Object 1
//          0x00 = apple, napkin, silverware
//          0x01 = cooked apple with water
//          0x02 = cooked apple in the oven
//          0x03 = microwaved apple
//          0x04 = cooked apple without water
//          0x05 = burnt apple (level 1)
//          0x06 = sliced apple once
//          0x07 = sliced cooked apple with water
//          0x08 = sliced cooked apple in the oven once
//          0x0a = sliced cooked apple without water once
//          0x0c = sliced apple twice
//          0x0e = sliced cooked apple in the oven twice
//          0x10 = sliced cooked apple without water twice
//          0x12 = blended apple
//          0x13 = cooked blended apple
//          0x14 = microwaved blended apple
//          0x15 = blended microwaved apple
//          0x17 = blended burnt apple
//          0x18 = banana
//          0x1b = cooked banana
//          0x1d = burnt banana (level 1)
//          0x1e = sliced banana once
//          0x24 = sliced banana twice
//          0x30 = grapes
//          0x31 = cooked grapes with water
//          0x32 = cooked grapes in the oven
//          0x33 = microwaved grapes
//          0x34 = cooked grapes without water
//          0x35 = burnt grapes (level 1)
//          0x36 = sliced grapes once
//          0x3c = blended grapes
//          0x42 = orange
//          0x45 = microwaved orange
//          0x47 = burnt orange (level 1)
//          0x48 = sliced orange once
//          0x4e = sliced orange twice
//          0x54 = blended orange
//          0x5a = potato
//          0x60 = sliced potato once
//          0x66 = sliced potato twice
//          0x6c = blended potato
//          0x72 = cookie
//          0x75 = microwaved cookie
//          0x77 = burnt cookie (level 1)
//          0x90 = frozen pizza
//          0x92 = cooked pizza
//          0x93 = microwaved pizza
//          0x95 = burnt pizza (level 1)
//          0x96 = sliced frozen pizza once
//          0x98 = sliced cooked pizza once
//          0x99 = sliced microwaved pizza once
//          0x9c = sliced frozen pizza twice
//          0x9e = sliced cooked pizza twice
//          0x9f = sliced microwaved pizza twice
//          0xa2 = blended frozen pizza
//          0xa5 = microwaved blended pizza
//          0xa8 = broccoli
//          0xae = sliced broccoli once
//          0xb4 = sliced broccoli twice
//          0xba = blended broccoli
//          0xc0 = carrot
//          0xc6 = sliced carrot once
//          0xcc = sliced carrot twice
//          0xd2 = blended carrot
//          0xd8 = corn
//          0xde = sliced corn once
//          0xe4 = sliced corn twice
//          0xea = strawberry
//          0xf0 = sliced strawberry once
//          0xf6 = sliced strawberry twice
//          0xfc = blended strawberry
//          0x102 = egg
//          0x103 = cracked egg
//          0x104 = burnt egg (level 1)
//          0x105 = fried egg
//          0x106 = slice of cheese
//          0x10c = sliced a slice of cheese once
//          0x112 = sliced a slice of cheese twice
//          0x118 = blended slice of cheese
//          0x11e = bread slice
//          0x127 = hotdog bun
//          0x12b = sliced hotdog bun once
//          0x12f = sliced hotdog bun twice
//          0x137 = hamburger bun
//          0x13d = hamburger with meat
//          0x155 = dry spaghetti
//          0x161 = cooked spaghetti (level 1)
//          0x166 = cooked spaghetti (level 2)
//          0x167 = cooked blended spaghetti
//          0x16a = cooked blended microwaved spaghetti
//          0x16d = ice cream scooped
//          0x16f = pickle
//          0x1a5 = saltine cracker
//          0x1f3 = grilled cheese
//          0x1f4 = burnt grilled cheese
//          0x24b = hotdog sandwich
//          0x257 = pat of butter
//          0x258 = burnt apple (level 2)
//          0x259 = burnt apple (level 3)
//          0x25a = burnt apple (level 4)
//          0x264 = burnt banana (level 2)
//          0x265 = burnt banana (level 3)
//          0x266 = burnt banana (level 4)
//          0x270 = burnt grapes (level 2)
//          0x271 = burnt grapes (level 3)
//          0x272 = burnt grapes (level 4)
//          0x279 = burnt orange (level 2)
//          0x27a = burnt orange (level 3)
//          0x27b = burnt orange (level 4)
//          0x291 = burnt cookie (level 2)
//          0x292 = burnt cookie (level 3)
//          0x293 = burnt cookie (level 4)
//          0x2a0 = burnt pizza (level 2)
//          0x2a1 = burnt pizza (level 3)
//          0x2a2 = burnt pizza (level 4)
//          0x2d9 = burnt egg (level 2)
//          0x2da = burnt egg (level 3)
//          0x2db = burnt egg (level 4)
//          0x3a1 = food spill
function id_of_object_1() => word(0x0CA4F8)

// $0CA50E: [8-bit] State of Object 2
function state_of_object_2() => byte(0x0CA50E)

// $0CA518: [16-bit] ID of Object 2
function id_of_object_2() => word(0x0CA518)

// $0CA52E: [8-bit] State of Object 3
function state_of_object_3() => byte(0x0CA52E)

// $0CA538: [16-bit] ID of Object 3
function id_of_object_3() => word(0x0CA538)

// $0CA54E: [8-bit] State of Object 4
function state_of_object_4() => byte(0x0CA54E)

// $0CA558: [16-bit] ID of Object 4
function id_of_object_4() => word(0x0CA558)

// $0CA56E: [8-bit] State of Object 5
function state_of_object_5() => byte(0x0CA56E)

// $0CA578: [16-bit] ID of Object 5
function id_of_object_5() => word(0x0CA578)

// $0CA58E: [8-bit] State of Object 6
function state_of_object_6() => byte(0x0CA58E)

// $0CA598: [16-bit] ID of Object 6
function id_of_object_6() => word(0x0CA598)

// $0CA5AE: [8-bit] State of Object 7
function state_of_object_7() => byte(0x0CA5AE)

// $0CA5B8: [16-bit] ID of Object 7
function id_of_object_7() => word(0x0CA5B8)

// $0CA5CE: [8-bit] State of Object 8
function state_of_object_8() => byte(0x0CA5CE)

// $0CA5D8: [16-bit] ID of Object 8
function id_of_object_8() => word(0x0CA5D8)

// $0CA5EE: [8-bit] State of Object 9
function state_of_object_9() => byte(0x0CA5EE)

// $0CA5F8: [16-bit] ID of Object 9
function id_of_object_9() => word(0x0CA5F8)

// $0CA60E: [8-bit] State of Object 10
function state_of_object_10() => byte(0x0CA60E)

// $0CA618: [16-bit] ID of Object 10
function id_of_object_10() => word(0x0CA618)

// $0CA62E: [8-bit] State of Object 11
function state_of_object_11() => byte(0x0CA62E)

// $0CA638: [16-bit] ID of Object 11
function id_of_object_11() => word(0x0CA638)

// $0CA64E: [8-bit] State of Object 12
function state_of_object_12() => byte(0x0CA64E)

// $0CA658: [16-bit] ID of Object 12
function id_of_object_12() => word(0x0CA658)

// $0CA66E: [8-bit] State of Object 13
function state_of_object_13() => byte(0x0CA66E)

// $0CA678: [16-bit] ID of Object 13
function id_of_object_13() => word(0x0CA678)

// $0CA68E: [8-bit] State of Object 14
function state_of_object_14() => byte(0x0CA68E)

// $0CA698: [16-bit] ID of Object 14
function id_of_object_14() => word(0x0CA698)

// $0CA6AE: [8-bit] State of Object 15
function state_of_object_15() => byte(0x0CA6AE)

// $0CA6B8: [16-bit] ID of Object 15
function id_of_object_15() => word(0x0CA6B8)

// $0CA6CE: [8-bit] State of Object 16
function state_of_object_16() => byte(0x0CA6CE)

// $0CA6D8: [16-bit] ID of Object 16
function id_of_object_16() => word(0x0CA6D8)

// $0CA6EE: [8-bit] State of Object 17
function state_of_object_17() => byte(0x0CA6EE)

// $0CA6F8: [16-bit] ID of Object 17
function id_of_object_17() => word(0x0CA6F8)

// $0CA70E: [8-bit] State of Object 18
function state_of_object_18() => byte(0x0CA70E)

// $0CA718: [16-bit] ID of Object 18
function id_of_object_18() => word(0x0CA718)

// $0CA72E: [8-bit] State of Object 19
function state_of_object_19() => byte(0x0CA72E)

// $0CA738: [16-bit] ID of Object 19
function id_of_object_19() => word(0x0CA738)

// $0CA74E: [8-bit] State of Object 20
function state_of_object_20() => byte(0x0CA74E)

// $0CA758: [16-bit] ID of Object 20
function id_of_object_20() => word(0x0CA758)

// $0CA76E: [8-bit] State of Object 21
function state_of_object_21() => byte(0x0CA76E)

// $0CA778: [16-bit] ID of Object 21
function id_of_object_21() => word(0x0CA778)

// $0CA78E: [8-bit] State of Object 22
function state_of_object_22() => byte(0x0CA78E)

// $0CA798: [16-bit] ID of Object 22
function id_of_object_22() => word(0x0CA798)

// $0CA7AE: [8-bit] State of Object 23
function state_of_object_23() => byte(0x0CA7AE)

// $0CA7B8: [16-bit] ID of Object 23
function id_of_object_23() => word(0x0CA7B8)

// $0CA7CE: [8-bit] State of Object 24
function state_of_object_24() => byte(0x0CA7CE)

// $0CA7D8: [16-bit] ID of Object 24
function id_of_object_24() => word(0x0CA7D8)

// $0CA7EE: [8-bit] State of Object 25
function state_of_object_25() => byte(0x0CA7EE)

// $0CA7F8: [16-bit] ID of Object 25
function id_of_object_25() => word(0x0CA7F8)

// $0F96FA: [8-bit] Game State (3)
//          0x56 = On the Main Menu Screen
//          0x83 = In-game (Inside the Kitchen)
//          0x86 = Press Start Screen (Intro screen)
function game_state_3() => byte(0x0F96FA)

MenuLookup = {
    86 : " On the main menu",
    134 : " On the title screen ",
}

// $0FC0AA: [8-bit] Flowers (Daisy variant)
//          0x01 = stage 0
//          0x06 = stage 1
//          0x0f = stage 2
//          0x1b = stage 3
//          0x1f = stage 4
function flowers_daisy_variant() => byte(0x0FC0AA)

// $0FC0C4: [8-bit] Flowers (white/lily variant)
//          0x1c = stage 0
//          0x20 = stage 1
//          0x28 = stage 2
//          0x2c = stage 3
//          0x34 = stage 4
function flowers_white_lily_variant() => byte(0x0FC0C4)

// $0FC0E2: [8-bit] Flowers (rose/red variant)
//          0x01 = stage 0
//          0x07 = stage 1
//          0x0e = stage 2
//          0x1b = stage 3
//          0x1d = stage 4
function flowers_rose_red_variant() => byte(0x0FC0E2)

// $0FC0FE: [8-bit] Flowers (tulips/yellow variant)
//          0x02 = stage 0
//          0x04 = stage 1
//          0x06 = stage 2
//          0x0f = stage 3
//          0x1d = stage 4
function flowers_tulips_yellow_variant() => byte(0x0FC0FE)

// $0FC3D8: [16-bit] Pour Detergent Into the Sink
//          0x01 = Pouring
//          0xffff = None
function pour_detergent_into_the_sink() => word(0x0FC3D8)

// $0FD990: [16-bit] Hovered Object
//          0x5b = Panel (Mickey)
//          0x5c = Panel (Minnie)
//          0x5d = Panel (Pluto)
//          0x5e = Panel (Goofy)
//          0x5f = Panel (Donald)
//          0x60 = Panel (Daisy)
//          0x66 = Heavy cream
//          0x69 = Frying pan (hanging)
//          0x6e = Frying pan
//          0x6f = Baking pan (hovering over partially, other part is 0x73)
//          0x73 = Baking pan (hovering over partially, other part is 0x6f)
//          0x74 = Mugs (hanging)
//          0x75 = Mug (all 4 colored types)
//          0x78 = Mug (full)
//          0x79 = Wine glass (on shelf)
//          0x7a = Wine glass (empty)
//          0x7d = Wine glass (full)
//          0x80 = Wine glass (filled with ice cream)
//          0x81 = Tea cup (empty)
//          0x83 = Tea cup (full)
//          0x89 = Medium-sized plate
//          0x8a = Medium-sized plate (on shelf)
//          0x8b = Medium-sized plate (on shelf)
//          0x8c = Medium-sized plate (on shelf)
//          0x8d = Medium-sized plate (on shelf)
//          0x92 = Small plate
//          0x93 = Popcorn (in a small plate)
//          0x98 = Large mixing bowl
//          0x99 = Popcorn (in a large mixing bowl)
//          0x9a = Small mixing bowl (in cabinet)
//          0x9e = Small mixing bowl
//          0x9f = Popcorn (in a small mixing plate)
//          0xa0 = Large pot (hanging)
//          0xa4 = Large pot
//          0xb0 = Grater
//          0xb2 = Colander
//          0xc3 = Baster (in utensil holder)
//          0xc5 = Baster
//          0xc6 = Dipper (in utensil holder)
//          0xc9 = Dipper
//          0xca = Kitchen knife (in utensil holder)
//          0xcd = Kitchen Knife
//          0xce = Whisk (in utensil holder)
//          0xd0 = Whisk
//          0xd1 = Outside door (over)
//          0xd2 = Outside door (under)
//          0xd3 = Cabinet (under fruits/phone)
//          0xd4 = Cabinet (under microwave)
//          0xd5 = Cabinet (under sink right)
//          0xd6 = Cabinet (under sink left)
//          0xd7 = Cabinet (right side of oven)
//          0xd8 = Oven door
//          0xd9 = Cabinet (silverware)
//          0xda = Cabinet (table napkins)
//          0xdb = Cabinet (Tablecloth)
//          0xdc = Cabinet (rolls and buns)
//          0xdd = Cabinet (Toast bread)
//          0xde = Freezer door
//          0xdf = Fridge door
//          0xe0 = Fridge (eggs shelf)
//          0xe1 = Fridge (butter shelf)
//          0xe2 = Fridge (empty shelf)
//          0xe3 = Fridge (empty shelf)
//          0xe4 = Fridge (empty shelf)
//          0xe5 = Fridge (mustard, ketchup shelf)
//          0xe6 = Fridge (Vegetables shelf)
//          0xe7 = Microwave door
//          0xea = Cookie jar
//          0xed = Sink stopper
//          0xef = Sink sprayer
//          0xf0 = Faucet knob (cold)
//          0xf1 = Faucet knob (hot)
//          0xf2 = Faucet
//          0xf4 = Garbage disposal
//          0x101 = Can opener
//          0x105 = Potato bag
//          0x106 = Toaster
//          0x109 = Clock, Trash, Mop
//          0x10a = Popcorn maker
//          0x112 = Blender
//          0x115 = Blender button
//          0x118 = Make a cake button
//          0x119 = Oven baking button
//          0x11b = Temp. dial (off)
//          0x11c = Temp. dial (on medium)
//          0x11d = Temp. dial (on high)
//          0x121 = Make breakfast button
//          0x123 = Ladle (hanging)
//          0x124 = Ladle
//          0x12a = Tea pot
//          0x12d = Big plate (on shelf)
//          0x12e = Big plate
//          0x133 = Ice cream scoop
//          0x137 = Detergent
//          0x139 = Wrench
//          0x13f = Radio
//          0x140 = Tea cup (2 stacks on shelf)
//          0x141 = Tea cup (1 on shelf)
//          0x142 = Small plate (4 stacks on shelf)
//          0x146 = sink pipe
//          0x14a = Milk
//          0x14d = Whipped cream
//          0x155 = Popcorn jar
//          0x15e = Apple (in fruits rack)
//          0x15f = Banana (in fruits rack)
//          0x160 = Grape (in fruits rack)
//          0x161 = Orange (in fruits rack)
//          0x162 = Pizza (in freezer)
//          0x163 = Broccoli (in shelf)
//          0x164 = Carrot, strawberry (in shelf)
//          0x165 = Corn (in shelf)
//          0x166 = Strawberry (partially)
//          0x167 = Eggs (in shelf)
//          0x168 = Slice of cheese (in shelf)
//          0x169 = Bread (toast inside cabinet)
//          0x16a = Bread (toast roll inside cabinet)
//          0x16b = Bread (buns inside cabinet)
//          0x16c = Table napkin (inside cabinet)
//          0x16d = Spoon (inside cabinet)
//          0x16e = Fork (inside cabinet)
//          0x16f = Knife (inside cabinet)
//          0x170 = Butter (in shelf)
//          0x171 = Spaghetti (jar)
//          0x172 = Canned tomato
//          0x176 = Canned green peas
//          0x17a = Cereal
//          0x17b = Cereal (opened)
//          0x17d = Canned corn soup
//          0x181 = Peanut butter jar
//          0x183 = Ice cream (closed)
//          0x186 = Ice cream (opened)
//          0x187 = Ice cream (Melted)
//          0x188 = Mustard
//          0x18a = Ketchup
//          0x18c = Pickles
//          0x18e = Jam
//          0x190 = Chocolate syrup
//          0x192 = crackers box
//          0x194 = Tomato puree
//          0x198 = Salt
//          0x19a = Pepper
//          0x19f = Light switch
//          0x1a0 = Ventilation fan
//          0x1ab = Apple
//          0x1ac = Apple (sliced once)
//          0x1ad = Apple (sliced twice)
//          0x1ae = Apple (blended)
//          0x1af = Banana
//          0x1b0 = Banana (sliced once)
//          0x1b1 = Banana (sliced twice)
//          0x1b2 = Banana (blended)
//          0x1b3 = Grape
//          0x1b4 = Grape (sliced once)
//          0x1b5 = Grape (sliced twice/blended)
//          0x1b6 = Orange
//          0x1b7 = Orange (sliced once)
//          0x1b8 = Orange (sliced twice)
//          0x1b9 = Orange (blended)
//          0x1ba = Potato
//          0x1bb = Potato (sliced once)
//          0x1bc = Potato (sliced twice)
//          0x1bd = Potato (blended)
//          0x1be = Cookie
//          0x1c3 = Pizza
//          0x1c4 = Pizza (sliced once)
//          0x1c5 = Pizza (sliced twice)
//          0x1c7 = Broccoli
//          0x1cb = Carrot
//          0x1cc = Carrot (sliced once)
//          0x1cd = Carrot (sliced twice)
//          0x1cf = Corn
//          0x1d2 = Strawberry
//          0x1d3 = Strawberry (sliced once)
//          0x1d4 = Strawberry (sliced twice)
//          0x1d6 = Egg
//          0x1d7 = Egg (cracked/cooked)
//          0x1d8 = Slice of cheese
//          0x1dc = Bread (toast)
//          0x1e7 = Roll (hotdog bread)
//          0x1eb = Buns
//          0x1f1 = Table napkin
//          0x1f3 = Spoon
//          0x1f7 = Fork
//          0x1fb = Knife
//          0x218 = Cheese
//          0x219 = Cheese (sliced once)
//          0x21a = Cheese (sliced twice)
//          0x21b = Cheese (blended)
//          0x21c = Chocolate syrup on ice cream
//          0x21e = Cracker
//          0x223 = Beef
//          0x224 = Beef (sliced once)
//          0x225 = Beef (sliced twice)
//          0x226 = Beef (blended)
//          0x227 = Sausage
//          0x228 = Sausage (sliced once)
//          0x229 = Sausage (sliced twice)
//          0x22a = Sausage (blended)
//          0x22e = Hamburger
//          0x22f = Hamburger (sliced once)
//          0x230 = Hamburger (sliced twice)
//          0x231 = Hamburger (blended)
//          0x235 = Fish
//          0x236 = Fish (sliced once)
//          0x237 = Fish (sliced twice)
//          0x238 = Fish (blended)
//          0x251 = Popcorn (state after being held from a large mixing bowl)
//          0x253 = Popcorn (state after being held from a small plate)
//          0x25c = Cereal in a small mixing bowl
//          0x25d = Cereal with milk in a small mixing bowl
//          0x25e = Cereal in a small plate
//          0x25f = Cereal with milk in a small plate
//          0x260 = Cereal in a large mixing bowl
//          0x261 = Cereal with milk in a large mixing bowl
//          0x262 = Chicken
//          0x263 = Chicken (sliced once)
//          0x264 = Chicken (sliced twice)
//          0x265 = Chicken (blended)
//          0x268 = Butter
//          0x269 = Sponge
//          0x26c = Sink (left side)
//          0x26e = Sink (right side, partially)
//          0x26f = Sink (right side, partially)
function hovered_object_2() => word(0x0FD990)

achievement(
    title = "Time Management!", points = 1, type="progression",
    description = "Adjust the clock to discover different meal times",
    id = 468516, badge = "532345", published = "10/6/2024 3:05:27 PM", modified = "12/19/2024 1:52:19 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(clock()) == 0x03 && clock() == 0x00
)

achievement(
    title = "Clean Sweep", points = 1, type="progression",
    description = "Use the mop to clean the kitchen, giving you a fresh start whenever needed",
    id = 468503, badge = "532346", published = "10/6/2024 3:05:23 PM", modified = "11/22/2024 1:35:49 AM",
    trigger = prev(game_state_2()) == 0x04 && game_state_2() == 0x13 && demo_mode() != 0x800A
)

achievement(
    title = "Meal for Mickey", points = 1, type="progression",
    description = "Set something on the table that will catch Mickey's attention",
    id = 468494, badge = "532347", published = "10/6/2024 3:05:20 PM", modified = "12/19/2024 1:52:19 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x57 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Dinner's Ready!", points = 3, type="progression",
    description = "Cook and serve a meal on the table that catches Mickey and Minnie's attention at supper time",
    id = 468486, badge = "532348", published = "10/6/2024 3:05:17 PM", modified = "1/17/2026 1:10:49 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && clock() == 0x02 && prev(dialogs_interactions()) != 0x1A &&
              dialogs_interactions() == 0x1A
)

achievement(
    title = "Pasta Party!", points = 3, type="progression",
    description = "Cook and serve spaghetti on the table that will catch Mickey and Minnie's attention at lunchtime",
    id = 468502, badge = "532349", published = "10/6/2024 3:05:22 PM", modified = "12/19/2024 1:52:19 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && clock() == 0x00 && prev(dialogs_interactions()) == 0x18 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Fry Time!", points = 3, type="progression",
    description = "Fry and serve French fries on the table that will catch Mickey's attention during snack time",
    id = 468504, badge = "532350", published = "10/6/2024 3:05:23 PM", modified = "12/19/2024 1:52:20 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && clock() == 0x01 && prev(dialogs_interactions()) == 0x53 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Fresh and Fruity", points = 3, type="progression",
    description = "Prepare and serve a fruit plate on the table that will impress Mickey",
    id = 468513, badge = "532351", published = "10/6/2024 3:05:26 PM", modified = "12/21/2024 2:33:33 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x55 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Plate of Greens", points = 3, type="progression",
    description = "Prepare and serve a vegetables plate on the table that will impress Minnie",
    id = 468514, badge = "532352", published = "10/6/2024 3:05:26 PM", modified = "12/21/2024 2:33:34 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x3F &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Minnie's Soup Review", points = 3, type="progression",
    description = "Have Minnie rate your plate of soup",
    id = 468496, badge = "532356", published = "10/6/2024 3:05:20 PM", modified = "12/19/2024 1:52:20 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x17 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Ice Cream Sundaes!", points = 3, type="progression",
    description = "Fill a cup with ice cream, top it with chocolate syrup, and serve it on the table to impress Mickey and Minnie",
    id = 468483, badge = "532353", published = "10/6/2024 3:05:16 PM", modified = "12/20/2024 10:42:28 PM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && once(hovered_object_2() == 0x80) &&
              once(hovered_object_2() == 0x21C) && prev(dialogs_interactions()) == 0x19 &&
              dialogs_interactions() == 0xFFFF && never(game_state() != 0x80)
)

achievement(
    title = "Beef Buzz", points = 3,
    description = "Find out what Mickey thinks of your beef",
    id = 468491, badge = "532355", published = "10/6/2024 3:05:19 PM", modified = "12/19/2024 1:52:21 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x43 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Minnie's Approval", points = 3,
    description = "See what Minnie has to say about your chicken",
    id = 468488, badge = "532354", published = "10/6/2024 3:05:17 PM", modified = "12/19/2024 1:52:21 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x2B &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Bubbles!", points = 3,
    description = "Follow Minnie's advice to use the detergent after using the sink stopper",
    id = 468489, badge = "532357", published = "10/6/2024 3:05:18 PM", modified = "12/23/2024 6:39:04 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && once(dialogs_interactions() == 0x2D) &&
              prev(pour_detergent_into_the_sink()) == 0x01 && pour_detergent_into_the_sink() == 0xFFFF &&
              never(game_state() != 0x80)
)

achievement(
    title = "Sponge Time!", points = 1,
    description = "Clean up any food spills on the table after hearing Minnie's advice on cleaning",
    id = 468495, badge = "532358", published = "10/6/2024 3:05:20 PM", modified = "12/23/2024 6:39:05 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && once(dialogs_interactions() == 0x40) &&
              prev(sponge_state()) == 0x2B && sponge_state() == 0x2C && never(game_state() != 0x80)
)

achievement(
    title = "Plumbing Pal", points = 2,
    description = "Follow Mickey's advice to use the wrench after causing a leak under the sink",
    id = 468505, badge = "531387", published = "10/6/2024 3:05:23 PM", modified = "12/19/2024 1:52:22 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x09 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Raw Remarks", points = 1,
    description = "Serve uncooked food on the table and see how Mickey and Minnie respond",
    id = 468492, badge = "532359", published = "10/6/2024 3:05:19 PM", modified = "12/19/2024 1:52:22 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x1C &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Whoops, Overcooked!", points = 2,
    description = "Get Minnie's concerned call about the smoky situation",
    id = 468487, badge = "532360", published = "10/6/2024 3:05:17 PM", modified = "12/19/2024 1:52:22 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x2E &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Toaster BBQ?", points = 2,
    description = "Hear Mickey's smoky suspicion",
    id = 468490, badge = "532361", published = "10/6/2024 3:05:19 PM", modified = "12/19/2024 1:52:22 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x41 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "A Little Burnt, That's All", points = 2,
    description = "Serve overcooked food on the table and listen to Mickey and Minnie's response",
    id = 468493, badge = "532362", published = "10/6/2024 3:05:19 PM", modified = "12/19/2024 1:52:23 AM",
    trigger = game_state_2() == 0x14 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x1D &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Sausage Surprise!", points = 2,
    description = "Have Minnie bring you a set of sausages",
    id = 468498, badge = "532363", published = "10/6/2024 3:05:21 PM", modified = "12/19/2024 1:52:24 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x3B &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Minnie's Meaty Goodies", points = 2,
    description = "Have Minnie bring you a set of hamburgers",
    id = 468499, badge = "532364", published = "10/6/2024 3:05:22 PM", modified = "12/19/2024 1:52:24 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x3C &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Fresh Fish Frenzy", points = 2,
    description = "Have Mickey bring you fish",
    id = 468500, badge = "532365", published = "10/6/2024 3:05:22 PM", modified = "12/19/2024 1:52:24 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x50 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "T-Bone Steak", points = 2,
    description = "Have Mickey bring you beef",
    id = 468501, badge = "532366", published = "10/6/2024 3:05:22 PM", modified = "12/19/2024 1:52:24 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x51 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Back from the Bin", points = 1,
    description = "Have Mickey or Minnie retrieve items you've thrown in the trash can",
    id = 470228, badge = "533164", published = "10/11/2024 1:18:18 AM", modified = "12/19/2024 1:52:25 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) == 0x3D && dialogs_interactions() == 0xFFFF) ||
               (prev(dialogs_interactions()) == 0x4F && dialogs_interactions() == 0xFFFF) ||
               (prev(dialogs_interactions()) == 0x52 && dialogs_interactions() == 0xFFFF))
)

achievement(
    title = "Crunchy Kernels", points = 2,
    description = "Make popcorn in any bowl",
    id = 468515, badge = "532367", published = "10/6/2024 3:05:26 PM", modified = "12/19/2024 1:52:25 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x02 &&
              dialogs_interactions() == 0xFFFF
)

achievement(
    title = "Popcorn Bonanza", points = 1,
    description = "Make popcorn without a bowl",
    id = 468497, badge = "532368", published = "10/6/2024 3:05:20 PM", modified = "12/19/2024 1:52:25 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(dialogs_interactions()) == 0x03 &&
              dialogs_interactions() == 0x59
)

achievement(
    title = "Apple Mixer", points = 1,
    description = "Make an apple smoothie by slicing an apple, blend it, then pour it into a glass",
    id = 468475, badge = "532369", published = "10/6/2024 3:05:14 PM", modified = "12/20/2024 4:16:45 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(3, once(hovered_object_2() == 0x1AC),
                  once(prev(blender_related()) == 0x29 && blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6DB0 || wine_glass_2_liquid_contents() == 0x6DB0)
              ) &&
              never((hovered_object_2() == 0x15E || hovered_object_2() == 0x1AB || hovered_object_2() == 0x1CF ||
                  hovered_object_2() == 0x164 || hovered_object_2() == 0x165 || hovered_object_2() == 0x167 ||
                  hovered_object_2() == 0xE0)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "From Vine to Glass", points = 1,
    description = "Make a grape smoothie by blending grapes, then pour it into a glass",
    id = 468476, badge = "532370", published = "10/6/2024 3:05:14 PM", modified = "12/20/2024 4:16:45 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(blender_related()) == 0x26 &&
              tally(2, once(blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6CF0 || wine_glass_2_liquid_contents() == 0x6CF0)
              ) && never((hovered_object_2() == 0x160 || hovered_object_2() == 0x1B3)) && never(game_state() == 0x00)
)

achievement(
    title = "Smooth Operator", points = 1,
    description = "Make a banana smoothie by slicing a banana, blend it, then pour it into a glass",
    id = 468477, badge = "532371", published = "10/6/2024 3:05:14 PM", modified = "12/20/2024 4:16:46 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(3, once(hovered_object_2() == 0x1B0),
                  once(prev(blender_related()) == 0x23 && blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6C30 || wine_glass_2_liquid_contents() == 0x6C30)
              ) &&
              never((hovered_object_2() == 0x15F || hovered_object_2() == 0x1AF || hovered_object_2() == 0x1BA ||
                  hovered_object_2() == 0x105 || hovered_object_2() == 0x192 || hovered_object_2() == 0x21E ||
                  what_object_is_being_held() == 0x6F || what_object_is_being_held() == 0x79)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "Citrus Splash", points = 1,
    description = "Make an orange smoothie by slicing an orange, blend it, then pour it into a glass",
    id = 468478, badge = "532372", published = "10/6/2024 3:05:15 PM", modified = "12/20/2024 4:16:46 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(3, once(hovered_object_2() == 0x1B7),
                  once(prev(blender_related()) == 0x22 && blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6BF0 || wine_glass_2_liquid_contents() == 0x6BF0)
              ) &&
              never((hovered_object_2() == 0x161 || hovered_object_2() == 0x1B6 || hovered_object_2() == 0x218 ||
                  hovered_object_2() == 0x1EB || hovered_object_2() == 0x1E7 || hovered_object_2() == 0x16A ||
                  hovered_object_2() == 0x16B)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "Berry Good", points = 1,
    description = "Make a strawberry smoothie by slicing a strawberry, blend it, then pour it into a glass",
    id = 468479, badge = "532373", published = "10/6/2024 3:05:15 PM", modified = "12/20/2024 4:16:46 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(3, once(hovered_object_2() == 0x1D3),
                  once(prev(blender_related()) == 0x27 && blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6D30 || wine_glass_2_liquid_contents() == 0x6D30)
              ) &&
              never((hovered_object_2() == 0x164 || hovered_object_2() == 0x166 || hovered_object_2() == 0x1D2 ||
                  what_object_is_being_held() == 0x70 || hovered_object_2() == 0x172 || hovered_object_2() == 0x22E)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "Vitamin V!", points = 1,
    description = "Make a carrot smoothie by slicing a carrot, blend it, then pour it into a glass",
    id = 468480, badge = "532374", published = "10/6/2024 3:05:15 PM", modified = "12/20/2024 4:16:46 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(3, once(hovered_object_2() == 0x1CC),
                  once(prev(blender_related()) == 0x24 && blender_related() == 0x2B),
                  once(wine_glass_1_liquid_contents() == 0x6C70 || wine_glass_2_liquid_contents() == 0x6C70)
              ) &&
              never((hovered_object_2() == 0x164 || hovered_object_2() == 0x166 || hovered_object_2() == 0x1CB ||
                  hovered_object_2() == 0x1BE || hovered_object_2() == 0xEA)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "Hot Dog Time!", points = 2,
    description = "Make a hot dog sandwich",
    id = 468512, badge = "532375", published = "10/6/2024 3:05:26 PM", modified = "12/20/2024 10:42:49 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(id_of_object_1()) == 0x127 && id_of_object_1() == 0x24B) ||
               (prev(id_of_object_2()) == 0x127 && id_of_object_2() == 0x24B) ||
               (prev(id_of_object_3()) == 0x127 && id_of_object_3() == 0x24B) ||
               (prev(id_of_object_4()) == 0x127 && id_of_object_4() == 0x24B) ||
               (prev(id_of_object_5()) == 0x127 && id_of_object_5() == 0x24B) ||
               (prev(id_of_object_6()) == 0x127 && id_of_object_6() == 0x24B) ||
               (prev(id_of_object_7()) == 0x127 && id_of_object_7() == 0x24B) ||
               (prev(id_of_object_8()) == 0x127 && id_of_object_8() == 0x24B) ||
               (prev(id_of_object_9()) == 0x127 && id_of_object_9() == 0x24B) ||
               (prev(id_of_object_10()) == 0x127 && id_of_object_10() == 0x24B) ||
               (prev(id_of_object_11()) == 0x127 && id_of_object_11() == 0x24B) ||
               (prev(id_of_object_12()) == 0x127 && id_of_object_12() == 0x24B) ||
               (prev(id_of_object_13()) == 0x127 && id_of_object_13() == 0x24B) ||
               (prev(id_of_object_14()) == 0x127 && id_of_object_14() == 0x24B) ||
               (prev(id_of_object_15()) == 0x127 && id_of_object_15() == 0x24B) ||
               (prev(id_of_object_16()) == 0x127 && id_of_object_16() == 0x24B) ||
               (prev(id_of_object_17()) == 0x127 && id_of_object_17() == 0x24B) ||
               (prev(id_of_object_18()) == 0x127 && id_of_object_18() == 0x24B) ||
               (prev(id_of_object_19()) == 0x127 && id_of_object_19() == 0x24B) ||
               (prev(id_of_object_20()) == 0x127 && id_of_object_20() == 0x24B) ||
               (prev(id_of_object_21()) == 0x127 && id_of_object_21() == 0x24B) ||
               (prev(id_of_object_22()) == 0x127 && id_of_object_22() == 0x24B) ||
               (prev(id_of_object_23()) == 0x127 && id_of_object_23() == 0x24B) ||
               (prev(id_of_object_24()) == 0x127 && id_of_object_24() == 0x24B) ||
               (prev(id_of_object_25()) == 0x127 && id_of_object_25() == 0x24B))
)

achievement(
    title = "Big Tasty Burger", points = 2,
    description = "Build a hamburger",
    id = 468511, badge = "532376", published = "10/6/2024 3:05:25 PM", modified = "12/19/2024 1:52:27 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(id_of_object_1()) == 0x137 && id_of_object_1() == 0x13D) ||
               (prev(id_of_object_2()) == 0x137 && id_of_object_2() == 0x13D) ||
               (prev(id_of_object_3()) == 0x137 && id_of_object_3() == 0x13D) ||
               (prev(id_of_object_4()) == 0x137 && id_of_object_4() == 0x13D) ||
               (prev(id_of_object_5()) == 0x137 && id_of_object_5() == 0x13D) ||
               (prev(id_of_object_6()) == 0x137 && id_of_object_6() == 0x13D) ||
               (prev(id_of_object_7()) == 0x137 && id_of_object_7() == 0x13D) ||
               (prev(id_of_object_8()) == 0x137 && id_of_object_8() == 0x13D) ||
               (prev(id_of_object_9()) == 0x137 && id_of_object_9() == 0x13D) ||
               (prev(id_of_object_10()) == 0x137 && id_of_object_10() == 0x13D) ||
               (prev(id_of_object_11()) == 0x137 && id_of_object_11() == 0x13D) ||
               (prev(id_of_object_12()) == 0x137 && id_of_object_12() == 0x3D) ||
               (prev(id_of_object_13()) == 0x137 && id_of_object_13() == 0x13D) ||
               (prev(id_of_object_14()) == 0x137 && id_of_object_14() == 0x13D) ||
               (prev(id_of_object_15()) == 0x137 && id_of_object_15() == 0x13D))
)

achievement(
    title = "Tea's On!", points = 2,
    description = "Pour yourself a cup of tea at breakfast time",
    id = 468481, badge = "532377", published = "10/6/2024 3:05:15 PM", modified = "12/19/2024 1:52:27 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && clock() == 0x03 &&
              ((prev(liquid_in_teal_mug()) == 0x0B && liquid_in_teal_mug() == 0x00) ||
               (prev(liquid_in_green_mug()) == 0x0B && liquid_in_green_mug() == 0x00) ||
               (prev(liquid_in_brown_mug()) == 0x0B && liquid_in_brown_mug() == 0x00) ||
               (prev(liquid_in_purple_mug()) == 0x0B && liquid_in_purple_mug() == 0x00))
)

achievement(
    title = "Breakfast Time!", points = 2,
    description = "Fry an egg at breakfast time",
    id = 468471, badge = "532378", published = "10/6/2024 3:05:13 PM", modified = "12/19/2024 1:52:27 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && clock() == 0x03 &&
              ((prev(id_of_object_1()) == 0x103 && id_of_object_1() == 0x105) ||
               (prev(id_of_object_2()) == 0x103 && id_of_object_2() == 0x105) ||
               (prev(id_of_object_3()) == 0x103 && id_of_object_3() == 0x105) ||
               (prev(id_of_object_4()) == 0x103 && id_of_object_4() == 0x105) ||
               (prev(id_of_object_5()) == 0x103 && id_of_object_5() == 0x105) ||
               (prev(id_of_object_6()) == 0x103 && id_of_object_6() == 0x105) ||
               (prev(id_of_object_7()) == 0x103 && id_of_object_7() == 0x105) ||
               (prev(id_of_object_8()) == 0x103 && id_of_object_8() == 0x105) ||
               (prev(id_of_object_9()) == 0x103 && id_of_object_9() == 0x105) ||
               (prev(id_of_object_10()) == 0x103 && id_of_object_10() == 0x105) ||
               (prev(id_of_object_11()) == 0x103 && id_of_object_11() == 0x105) ||
               (prev(id_of_object_12()) == 0x103 && id_of_object_12() == 0x105) ||
               (prev(id_of_object_13()) == 0x103 && id_of_object_13() == 0x105) ||
               (prev(id_of_object_14()) == 0x103 && id_of_object_14() == 0x105) ||
               (prev(id_of_object_15()) == 0x103 && id_of_object_15() == 0x105))
)

achievement(
    title = "Slice the Pizza", points = 3,
    description = "Cook and cut a pizza into four slices",
    id = 468485, badge = "532379", published = "10/6/2024 3:05:17 PM", modified = "12/19/2024 1:52:28 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(id_of_object_1()) == 0x93 && id_of_object_1() == 0x99) ||
               (prev(id_of_object_1()) == 0x92 && id_of_object_1() == 0x98) ||
               (prev(id_of_object_2()) == 0x93 && id_of_object_2() == 0x99) ||
               (prev(id_of_object_2()) == 0x92 && id_of_object_2() == 0x98) ||
               (prev(id_of_object_3()) == 0x93 && id_of_object_3() == 0x99) ||
               (prev(id_of_object_3()) == 0x92 && id_of_object_3() == 0x98) ||
               (prev(id_of_object_4()) == 0x93 && id_of_object_4() == 0x99) ||
               (prev(id_of_object_4()) == 0x92 && id_of_object_4() == 0x98) ||
               (prev(id_of_object_5()) == 0x93 && id_of_object_5() == 0x99) ||
               (prev(id_of_object_5()) == 0x92 && id_of_object_5() == 0x98) ||
               (prev(id_of_object_6()) == 0x93 && id_of_object_6() == 0x99) ||
               (prev(id_of_object_6()) == 0x92 && id_of_object_6() == 0x98) ||
               (prev(id_of_object_7()) == 0x93 && id_of_object_7() == 0x99) ||
               (prev(id_of_object_7()) == 0x92 && id_of_object_7() == 0x98) ||
               (prev(id_of_object_8()) == 0x93 && id_of_object_8() == 0x99) ||
               (prev(id_of_object_8()) == 0x92 && id_of_object_8() == 0x98) ||
               (prev(id_of_object_9()) == 0x93 && id_of_object_9() == 0x99) ||
               (prev(id_of_object_9()) == 0x92 && id_of_object_9() == 0x98) ||
               (prev(id_of_object_10()) == 0x93 && id_of_object_10() == 0x99) ||
               (prev(id_of_object_10()) == 0x92 && id_of_object_10() == 0x98) ||
               (prev(id_of_object_11()) == 0x93 && id_of_object_11() == 0x99) ||
               (prev(id_of_object_11()) == 0x92 && id_of_object_11() == 0x98) ||
               (prev(id_of_object_12()) == 0x93 && id_of_object_12() == 0x99) ||
               (prev(id_of_object_12()) == 0x92 && id_of_object_12() == 0x98) ||
               (prev(id_of_object_13()) == 0x93 && id_of_object_13() == 0x99) ||
               (prev(id_of_object_13()) == 0x92 && id_of_object_13() == 0x98) ||
               (prev(id_of_object_14()) == 0x93 && id_of_object_14() == 0x99) ||
               (prev(id_of_object_14()) == 0x92 && id_of_object_14() == 0x98) ||
               (prev(id_of_object_15()) == 0x93 && id_of_object_15() == 0x99) ||
               (prev(id_of_object_15()) == 0x92 && id_of_object_15() == 0x98) ||
               (prev(id_of_object_16()) == 0x93 && id_of_object_16() == 0x99) ||
               (prev(id_of_object_16()) == 0x92 && id_of_object_16() == 0x98) ||
               (prev(id_of_object_17()) == 0x93 && id_of_object_17() == 0x99) ||
               (prev(id_of_object_17()) == 0x92 && id_of_object_17() == 0x98) ||
               (prev(id_of_object_18()) == 0x93 && id_of_object_18() == 0x99) ||
               (prev(id_of_object_18()) == 0x92 && id_of_object_18() == 0x98) ||
               (prev(id_of_object_19()) == 0x93 && id_of_object_19() == 0x99) ||
               (prev(id_of_object_19()) == 0x92 && id_of_object_19() == 0x98) ||
               (prev(id_of_object_20()) == 0x93 && id_of_object_20() == 0x99) ||
               (prev(id_of_object_20()) == 0x92 && id_of_object_20() == 0x98))
)

achievement(
    title = "Bowlful of Crunch", points = 2,
    description = "Prepare a bowl of cereal",
    id = 468537, badge = "532380", published = "10/6/2024 3:05:34 PM", modified = "12/19/2024 4:10:07 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(small_plate_1_content()) == 0x25E && small_plate_1_content() == 0x25F) ||
               (prev(small_plate_2_content()) == 0x25E && small_plate_2_content() == 0x25F) ||
               (prev(small_plate_3_content()) == 0x25E && small_plate_3_content() == 0x25F) ||
               (prev(small_plate_4_content()) == 0x25E && small_plate_4_content() == 0x25F))
)

achievement(
    title = "Cold Recovery", points = 4,
    description = "Refreeze the melted ice cream tub",
    id = 468484, badge = "532381", published = "10/6/2024 3:05:16 PM", modified = "12/19/2024 2:46:59 AM",
    trigger = game_state() == 0x80 && demo_mode() != 0x800A && prev(ice_cream_tub_state()) == 0x85 &&
              ice_cream_tub_state() == 0x83 && game_state_2() != 0x13
)

achievement(
    title = "Waste Not!", points = 1,
    description = "Grind food in the garbage disposal",
    id = 468482, badge = "532382", published = "10/6/2024 3:05:15 PM", modified = "12/19/2024 1:52:28 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(grinding_food_in_garbage_disposal()) == 0x09 &&
              grinding_food_in_garbage_disposal() == 0x0D
)

achievement(
    title = "Apple Editions", points = 1,
    description = "Microwave an Apple to the point of no return",
    id = 468535, badge = "531418", published = "10/6/2024 3:05:34 PM", modified = "12/20/2024 10:43:06 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(id_of_object_1()) == 0x25A && state_of_object_1() == 0x30) ||
               (prev(id_of_object_2()) == 0x25A && state_of_object_2() == 0x30) ||
               (prev(id_of_object_3()) == 0x25A && state_of_object_3() == 0x30) ||
               (prev(id_of_object_4()) == 0x25A && state_of_object_4() == 0x30) ||
               (prev(id_of_object_5()) == 0x25A && state_of_object_5() == 0x30) ||
               (prev(id_of_object_6()) == 0x25A && state_of_object_6() == 0x30) ||
               (prev(id_of_object_7()) == 0x25A && state_of_object_7() == 0x30) ||
               (prev(id_of_object_8()) == 0x25A && state_of_object_8() == 0x30) ||
               (prev(id_of_object_9()) == 0x25A && state_of_object_9() == 0x30) ||
               (prev(id_of_object_10()) == 0x25A && state_of_object_10() == 0x30) ||
               (prev(id_of_object_11()) == 0x25A && state_of_object_11() == 0x30) ||
               (prev(id_of_object_12()) == 0x25A && state_of_object_12() == 0x30) ||
               (prev(id_of_object_13()) == 0x25A && state_of_object_13() == 0x30) ||
               (prev(id_of_object_14()) == 0x25A && state_of_object_14() == 0x30) ||
               (prev(id_of_object_15()) == 0x25A && state_of_object_15() == 0x30) ||
               (prev(id_of_object_16()) == 0x25A && state_of_object_16() == 0x30) ||
               (prev(id_of_object_17()) == 0x25A && state_of_object_17() == 0x30) ||
               (prev(id_of_object_18()) == 0x25A && state_of_object_18() == 0x30) ||
               (prev(id_of_object_19()) == 0x25A && state_of_object_19() == 0x30) ||
               (prev(id_of_object_20()) == 0x25A && state_of_object_20() == 0x30) ||
               (prev(id_of_object_21()) == 0x25A && state_of_object_21() == 0x30) ||
               (prev(id_of_object_22()) == 0x25A && state_of_object_22() == 0x30) ||
               (prev(id_of_object_23()) == 0x25A && state_of_object_23() == 0x30) ||
               (prev(id_of_object_24()) == 0x25A && state_of_object_24() == 0x30) ||
               (prev(id_of_object_25()) == 0x25A && state_of_object_25() == 0x30))
)

achievement(
    title = "Grape Discoveries", points = 3,
    description = "Discover all types of grapes through cooking, using your imagination!",
    id = 468536, badge = "532383", published = "10/6/2024 3:05:34 PM", modified = "12/21/2024 1:15:08 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(1, once(prev(id_of_object_1()) != 0x30 && id_of_object_1() == 0x30),
                  once(prev(id_of_object_2()) != 0x30 && id_of_object_2() == 0x30),
                  once(prev(id_of_object_3()) != 0x30 && id_of_object_3() == 0x30),
                  once(prev(id_of_object_4()) != 0x30 && id_of_object_4() == 0x30),
                  once(prev(id_of_object_5()) != 0x30 && id_of_object_5() == 0x30),
                  once(id_of_object_6() != 0x30 && id_of_object_6() == 0x30),
                  once(prev(id_of_object_7()) != 0x30 && id_of_object_7() == 0x30),
                  once(prev(id_of_object_8()) != 0x30 && id_of_object_8() == 0x30),
                  once(prev(id_of_object_9()) != 0x30 && id_of_object_9() == 0x30),
                  once(prev(id_of_object_10()) != 0x30 && id_of_object_10() == 0x30),
                  once(prev(id_of_object_11()) != 0x30 && id_of_object_11() == 0x30),
                  once(prev(id_of_object_12()) != 0x30 && id_of_object_12() == 0x30),
                  once(prev(id_of_object_13()) != 0x30 && id_of_object_13() == 0x30),
                  once(prev(id_of_object_14()) != 0x30 && id_of_object_14() == 0x30),
                  once(prev(id_of_object_15()) != 0x30 && id_of_object_15() == 0x30),
                  once(prev(id_of_object_16()) != 0x30 && id_of_object_16() == 0x30),
                  once(prev(id_of_object_17()) != 0x30 && id_of_object_17() == 0x30),
                  once(prev(id_of_object_18()) != 0x30 && id_of_object_18() == 0x30),
                  once(prev(id_of_object_19()) != 0x30 && id_of_object_19() == 0x30),
                  once(prev(id_of_object_20()) != 0x30 && id_of_object_20() == 0x30),
                  once(prev(id_of_object_21()) != 0x30 && id_of_object_21() == 0x30),
                  once(prev(id_of_object_22()) != 0x30 && id_of_object_22() == 0x30),
                  once(prev(id_of_object_23()) != 0x30 && id_of_object_23() == 0x30),
                  once(prev(id_of_object_24()) != 0x30 && id_of_object_24() == 0x30),
                  once(prev(id_of_object_25()) != 0x30 && id_of_object_25() == 0x30)
              ) &&
              tally(1, once(prev(id_of_object_1()) != 0x31 && id_of_object_1() == 0x31),
                  once(prev(id_of_object_2()) != 0x31 && id_of_object_2() == 0x31),
                  once(prev(id_of_object_3()) != 0x31 && id_of_object_3() == 0x31),
                  once(prev(id_of_object_4()) != 0x31 && id_of_object_4() == 0x31),
                  once(prev(id_of_object_5()) != 0x31 && id_of_object_5() == 0x31),
                  once(id_of_object_6() != 0x31 && id_of_object_6() == 0x31),
                  once(prev(id_of_object_7()) != 0x31 && id_of_object_7() == 0x31),
                  once(prev(id_of_object_8()) != 0x31 && id_of_object_8() == 0x31),
                  once(prev(id_of_object_9()) != 0x31 && id_of_object_9() == 0x31),
                  once(prev(id_of_object_10()) != 0x31 && id_of_object_10() == 0x31),
                  once(prev(id_of_object_11()) != 0x31 && id_of_object_11() == 0x31),
                  once(prev(id_of_object_12()) != 0x31 && id_of_object_12() == 0x31),
                  once(prev(id_of_object_13()) != 0x31 && id_of_object_13() == 0x31),
                  once(prev(id_of_object_14()) != 0x31 && id_of_object_14() == 0x31),
                  once(prev(id_of_object_15()) != 0x31 && id_of_object_15() == 0x31),
                  once(prev(id_of_object_16()) != 0x31 && id_of_object_16() == 0x31),
                  once(prev(id_of_object_17()) != 0x31 && id_of_object_17() == 0x31),
                  once(prev(id_of_object_18()) != 0x31 && id_of_object_18() == 0x31),
                  once(prev(id_of_object_19()) != 0x31 && id_of_object_19() == 0x31),
                  once(prev(id_of_object_20()) != 0x31 && id_of_object_20() == 0x31),
                  once(prev(id_of_object_21()) != 0x31 && id_of_object_21() == 0x31),
                  once(prev(id_of_object_22()) != 0x31 && id_of_object_22() == 0x31),
                  once(prev(id_of_object_23()) != 0x31 && id_of_object_23() == 0x31),
                  once(prev(id_of_object_24()) != 0x31 && id_of_object_24() == 0x31),
                  once(prev(id_of_object_25()) != 0x31 && id_of_object_25() == 0x31)
              ) &&
              tally(1, once(prev(id_of_object_1()) != 0x32 && id_of_object_1() == 0x32),
                  once(prev(id_of_object_2()) != 0x32 && id_of_object_2() == 0x32),
                  once(prev(id_of_object_3()) != 0x32 && id_of_object_3() == 0x32),
                  once(prev(id_of_object_4()) != 0x32 && id_of_object_4() == 0x32),
                  once(prev(id_of_object_5()) != 0x32 && id_of_object_5() == 0x32),
                  once(id_of_object_6() != 0x32 && id_of_object_6() == 0x32),
                  once(prev(id_of_object_7()) != 0x32 && id_of_object_7() == 0x32),
                  once(prev(id_of_object_8()) != 0x32 && id_of_object_8() == 0x32),
                  once(prev(id_of_object_9()) != 0x32 && id_of_object_9() == 0x32),
                  once(prev(id_of_object_10()) != 0x32 && id_of_object_10() == 0x32),
                  once(prev(id_of_object_11()) != 0x32 && id_of_object_11() == 0x32),
                  once(prev(id_of_object_12()) != 0x32 && id_of_object_12() == 0x32),
                  once(prev(id_of_object_13()) != 0x32 && id_of_object_13() == 0x32),
                  once(prev(id_of_object_14()) != 0x32 && id_of_object_14() == 0x32),
                  once(prev(id_of_object_15()) != 0x32 && id_of_object_15() == 0x32),
                  once(prev(id_of_object_16()) != 0x32 && id_of_object_16() == 0x32),
                  once(prev(id_of_object_17()) != 0x32 && id_of_object_17() == 0x32),
                  once(prev(id_of_object_18()) != 0x32 && id_of_object_18() == 0x32),
                  once(prev(id_of_object_19()) != 0x32 && id_of_object_19() == 0x32),
                  once(prev(id_of_object_20()) != 0x32 && id_of_object_20() == 0x32),
                  once(prev(id_of_object_21()) != 0x32 && id_of_object_21() == 0x32),
                  once(prev(id_of_object_22()) != 0x32 && id_of_object_22() == 0x32),
                  once(prev(id_of_object_23()) != 0x32 && id_of_object_23() == 0x32),
                  once(prev(id_of_object_24()) != 0x32 && id_of_object_24() == 0x32),
                  once(prev(id_of_object_25()) != 0x32 && id_of_object_25() == 0x32)
              ) &&
              tally(1, once(prev(id_of_object_1()) != 0x33 && id_of_object_1() == 0x33),
                  once(prev(id_of_object_2()) != 0x33 && id_of_object_2() == 0x33),
                  once(prev(id_of_object_3()) != 0x33 && id_of_object_3() == 0x33),
                  once(prev(id_of_object_4()) != 0x33 && id_of_object_4() == 0x33),
                  once(prev(id_of_object_5()) != 0x33 && id_of_object_5() == 0x33),
                  once(id_of_object_6() != 0x33 && id_of_object_6() == 0x33),
                  once(prev(id_of_object_7()) != 0x33 && id_of_object_7() == 0x33),
                  once(prev(id_of_object_8()) != 0x33 && id_of_object_8() == 0x33),
                  once(prev(id_of_object_9()) != 0x33 && id_of_object_9() == 0x33),
                  once(prev(id_of_object_10()) != 0x33 && id_of_object_10() == 0x33),
                  once(prev(id_of_object_11()) != 0x33 && id_of_object_11() == 0x33),
                  once(prev(id_of_object_12()) != 0x33 && id_of_object_12() == 0x33),
                  once(prev(id_of_object_13()) != 0x33 && id_of_object_13() == 0x33),
                  once(prev(id_of_object_14()) != 0x33 && id_of_object_14() == 0x33),
                  once(prev(id_of_object_15()) != 0x33 && id_of_object_15() == 0x33),
                  once(prev(id_of_object_16()) != 0x33 && id_of_object_16() == 0x33),
                  once(prev(id_of_object_17()) != 0x33 && id_of_object_17() == 0x33),
                  once(prev(id_of_object_18()) != 0x33 && id_of_object_18() == 0x33),
                  once(prev(id_of_object_19()) != 0x33 && id_of_object_19() == 0x33),
                  once(prev(id_of_object_20()) != 0x33 && id_of_object_20() == 0x33),
                  once(prev(id_of_object_21()) != 0x33 && id_of_object_21() == 0x33),
                  once(prev(id_of_object_22()) != 0x33 && id_of_object_22() == 0x33),
                  once(prev(id_of_object_23()) != 0x33 && id_of_object_23() == 0x33),
                  once(prev(id_of_object_24()) != 0x33 && id_of_object_24() == 0x33),
                  once(prev(id_of_object_25()) != 0x33 && id_of_object_25() == 0x33)
              ) &&
              tally(1, once(prev(id_of_object_1()) != 0x34 && id_of_object_1() == 0x34),
                  once(prev(id_of_object_2()) != 0x34 && id_of_object_2() == 0x34),
                  once(prev(id_of_object_3()) != 0x34 && id_of_object_3() == 0x34),
                  once(prev(id_of_object_4()) != 0x34 && id_of_object_4() == 0x34),
                  once(prev(id_of_object_5()) != 0x34 && id_of_object_5() == 0x34),
                  once(id_of_object_6() != 0x34 && id_of_object_6() == 0x34),
                  once(prev(id_of_object_7()) != 0x34 && id_of_object_7() == 0x34),
                  once(prev(id_of_object_8()) != 0x34 && id_of_object_8() == 0x34),
                  once(prev(id_of_object_9()) != 0x34 && id_of_object_9() == 0x34),
                  once(prev(id_of_object_10()) != 0x34 && id_of_object_10() == 0x34),
                  once(prev(id_of_object_11()) != 0x34 && id_of_object_11() == 0x34),
                  once(prev(id_of_object_12()) != 0x34 && id_of_object_12() == 0x34),
                  once(prev(id_of_object_13()) != 0x34 && id_of_object_13() == 0x34),
                  once(prev(id_of_object_14()) != 0x34 && id_of_object_14() == 0x34),
                  once(prev(id_of_object_15()) != 0x34 && id_of_object_15() == 0x34),
                  once(prev(id_of_object_16()) != 0x34 && id_of_object_16() == 0x34),
                  once(prev(id_of_object_17()) != 0x34 && id_of_object_17() == 0x34),
                  once(prev(id_of_object_18()) != 0x34 && id_of_object_18() == 0x34),
                  once(prev(id_of_object_19()) != 0x34 && id_of_object_19() == 0x34),
                  once(prev(id_of_object_20()) != 0x34 && id_of_object_20() == 0x34),
                  once(prev(id_of_object_21()) != 0x34 && id_of_object_21() == 0x34),
                  once(prev(id_of_object_22()) != 0x34 && id_of_object_22() == 0x34),
                  once(prev(id_of_object_23()) != 0x34 && id_of_object_23() == 0x34),
                  once(prev(id_of_object_24()) != 0x34 && id_of_object_24() == 0x34),
                  once(prev(id_of_object_25()) != 0x34 && id_of_object_25() == 0x34)
              ) && never(game_state_3() != 0x83)
)

achievement(
    title = "Pop It Open", points = 1,
    description = "Use the can opener to open any can of food",
    id = 468534, badge = "532384", published = "10/6/2024 3:05:33 PM", modified = "12/19/2024 1:52:29 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(canned_corn_soup_1_state()) == 0x7D && canned_corn_soup_1_state() == 0x7E) ||
               (prev(canned_corn_soup_2_state()) == 0x7D && canned_corn_soup_2_state() == 0x7E) ||
               (prev(canned_corn_soup_3_state()) == 0x7D && canned_corn_soup_3_state() == 0x7E) ||
               (prev(canned_corn_soup_4_state()) == 0x7D && canned_corn_soup_4_state() == 0x7E) ||
               (prev(canned_tomato_1_state()) == 0x72 && canned_tomato_1_state() == 0x73) ||
               (prev(canned_tomato_2_state()) == 0x72 && canned_tomato_2_state() == 0x73) ||
               (prev(canned_green_peas_1_state()) == 0x76 && canned_green_peas_1_state() == 0x77) ||
               (prev(canned_green_peas_2_state()) == 0x76 && canned_green_peas_2_state() == 0x77))
)

achievement(
    title = "Wallpaper Wonderland!", points = 3,
    description = "Check out all kitchen wallpapers",
    id = 468469, badge = "532385", published = "10/6/2024 3:05:12 PM", modified = "12/19/2024 1:52:30 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(wallpaper()) == 0x06 && wallpaper() == 0x07
)

achievement(
    title = "Art Swap!", points = 1,
    description = "Swap between all Paintings",
    id = 468470, badge = "532386", published = "10/6/2024 3:05:13 PM", modified = "12/19/2024 1:52:30 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(picture_next_to_the_door()) == 0x04 &&
              picture_next_to_the_door() == 0x05
)

achievement(
    title = "Six Styles, One Table", points = 2,
    description = "Try every tablecloth option",
    id = 468474, badge = "532387", published = "10/6/2024 3:05:14 PM", modified = "12/21/2024 12:06:05 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              tally(6, once(prev(tablecloth()) != 0x01 && tablecloth() == 0x01),
                  once(prev(tablecloth()) != 0x02 && tablecloth() == 0x02),
                  once(prev(tablecloth()) != 0x03 && tablecloth() == 0x03),
                  once(prev(tablecloth()) != 0x04 && tablecloth() == 0x04),
                  once(prev(tablecloth()) != 0x05 && tablecloth() == 0x05),
                  once(prev(tablecloth()) != 0x06 && tablecloth() == 0x06)
              ) && never(game_state() == 0x00)
)

achievement(
    title = "Frequency Hunter", points = 3,
    description = "Tune in to all radio stations",
    id = 468473, badge = "532388", published = "10/6/2024 3:05:13 PM", modified = "12/19/2024 1:52:31 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(radio_station()) == 0x07 &&
              radio_station() == 0x08
)

achievement(
    title = "Spring Bulbs!", points = 1,
    description = "Grow yellow tulips in the kitchen",
    id = 470219, badge = "533157", published = "10/10/2024 10:53:04 PM", modified = "12/19/2024 1:52:31 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(flowers_tulips_yellow_variant()) == 0x1C &&
              flowers_tulips_yellow_variant() == 0x1D
)

achievement(
    title = "Blooming Beauties", points = 1,
    description = "Grow daisy flowers in the kitchen",
    id = 470217, badge = "533155", published = "10/10/2024 10:53:03 PM", modified = "12/19/2024 1:52:31 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(flowers_daisy_variant()) == 0x1E &&
              flowers_daisy_variant() == 0x1F
)

achievement(
    title = "Lily of the Day", points = 1,
    description = "Grow white lily flowers in the kitchen",
    id = 470218, badge = "533156", published = "10/10/2024 10:53:04 PM", modified = "12/19/2024 1:52:31 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(flowers_white_lily_variant()) == 0x2C &&
              flowers_white_lily_variant() == 0x34
)

achievement(
    title = "Red Roses Too!", points = 1,
    description = "Grow red roses in the kitchen",
    id = 468472, badge = "533154", published = "10/6/2024 3:05:13 PM", modified = "12/19/2024 1:52:32 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A && prev(flowers_rose_red_variant()) == 0x1E &&
              flowers_rose_red_variant() == 0x1D
)

achievement(
    title = "[Make Breakfast] Eggcellent Breakfast", points = 2, type="progression",
    description = "Cook and serve plates with fried eggs only to Mickey and Minnie",
    id = 468530, badge = "532391", published = "10/6/2024 3:05:32 PM", modified = "12/23/2024 6:38:48 PM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && make_breakfast_make_a_cake_dialogs() == 0xF831 &&
              prev(dialog_handler()) == 0x02 && dialog_handler() == 0xFFFF
)

achievement(
    title = "[Make Breakfast] Bacons, Bacons and Bacons", points = 2,
    description = "Cook and serve bacon, filling all 3 slots in each plate to Mickey and Minnie",
    id = 468533, badge = "532392", published = "10/6/2024 3:05:32 PM", modified = "12/23/2024 6:38:48 PM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && make_breakfast_make_a_cake_dialogs() == 0xE8CE &&
              prev(dialog_handler()) == 0x02 && dialog_handler() == 0xFFFF
)

achievement(
    title = "[Make Breakfast] All Pancakes, No Fuss", points = 2,
    description = "Cook and serve plates with pancakes only to Mickey and Minnie",
    id = 468531, badge = "532393", published = "10/6/2024 3:05:32 PM", modified = "12/23/2024 6:38:48 PM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && make_breakfast_make_a_cake_dialogs() == 0xFA3F &&
              prev(dialog_handler()) == 0x02 && dialog_handler() == 0xFFFF
)

achievement(
    title = "[Make Breakfast] Plate It Up!", points = 4,
    description = "Cook and serve two plates, each filled with at least 10 pieces of a variety of bacon, eggs, and pancakes to Mickey and Minnie",
    id = 468532, badge = "532394", published = "10/6/2024 3:05:32 PM", modified = "12/23/2024 6:38:48 PM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && make_breakfast_make_a_cake_dialogs() == 0xA61 &&
              prev(dialog_handler()) == 0x02 && dialog_handler() == 0xFFFF
)

achievement(
    title = "[Make a Cake] Plain and Perfect", points = 3, type="progression",
    description = "Bake and serve a plain cake to Mickey and Minnie",
    id = 468518, badge = "531400", published = "10/6/2024 3:05:28 PM", modified = "12/19/2024 1:52:34 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0x96A8 &&
              make_breakfast_make_a_cake_dialogs() == 0x9BD8
)

achievement(
    title = "[Make a Cake] Vanilla Cake", points = 3,
    description = "Bake and serve a cake with vanilla frosting/icing to Mickey and Minnie",
    id = 468519, badge = "531401", published = "10/6/2024 3:05:28 PM", modified = "12/19/2024 1:52:34 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xCC95 &&
              make_breakfast_make_a_cake_dialogs() == 0xD1C5
)

achievement(
    title = "[Make a Cake] Chocolaty Cake", points = 3,
    description = "Bake and serve a chocolate cake or a cake with chocolate frosting/icing to Mickey and Minnie",
    id = 468520, badge = "531402", published = "10/6/2024 3:05:28 PM", modified = "12/19/2024 1:52:34 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A &&
              ((prev(make_breakfast_make_a_cake_dialogs()) == 0x96FF && make_breakfast_make_a_cake_dialogs() == 0x9CF2) ||
               (prev(make_breakfast_make_a_cake_dialogs()) == 0xBAF6 && make_breakfast_make_a_cake_dialogs() == 0xC026))
)

achievement(
    title = "[Make a Cake] Strawberry Cake", points = 3,
    description = "Bake and serve a strawberry cake or a cake with strawberry frosting/icing to Mickey and Minnie",
    id = 468521, badge = "531403", published = "10/6/2024 3:05:28 PM", modified = "12/19/2024 1:52:35 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A &&
              ((prev(make_breakfast_make_a_cake_dialogs()) == 0xBCEB && make_breakfast_make_a_cake_dialogs() == 0xC21B) ||
               (prev(make_breakfast_make_a_cake_dialogs()) == 0xC827 && make_breakfast_make_a_cake_dialogs() == 0xCD57))
)

achievement(
    title = "[Make a Cake] Lemon Cake", points = 3,
    description = "Bake and serve a lemon cake or a cake with lemon frosting/icing to Mickey and Minnie",
    id = 468522, badge = "531404", published = "10/6/2024 3:05:29 PM", modified = "12/19/2024 1:52:35 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A &&
              ((prev(make_breakfast_make_a_cake_dialogs()) == 0xACE0 && make_breakfast_make_a_cake_dialogs() == 0xB210) ||
               (prev(make_breakfast_make_a_cake_dialogs()) == 0xB05F && make_breakfast_make_a_cake_dialogs() == 0xB58F))
)

achievement(
    title = "[Make a Cake] Checkmate Cake", points = 3,
    description = "Bake and serve a checkered cake to Mickey and Minnie",
    id = 468523, badge = "531405", published = "10/6/2024 3:05:29 PM", modified = "12/21/2024 2:33:34 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xA7CE &&
              make_breakfast_make_a_cake_dialogs() == 0xACFE
)

achievement(
    title = "[Make a Cake] Mickey on the Menu", points = 2,
    description = "Bake and serve a cake with Mickey's picture to Mickey and Minnie",
    id = 468524, badge = "531406", published = "10/6/2024 3:05:30 PM", modified = "12/19/2024 1:52:35 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xC4D4 &&
              make_breakfast_make_a_cake_dialogs() == 0xCA04
)

achievement(
    title = "[Make a Cake] A Cake Fit for Minnie", points = 2,
    description = "Bake and serve a cake with Minnie's picture to Mickey and Minnie",
    id = 468525, badge = "531407", published = "10/6/2024 3:05:31 PM", modified = "12/19/2024 1:52:35 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xAECC &&
              make_breakfast_make_a_cake_dialogs() == 0xB3FC
)

achievement(
    title = "[Make a Cake] Donald Takes the Cake", points = 2,
    description = "Bake and serve a cake with Donald's picture to Mickey and Minnie",
    id = 468526, badge = "531408", published = "10/6/2024 3:05:31 PM", modified = "12/19/2024 1:52:36 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xA2CB &&
              make_breakfast_make_a_cake_dialogs() == 0xA7FB
)

achievement(
    title = "[Make a Cake] A Portrait in Frosting", points = 2,
    description = "Bake and serve a cake with Daisy's picture to Mickey and Minnie",
    id = 468527, badge = "531409", published = "10/6/2024 3:05:31 PM", modified = "12/19/2024 1:52:37 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0xB1A5 &&
              make_breakfast_make_a_cake_dialogs() == 0xB6D5
)

achievement(
    title = "[Make a Cake] Goofy in Frosting", points = 2,
    description = "Bake and serve a cake with Goofy's picture to Mickey and Minnie",
    id = 468528, badge = "531410", published = "10/6/2024 3:05:31 PM", modified = "12/19/2024 1:52:37 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0x9614 &&
              make_breakfast_make_a_cake_dialogs() == 0x9B44
)

achievement(
    title = "[Make a Cake] A Cake for Pluto", points = 2,
    description = "Bake and serve a cake with Pluto's picture to Mickey and Minnie",
    id = 468529, badge = "531411", published = "10/6/2024 3:05:31 PM", modified = "12/19/2024 1:52:37 AM",
    trigger = game_state_2() == 0x12 && demo_mode() != 0x800A && prev(make_breakfast_make_a_cake_dialogs()) == 0x9715 &&
              make_breakfast_make_a_cake_dialogs() == 0x9C45
)

achievement(
    title = "Menu Master!", points = 5,
    description = "View every recipe in all categories of the recipe box without returning to the main menu",
    id = 468506, badge = "532390", published = "10/6/2024 3:05:23 PM", modified = "12/21/2024 2:33:34 AM",
    trigger = game_state() == 0x20 && demo_mode() != 0x800A &&
              measured(tally(30, once(prev(dialogs_interactions()) != 0x38 && dialogs_interactions() == 0x38),
                  once(prev(dialogs_interactions()) != 0xDE && dialogs_interactions() == 0xDE),
                  once(prev(dialogs_interactions()) != 0x1B1 && dialogs_interactions() == 0x1B1),
                  once(prev(dialogs_interactions()) != 0xAC && dialogs_interactions() == 0xAC),
                  once(prev(dialogs_interactions()) != 0x124 && dialogs_interactions() == 0x124),
                  once(prev(dialogs_interactions()) != 0x90 && dialogs_interactions() == 0x90),
                  once(prev(dialogs_interactions()) != 0x1CF && dialogs_interactions() == 0x1CF),
                  once(prev(dialogs_interactions()) != 0xCB && dialogs_interactions() == 0xCB),
                  once(prev(dialogs_interactions()) != 0x7E && dialogs_interactions() == 0x7E),
                  once(prev(dialogs_interactions()) != 0x1E8 && dialogs_interactions() == 0x1E8),
                  once(prev(dialogs_interactions()) != 0x1F5 && dialogs_interactions() == 0x1F5),
                  once(prev(dialogs_interactions()) != 0x119 && dialogs_interactions() == 0x119),
                  once(prev(dialogs_interactions()) != 0x136 && dialogs_interactions() == 0x136),
                  once(prev(dialogs_interactions()) != 0x21A && dialogs_interactions() == 0x21A),
                  once(prev(dialogs_interactions()) != 0x22F && dialogs_interactions() == 0x22F),
                  once(prev(dialogs_interactions()) != 0x56 && dialogs_interactions() == 0x56),
                  once(prev(dialogs_interactions()) != 0x252 && dialogs_interactions() == 0x252),
                  once(prev(dialogs_interactions()) != 0x01 && dialogs_interactions() == 0x01),
                  once(prev(dialogs_interactions()) != 0x69 && dialogs_interactions() == 0x69),
                  once(prev(dialogs_interactions()) != 0x201 && dialogs_interactions() == 0x201),
                  once(prev(dialogs_interactions()) != 0x19C && dialogs_interactions() == 0x19C),
                  once(prev(dialogs_interactions()) != 0x171 && dialogs_interactions() == 0x171),
                  once(prev(dialogs_interactions()) != 0x182 && dialogs_interactions() == 0x182),
                  once(prev(dialogs_interactions()) != 0x10C && dialogs_interactions() == 0x10C),
                  once(prev(dialogs_interactions()) != 0x24 && dialogs_interactions() == 0x24),
                  once(prev(dialogs_interactions()) != 0xBA && dialogs_interactions() == 0xBA),
                  once(prev(dialogs_interactions()) != 0xF6 && dialogs_interactions() == 0xF6),
                  once(prev(dialogs_interactions()) != 0x153 && dialogs_interactions() == 0x153),
                  once(prev(dialogs_interactions()) != 0x240 && dialogs_interactions() == 0x240),
                  once(prev(dialogs_interactions()) != 0x15 && dialogs_interactions() == 0x15))
              ) &&
              unless((game_state_2() == 0x04 || game_state_2() == 0x06 || game_state_2() == 0x07 ||
                  game_state_2() == 0x12 || game_state_2() == 0x09)
              ) && never(game_state_3() == 0x56)
)

achievement(
    title = "Chat with Mickey", points = 5,
    description = "Call and listen to all 3 of Mickey's dialogs without returning to the main menu",
    id = 468507, badge = "531389", published = "10/6/2024 3:05:24 PM", modified = "1/3/2025 11:59:58 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              measured(tally(3, once(prev(dialogs_interactions()) != 0x4A && dialogs_interactions() == 0x4A),
                  once(prev(dialogs_interactions()) != 0x4B && dialogs_interactions() == 0x4B),
                  once(prev(dialogs_interactions()) != 0x48 && dialogs_interactions() == 0x48))
              ) &&
              unless((game_state_2() == 0x06 || game_state_2() == 0x07 || game_state_2() == 0x0C ||
                  game_state_2() == 0x0F || game_state_2() == 0x10 || game_state_2() == 0x12 || game_state_2() == 0x09)
              ) && never(game_state_3() == 0x56)
)

achievement(
    title = "Calling Minnie", points = 5,
    description = "Call and listen to all 6 of Minnie's dialogs without returning to the main menu",
    id = 468508, badge = "531390", published = "10/6/2024 3:05:25 PM", modified = "1/3/2025 11:59:58 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              measured(tally(6, once(prev(dialogs_interactions()) != 0x32 && dialogs_interactions() == 0x32),
                  once(prev(dialogs_interactions()) != 0x33 && dialogs_interactions() == 0x33),
                  once(prev(dialogs_interactions()) != 0x34 && dialogs_interactions() == 0x34),
                  once(prev(dialogs_interactions()) != 0x35 && dialogs_interactions() == 0x35),
                  once(prev(dialogs_interactions()) != 0x36 && dialogs_interactions() == 0x36),
                  once(prev(dialogs_interactions()) != 0x37 && dialogs_interactions() == 0x37))
              ) &&
              unless((game_state_2() == 0x06 || game_state_2() == 0x07 || game_state_2() == 0x0C ||
                  game_state_2() == 0x0F || game_state_2() == 0x10 || game_state_2() == 0x12 || game_state_2() == 0x09)
              ) && never(game_state_3() == 0x56)
)

achievement(
    title = "Mickey & Minnie's Tip Line", points = 5,
    description = "Call and listen to all 6 tips from Mickey and Minnie without returning to the main menu",
    id = 468509, badge = "531391", published = "10/6/2024 3:05:25 PM", modified = "1/3/2025 11:59:59 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              measured(tally(6, once(prev(dialogs_interactions()) != 0x11 && dialogs_interactions() == 0x11),
                  once(prev(dialogs_interactions()) != 0x12 && dialogs_interactions() == 0x12),
                  once(prev(dialogs_interactions()) != 0x13 && dialogs_interactions() == 0x13),
                  once(prev(dialogs_interactions()) != 0x14 && dialogs_interactions() == 0x14),
                  once(prev(dialogs_interactions()) != 0x15 && dialogs_interactions() == 0x15),
                  once(prev(dialogs_interactions()) != 0x16 && dialogs_interactions() == 0x16))
              ) &&
              unless((game_state_2() == 0x06 || game_state_2() == 0x07 || game_state_2() == 0x0C ||
                  game_state_2() == 0x0F || game_state_2() == 0x10 || game_state_2() == 0x12 || game_state_2() == 0x09)
              ) && never(game_state_3() == 0x56)
)

achievement(
    title = "Six Fun Calls", points = 5,
    description = "Answer all 6 callbacks from Mickey and Minnie after leaving voicemails without returning to the main menu",
    id = 468510, badge = "531392", published = "10/6/2024 3:05:25 PM", modified = "1/3/2025 11:59:59 AM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              measured(tally(6, once(prev(dialogs_interactions()) != 0x2F && dialogs_interactions() == 0x2F),
                  once(prev(dialogs_interactions()) != 0x30 && dialogs_interactions() == 0x30),
                  once(prev(dialogs_interactions()) != 0x31 && dialogs_interactions() == 0x31),
                  once(prev(dialogs_interactions()) != 0x45 && dialogs_interactions() == 0x45),
                  once(prev(dialogs_interactions()) != 0x46 && dialogs_interactions() == 0x46),
                  once(prev(dialogs_interactions()) != 0x47 && dialogs_interactions() == 0x47))
              ) &&
              unless((game_state_2() == 0x06 || game_state_2() == 0x07 || game_state_2() == 0x0C ||
                  game_state_2() == 0x0F || game_state_2() == 0x10 || game_state_2() == 0x12 || game_state_2() == 0x09)
              ) && never(game_state_3() == 0x56)
)

achievement(
    title = "[Radio Segments] All Ads, All Ears", points = 5,
    description = "Listen to any 'Advertisements' radio segments",
    id = 468584, badge = "531489", published = "10/6/2024 7:54:18 PM", modified = "12/23/2024 11:22:58 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) != 0x60 && dialogs_interactions() == 0x60) ||
               (prev(dialogs_interactions()) != 0x61 && dialogs_interactions() == 0x61) ||
               (prev(dialogs_interactions()) != 0x62 && dialogs_interactions() == 0x62) ||
               (prev(dialogs_interactions()) != 0x63 && dialogs_interactions() == 0x63) ||
               (prev(dialogs_interactions()) != 0x64 && dialogs_interactions() == 0x64))
)

achievement(
    title = "[Radio Segments] Daily Forecasts", points = 5,
    description = "Listen to any 'Weather Reports' radio segments",
    id = 468586, badge = "531491", published = "10/6/2024 7:54:19 PM", modified = "12/23/2024 11:22:59 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) != 0x65 && dialogs_interactions() == 0x65) ||
               (prev(dialogs_interactions()) != 0x66 && dialogs_interactions() == 0x66))
)

achievement(
    title = "[Radio Segments] Important Alerts", points = 5,
    description = "Listen to any 'Bulletins' radio segments",
    id = 468585, badge = "531490", published = "10/6/2024 7:54:19 PM", modified = "12/23/2024 11:22:59 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) != 0x73 && dialogs_interactions() == 0x73) ||
               (prev(dialogs_interactions()) != 0x74 && dialogs_interactions() == 0x74) ||
               (prev(dialogs_interactions()) != 0x75 && dialogs_interactions() == 0x75) ||
               (prev(dialogs_interactions()) != 0x76 && dialogs_interactions() == 0x76))
)

achievement(
    title = "[Radio Segments] Jokes of the Day", points = 5,
    description = "Listen to any 'Comedy Cuisine' radio segments",
    id = 468517, badge = "531492", published = "10/6/2024 3:05:28 PM", modified = "12/23/2024 11:22:59 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) != 0x67 && dialogs_interactions() == 0x67) ||
               (prev(dialogs_interactions()) != 0x68 && dialogs_interactions() == 0x68) ||
               (prev(dialogs_interactions()) != 0x69 && dialogs_interactions() == 0x69) ||
               (prev(dialogs_interactions()) != 0x6A && dialogs_interactions() == 0x6A) ||
               (prev(dialogs_interactions()) != 0x6B && dialogs_interactions() == 0x6B) ||
               (prev(dialogs_interactions()) != 0x6C && dialogs_interactions() == 0x6C))
)

achievement(
    title = "[Radio Segments] News Flash!", points = 5,
    description = "Listen to any 'News Flash' radio segments",
    id = 468583, badge = "531488", published = "10/6/2024 7:54:18 PM", modified = "12/23/2024 11:22:59 PM",
    trigger = game_state_2() == 0x04 && demo_mode() != 0x800A &&
              ((prev(dialogs_interactions()) != 0x5F && dialogs_interactions() == 0x5F) ||
               (prev(dialogs_interactions()) != 0x6D && dialogs_interactions() == 0x6D) ||
               (prev(dialogs_interactions()) != 0x6E && dialogs_interactions() == 0x6E) ||
               (prev(dialogs_interactions()) != 0x6F && dialogs_interactions() == 0x6F) ||
               (prev(dialogs_interactions()) != 0x70 && dialogs_interactions() == 0x70) ||
               (prev(dialogs_interactions()) != 0x71 && dialogs_interactions() == 0x71) ||
               (prev(dialogs_interactions()) != 0x72 && dialogs_interactions() == 0x72) ||
               (prev(dialogs_interactions()) != 0x77 && dialogs_interactions() == 0x77))
)

rich_presence_conditional_display(game_state_3() == 0x56, "{0}",
    rich_presence_lookup("Menu", game_state_3(), MenuLookup)
)

rich_presence_conditional_display(demo_mode() == 0x800A, "{0}",
    rich_presence_lookup("Demo", demo_mode(), DemoLookup)
)

rich_presence_conditional_display((game_state() == 0x80 || game_state() == 0x220 || game_state() == 0x320 || radio_station() == 0x00) &&
    _8_bit_bitflags_events_2_radio_off() == 0x01, "{0} | 📻{1}",
    rich_presence_lookup("Mode", game_state(), ModeLookup),
    rich_presence_lookup("Radio", radio_station_word(), RadioLookup)
)

rich_presence_conditional_display((game_state() == 0x80 || game_state() == 0x220 || game_state() == 0x320) &&
    _8_bit_bitflags_events_2_radio_off() == 0x00, "{0} | {1}",
    rich_presence_lookup("Mode", game_state(), ModeLookup),
    rich_presence_lookup("RadioOff", _8_bit_bitflags_events_2(), RadioOffLookup)
)

rich_presence_display("Loading...")
