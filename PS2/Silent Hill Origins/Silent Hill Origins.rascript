// Silent Hill: Origins
// #ID = 2126

// $3386B8: [8-bit] Cutscene Active Flag
//          0x00 = True
//          0x01 = False
function cutscene_active_flag() => byte(0x3386B8)

// $3389F0: [8-bit] Summary Screen Active Flag
//          0x00 = False
//          0x01 = True
function summary_screen_active_flag() => byte(0x3389F0)

// $338B2C: [32-bit Pointer] Player Data
//          +0x6c | Pointer to Weapon Data
//          .+0x50 | [8-bit] Weapon Type
//          0x02 = Melee
//          0x03 = Firearm
//          .+0x54 | [8-bit] Weapon Action Animation
//          0x03 = Pistols
//          0x04 = Shotgun
//          0x05 = Hunting Rifle
//          0x06 = Kitchen Knife, Razor, Scalpel, Screwdriver
//          0x07 = Baton, Great Cleaver, Jagged Wood, Katana, Meat Hook, Meat Cleaver, Poker
//          0x08 = Fire Axe, Hammer, Tire Iron Shovel, Wrench
//          0x09 = Broken Pole, Drip Stand, Light Stand, Meat Gaff, Pitchfork, Pool Cue, Spear
//          0x0a = Throwables
//          0x0b = Assault Rifle, Tesla Rifle
//          0x10 = Moon Gauntlets
//          .+0x58 | [32-bit] Weapon Durability
//          0x00 = Tesla Rifle
//          0xf423f = Fire Axe, Great Cleaver, Moon Gauntlets
//          .+0x5c | [32-bit float] Weapon ID
//          12.0 = Assault Rifle
//          15.0 = Broken Pole, Drip Stand, Light Stand, Tesla Rifle
//          17.0 = Scalpel
//          18.0 = Baton
//          20.0 = Hammer, Jagged Wood, Target Pistol, Razor, Screwdriver, Tire Iron, Spear
//          25.0 = Poker, Pitchfork, Shovel, Service Pistol
//          30.0 = Kitchen Knife, Meat Hook, Wrench, Meat Gaff
//          40.0 = Crate, Katana, Meat Cleaver, Fire Axe
//          50.0 = Table Lamp, Moon Gauntlets
//          65.0 = Redeemer Pistol
//          75.0 = Alcohol Bottle, Toaster
//          80.0 = Hunting Rifle
//          90.0 = Shotgun
//          100.0 = Filing Cabinet, Iron Weights, Portable TV, Typewriter, Toolbox
//          190.0 = Great Cleaver
//          ..+0x60 | [32-bit] Magazine Capacity
//          0x02 = Shotgun
//          0x04 = Hunting Rifle
//          0x06 = Target Pistol, Redeemer
//          0x08 = Service Pistol
//          0x12 = Assault Rifle
//          0xf423f = Unlockable Weapons
//          ..+0x64 | [8-bit] Firearms Ammo Count
//          ...+0xd4 | Pointer to Flashlight
//          ...+0xd8 | Pointer to Radio
//          ..+0x68 | [8-bit] Flashlight / Radio Active Flag
//          0x00 = False
//          0x01 = True
function player_data() => dword(0x338B2C)

RadioLookup = {
    0x00: "Off",
    0x01: "On",
}
function pointer_to_weapon_data() => dword((player_data() & 0x1FFFFFF) + 0x00006C)

// $338BC4: [32-bit Pointer] Bosses Data (Thanks to Homuki for finding it)
//          +0x5cc | Pointer to Bosses Health
//          .+0xc1c | [32-bit float] Boss Health
//          ───────────────── The Butcher ─────────────────
//          375.0 = Max HP
//          0.0 = Dead
//          ───────────────── Sad Daddy ─────────────────
//          500.0 = Max HP
//          165.0 = Dead
function bosses_data() => dword(0x338BC4)
function pointer_to_bosses_health() => dword((bosses_data() & 0x1FFFFFF) + 0x0005CC)

// $339C74: [8-bit] Game State
//          0x00 = Paused
//          0x01 = Menus
//          0x02 = Inventory, Reading Note, Solving Puzzles
//          0x03 = Cutscene Playing
//          0x04 = In-game
function game_state() => byte(0x339C74)

// $33FAF0: [8-bit] Current Player Location 1/4
//          Note: Use with 0x340510 in case locations share the same ID.
//          0x02 = Motel: Kitchen
//          0x03 = Motel: Access outside Maintenance Room
//          0x06 = Motel: Access outside Staff Room
function current_player_location_1_4() => byte(0x33FAF0)

// $3400F0: [8-bit] Current Player Location 2/4
//          Note: Use with 0x340510 in case locations share the same ID.
//          0x00 = Motel: Underneath Room 500 (OW boss)
//          └────> Sanitarium: E-Stairs, BE Storage (N/OW)
//          0x01 = Sanitarium: Female Treat (OW)
//          0x03 = Motel: Access outside Maintenance Room & outside Staff Room
//          0x06 = Motel: Pool
//          0x09 = Town
//          0x0b = Town (Start of game)
function current_player_location_2_4() => byte(0x3400F0)

// $3404B0: [8-bit] Current Player Location 3/4
//          Note: Use with 0x340510 in case locations share the same ID.
//          0x00 = Theater: Dr's Office, Lobby
//          0x01 = Theater: Lighting Box
//          └────> Sanitarium E-Strais, Female Treat (OW), BE Storage (N/OW)
//          0x02 = Theater: Inside Backstage (OW Boss)
//          └────> Motel: Access outside Maintenance Room & outside Staff Room
function current_player_location_3_4() => byte(0x3404B0)

// $340510: [8-bit] Current Player Location 4/4
//          Note: Shared across multiple maps. Abbr.:
//          | W - West |  B - Basement  | OW - Otherworld
//          | E - East |  2 - 2nd Floor | N - Normal
//          
//          0x00 = Room Transition
//          0x01 = Hospital: Lobby (OW)
//          └────> Sanitarium: E Solarium/2E Storage/BE Storage, Female Dorm 3 (OW)
//          └────> Greenfield Apartments 2F
//          └────> Theater: Balcony/Orchestra Storage, Stairs/Hall (N/OW), 2-Stairs (OW after totems door)
//          └────> Public Records Office
//          └────> Motel: Rm 102/106/201/302/312/316. Rm 112/212/309/500 (OW), Rm 209 (N/OW)
//          └────> Ending: Halls/Dark Town/Antique Shop Stairs
//          0x02 = Hospital: Exam Room, 2-Hall (OW)
//          └────> Sanitarium: E Storage/Dr's Office, Lobby/W Day Room/2E-Hall/E-W Stairs (OW), BW-Hall (N/OW)
//          └────> Town/Greenfield Apts/General Store
//          └────> Theater: Lighting Box/Stage Office/Hall, Director's Office (OW)
//          └────> Motel: Manager Office/Rm 111/108, Access/Nero/Maintenance Corridor/Rm 102/301 (OW), Diner (N/OW)
//          └────> Ending: Halls
//          0x03 = Hospital: E Stairs, 2-Hall (N/OW)
//          └────> Sanitarium: W Solarium/Patient Belongings/2E-Hall/Female Treat/B-Hall/BW Storage, E-Hall (OW)
//          └────> Lumber Yard
//          └────> Theater: Stage/Director's Office/Hall
//          └────> Motel: Game Room/Rm 503, King Suite (OW)
//          └────> Ending: Halls/Dark Town/Antique Shop
//          0x04 = Hospital: Staff Lounge/Hall, 2 Room 202 (OW)
//          └────> Sanitarium: E Female Dorm 5/E-Hall/E Stairs/BE-W-Hall, Laundry/W-Hall/Male-Female Seclusion (OW)
//          └────> Theater: 2-Hall/Mens Dressing Room, Scenery Room (Inside Library Stage OW)
//          └────> Motel: Access, Rose Suite (OW)
//          └────> Ending: Antique Shop
//          0x05 = Intro: Outside Gillespie House Cutscene
//          └────> Butcher's Shop
//          └────> Sanitarium: W-Hall/E Stairs, BE Storage (N/OW), 2E Female Treat/2E Archive/BW Storage (OW)
//          └────> Theater: 2F Costume Storage, Mens Dressing Room (OW), Stage (OW)
//          └────> Motel: Cleopatra/Access, Rm 306 (N/OW)
//          0x06 = Hospital: Lobby (After Straightjacket fight)
//          └────> Town/Butcher's Shop 2nd room
//          └────> Sanitarium: E-Hall/2 Lobby/2E Female Hydro-Therapy/Archive/BE Pipe Room, Mirror Room (OW)
//          └────> Theater: Storage, 2F Costume Storage (OW), Scenery Room (Inside Forest Stage OW)
//          0x07 = Hospital: Room 204/Dr's Office (OW boss)
//          └────> Town
//          └────> Sanitarium: E-Hall/W Stairs
//          └────> Theater: Auditorium/Hallway, Scenery Room (Inside Cave Stage OW boss), Lobby (ending)
//          └────> Motel: Pool/Rose Suite, Underneath Rm 500 (OW boss)
//          0x08 = Hospital: Women's Restroom
//          └────> Sanitarium: BE Pipe Room, W Infirmary/W Stairs (OW)
//          └────> Andy's Bookstore
//          └────> Motel: Maintenance Room/Rm 503 (OW), Access (N/OW)
//          0x09 = Intro: Gillespie House 2F
//          └────> Hospital: Room 205 (OW)
//          └────> Sanitarium: 2E TB WARD, Patient Belongings (OW)
//          └────> Town
//          └────> Motel: Access (OW)
//          └────> Ending: Alessa Boss Fight
//          0x0a = Hospital: Women's Restroom (OW)
//          └────> Sanitarium: E Solarium/Lobby (ending)
//          └────> Motel: Maintenance Rm, Pool (OW)
//          0x0b = Intro: Gillespie House Lobby
//          └────> Town
//          └────> Motel: Access
//          0x0c = Intro: Gillespie House
//          └────> Hospital: Lobby/2-Hall
//          └────> Sanitarium: E-Hall (OW)
//          0x0d = Hospital: Lobby, Hall (OW)
//          └────> Theater: Curtain Control
//          └────> Motel: Access/Kitchen
//          0x0e = Sanitarium: E Mirror Room
//          0x0f = Maintenance Corridor/Laundromat
//          0x10 = Hospital: Exam Room
//          └────> Town
//          0x11 = Hospital: Hall
//          └────> Sanitarium: E Room 05 (OW boss)
//          └────> Theater: Lobby
//          0x12 = Hospital: Room 205
//          └────> Motel: Employee Parking
//          0x13 = Hospital: Elevator
//          └────> Ending: Flauros Puzzle Rm
//          0x15 = Intro: Road to Gillespie House
//          0x18 = Sanitarium: Lobby
//          └────> Motel: Reception
//          0x1b = Sanitarium: Lobby
//          0x21 = Theater: 2F Door Puzzle (OW)
//          0x52 = Theater: 2F Catwalk
//          0x3c = Theater: Stage
function current_player_location_4_4() => byte(0x340510)

// $344960: [32-bit Pointer] Peephole Room 503 (The Butcher)
//          +0xfc | [32-bit float] Peephole Camera X
//          0.0 = Default
//          -0.0 = Looking
//          15.0 = Max Left View
//          .+0xf8 | [32-bit float] Peephole Camera Y
function peephole_room_503() => dword(0x344960)
function peephole_camera_x() => float((peephole_room_503() & 0x1FFFFFF) + 0x0000FC)

// $345050: [32-bit Pointer] Boss Health
//          +0xc1c | [32-bit float] Boss Health
//          200.0 = Straightjacket Max HP
//          375.0 = Momma Max HP
//          5000.0 = Alessa's Dream (The Demon) Max HP
//          └──────> 4250.0 = Boss Dead
function boss_health_2() => dword(0x345050)
function boss_health() => float((boss_health_2() & 0x1FFFFFF) + 0x000C1C)

// $345054: [32-bit Pointer] Caliban Health
//          +0xc1c | [32-bit float] Caliban Health
//          450.0 = Caliban Max HP
function caliban_health_2() => dword(0x345054)
function caliban_health() => float((caliban_health_2() & 0x1FFFFFF) + 0x000C1C)

// $345150: [8-bit] Item Count in Location
//          Note: Each room starts with a value that decreases when you collect items like notes and guns (excluding maps). The starting value doesn't indicate the exact number of items in the room, e.g. a room with a starting value of 0x08 might still have 2 items.
function item_count_in_location() => byte(0x345150)

// $345154: [32-bit Pointer] Targeted Object (Dynamic based on what Travis is targeting)
//          +0xf0 | [8-bit] Items Collected Flag
//          0x00 = False
//          0x01 = True
function targeted_object() => dword(0x345154)
function items_collected_flag() => byte((targeted_object() & 0x1FFFFFF) + 0x0000F0)

// $345198: [10 bytes ASCII] Location ID 1/2
//          Intro = Road to Gillespie House | 0x72746e49
//          Dahlia = Gillespie House        | 0x6c686144
//          Town = Town                     | 0x6e776f54
//          Hospital = Hospital, Flauros Puzzle Ending   | 0x70736f48
//          Blank = 1st Boss in Hospital, Greenfield Apt | 0x6e616c42
//          Sanitarium = Cedar Grove Sanitarium          | 0x696e6153
//          Theatre = Artaud Theater         | 0x61656854
//          Theatre_O = Theater backstage OW | 0x61656854, 0x5f657274, 0x4f
//          Theatre_E = Theater Ending Lobby | 0x61656854, 0x5f657274, 0x45
//          Motel = Riverside Motel | 0x65746f4d
//          DarkTown = Nowhere      | 0x6b726144
function _10_bytes_ascii_location_id_1_2() => dword(0x345198)

// $3451EC: [8-bit] Cutscene/FMV Playing Flag
//          0x00 = False
//          0x03 = True
function cutscene_fmv_playing_flag() => byte(0x3451EC)

// $345210: [32-bit float] Player Position Z (Forward/Backward)
function player_position_z() => float(0x345210)

// $345214: [32-bit float] Player Position Y (Height/Elevation)
function player_position_y() => float(0x345214)

// $345218: [32-bit float] Player Position X (Left/Right)
function player_position_x() => float(0x345218)

// $34524C: [8-bit] Total Items in Inventory
//          0x03 = Default value (flashligh, radio, lucky quarter)
function total_items_in_inventory() => byte(0x34524C)

// $34526C: [8-bit] Total Melee Weapons in Inventory
//          0x01 = Default
function total_melee_weapons_in_inventory() => byte(0x34526C)

// $34527C: [8-bit] Total Firearms in Inventory
function total_firearms_in_inventory() => byte(0x34527C)

// $34528C: [8-bit] Total Notes Collected
function total_notes_collected() => byte(0x34528C)

// $3452AC: [10 bytes ASCII] Location ID 2/2
//          Intro = Road to Gillespie House | 0x72746e49
//          Dahlia = When Alessa is held in Gillespie House | 0x6c686144
//          Town = Town | 0x6e776f54
//          Hospital = Hospital, Flauros Puzzle Ending | 0x70736f48
//          Blank = 1st Boss in Hospital, Greenfield Apt | 0x6e616c42
//          Hospital_E = Hospital Ending
//          Sanitarium = Cedar Grove Sanitarium | 0x696e6153
//          Theatre = Artaud Theater | 0x61656854
//          Theatre_O = Theater backstage OW | 0x61656854, 0x5f657274, 0x4f
//          Theatre_E = Theater Ending Lobby | 0x61656854, 0x5f657274, 0x45
//          Motel = Riverside Motel | 0x65746f4d
//          DarkTown = Nowhere | 0x6b726144
//          NoMap = Antique Shop Stairs, Alessa Boss | 0x614d6f4e
function _10_bytes_ascii_location_id_2_2() => dword(0x3452AC)

// $346BE4: [32-bit Pointer] Puzzles
//          
//          ───────────────── Medical Icebox ─────────────────
//          .+0x270 | [8-bit] Medical Icebox - Pressing Toggle Flag
//          .+0x274 | [8-bit] Medical Icebox - Key Pressed
//          .+0x278 | [8-bit] Medical Icebox - 1st Entry
//          0x00-0x09 = 1-0
//          0x0b = Default
//          .+0x27c | [8-bit] Medical Icebox - 2nd Entry
//          .+0x280 | [8-bit] Medical Icebox - 3rd Entry
//          .+0x284 | [8-bit] Medical Icebox - 4th Entry
//          .+0x288 | [8-bit] Medical Icebox - 5th Entry
//          .+0x28c | [8-bit] Medical Icebox - 6th Entry
//          .+0x290 | [8-bit] Medical Icebox - Unlocking Toggle Flag
//          .+0x294 | [8-bit] Medical Icebox - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x298 | [32-bit float] Medical Icebox - Unlock Timer
//          ───────────────── Plastic Anatomy Doll ─────────────────
//          .+0x28c | [8-bit] Doll - Liver Inserted Flag
//          .+0x290 | [8-bit] Doll - Liver Held Flag
//          .+0x2d0 | [8-bit] Doll - Lungs Inserted Flag
//          .+0x2d4 | [8-bit] Doll - Lungs Held Flag
//          ..+0x314 | [8-bit] Doll - Stomach Inserted Flag
//          ..+0x318 | [8-bit] Doll - Stomach Held Flag
//          ..+0x358 | [8-bit] Doll - Heart Inserted Flag
//          ..+0x35c | [8-bit] Doll - Heart Held Flag
//          ..+0x39c | [8-bit] Doll - Intestine Inserted Flag
//          ..+0x3a0 | [8-bit] Doll - Intestine Held Flag
//          ..+0x3b8 | [8-bit] Doll - Selected Object
//          ..+0x3bc | [8-bit] Doll - Held Object Flag
//          0x00 = False
//          0x01 = True
//          ..+0x3c0 | [8-bit] Doll - Unlock Flag
//          0x00 = False
//          0x01 = True
//          ..+0x3c4 | [8-bit] Doll - Unlocking Toggle Flag
//          ..+0x3d8 | [32-bit float] Doll - Unlock Timer
//          ───────────────── Iron Lung ─────────────────
//          .+0x268 | [8-bit] Iron Lung - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x274 | [8-bit] Iron Lung - 1st Valve
//          0x00 = Off
//          0x19 = 1/4
//          0x32 = 2/4
//          0x4b = 3/4
//          0x64 = 4/4
//          .+0x278 | [8-bit] Iron Lung - 2nd Valve
//          .+0x27c | [8-bit] Iron Lung - 3rd Valve
//          .+0x280 | [8-bit] Iron Lung - 4th Valve
//          .+0x284 | [8-bit] Iron Lung - 5th Valve
//          .+0x288 | [8-bit] Iron Lung - Selected Valve
//          .+0x28c | [8-bit] Iron Lung - Pressing Toggle Flag
//          .+0x2a0 | [8-bit] Iron Lung - Reset Indicator
//          .+0x2a4 | [8-bit] Iron Lung - Unlocking Toggle Flag
//          .+0x2a8 | [32-bit float] Iron Lung - Unlock Timer
//          ───────────────── Pill Cabinet ─────────────────
//          .+0x268 | [8-bit] Pill Cabinet - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x26c | [8-bit] Pill Cabinet - 1st Doll Pill Type Inserted
//          0x00 = Green
//          0x01 = Blue
//          0x02 = Red
//          0x03 = Yellow
//          0x05 = None
//          .+0x270 | [8-bit] Pill Cabinet - 2nd Doll Pill Type Inserted
//          .+0x274 | [8-bit] Pill Cabinet - 3rd Doll Pill Type Inserted
//          .+0x278 | [8-bit] Pill Cabinet - 4th Doll Pill Type Inserted
//          .+0x27c | [8-bit] Pill Cabinet - 5th Doll Pill Type Inserted
//          .+0x280 | [8-bit] Pill Cabinet - Pill Held Flag
//          .+0x284 | [8-bit] Pill Cabinet - Pill Type Selected
//          .+0x288 | [8-bit] Pill Cabinet - Unlocking Toggle Flag
//          .+0x28c | [32-bit float] Pill Cabinet - Unlock Timer
//          ───────────────── Spotlights Switch ─────────────────
//          .+0x268 | [8-bit] Spotlights Switch - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x270 | [8-bit] Spotlights - Switch Active Flag
//          .+0x274 | [8-bit] Spotlights - Switch Animation
//          0x00 = Off
//          0x01 = Pulling Down
//          0x02 = Error
//          0x03 = Pulling Up
//          .+0x278 | [32-bit float] Spotlights - Unlock Timer
//          .+0x27c | [8-bit] Spotlights - Active Indicator
//          0x00 = Off
//          0x01 = On (Blue Light On)
//          .+0x280 | [8-bit] Spotlights - Error Indicator
//          0x00 = Off
//          0x01 = Error (Red Light On)
//          .+0x288 | [32-bit float] Spotlights - Switch Pull Counter
//          ───────────────── Control Panel ─────────────────
//          .+0x270 | [8-bit] Stage Props - Bottom Lever Inserted Flag
//          .+0x274 | [8-bit] Exit Event Toggle Flag
//          .+0x278 | [8-bit] Stage Scenery - Top Lever Selected Scene Flag (Forest)
//          .+0x27c | [8-bit] Stage Scenery - Middle Lever Selected Scene Flag (Cave)
//          .+0x280 | [8-bit] Stage Scenery - Bottom Lever Selected Scene Flag (Library)
//          .+0x284 | [8-bit] Stage Props - Top Lever Selected Scene Flag (Library)
//          .+0x288 | [8-bit] Stage Props - Middle Lever Selected Scene Flag (Tree)
//          .+0x28c | [8-bit] Stage Props - Bottom Lever Selected Scene Flag (Costume)
//          .+0x290 | [8-bit] Stage - Switching Levers Toggle Flag
//          .+0x294 | [8-bit] Display Scenery Toggle Flag
//          .+0x298 | [32-bit float] Display Scenery Counter
//          .+0x29c | [32-bit float] Stage Scenery - Top Lever Interaction Status
//          .+0x2a0 | [32-bit float] Stage Scenery - Top Lever Active Counter
//          .+0x2a4 | [8-bit] Stage Scenery - Top Lever Toggle Flag
//          .+0x2a8 | [8-bit] Stage Scenery - Top Lever Active Flag
//          .+0x2ac | [32-bit float] Stage Scenery - Middle Lever Interaction Status
//          .+0x2b0 | [32-bit float] Stage Scenery - Middle Lever Active Counter
//          .+0x2b4 | [8-bit] Stage Scenery - Middle Lever Toggle Flag
//          .+0x2b8 | [8-bit] Stage Scenery - Middle Lever Active Flag
//          .+0x2bc | [32-bit float] Stage Scenery - Bottom Lever Interaction Status
//          .+0x2c0 | [32-bit float] Stage Scenery - Bottom Lever Active Counter
//          .+0x2c4 | [8-bit] Stage Scenery - Bottom Lever Toggle Flag
//          .+0x2c8 | [8-bit] Stage Scenery - Bottom Lever Active Flag
//          .+0x2cc | [32-bit float] Stage Props - Top Lever Interaction Status
//          .+0x2d0 | [32-bit float] Stage Props - Top Lever Active Counter
//          .+0x2d4 | [8-bit] Stage Props - Top Lever Toggle Flag
//          .+0x2d8 | [8-bit] Stage Props - Top Lever Active Flag
//          .+0x2dc | [32-bit float] Stage Props - Middle Lever Interaction Status
//          .+0x2e0 | [32-bit float] Stage Props - Middle Lever Active Counter
//          .+0x2e4 | [8-bit] Stage Props - Middle Lever Toggle Flag
//          .+0x2e8 | [8-bit] Stage Props - Middle Lever Active Flag
//          .+0x2ec | [32-bit float] Stage Props - Bottom Lever Interaction Status
//          .+0x2f0 | [32-bit float] Stage Props - Bottom Lever Active Counter
//          .+0x2f4 | [8-bit] Stage Props - Bottom Lever Toggle Flag
//          .+0x2f8 | [8-bit] Stage Props - Bottom Lever Active Flag
//          0x00 = False
//          0x01 = True
//          ───────────────── Cash Register ─────────────────
//          .+0x278 | [8-bit] Cash Register - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x27c | [8-bit] Cash Register - Unlocking Toggle Flag
//          .+0x280 | [8-bit] Cash Register - Pressing Toggle Flag
//          .+0x284 | [8-bit] Cash Register - Cash Drawer Open Flag
//          .+0x288 | [32-bit float] Cash Register - Unlock Timer
//          .+0x28c | [8-bit] Cash Register - Digit Number Pressed
//          .+0x290 | [8-bit] Cash Register - 1st Digit Slot
//          0x00-0x09 = 1-0
//          0x0a = Plus
//          0x0b = Minus
//          0x0c = Equal
//          0x0e = Default
//          .+0x294 | [8-bit] Cash Register - 2nd Digit Slot
//          .+0x298 | [8-bit] Cash Register - 3rd Digit Slot
//          ───────────────── Washing Machine ─────────────────
//          .+0x288 | [8-bit] Washing Machine - Turning Handle Held Flag
//          .+0x28c | [8-bit] Washing Machine - Power Button Light
//          .+0x290 | [8-bit] Washing Machine - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x294 | [8-bit] Puzzle: Washing Machine - Unlocking Toggle Flag
//          .+0x29c | [32-bit float] Washing Machine - Unlocking Timer
//          .+0x2a8 | [8-bit] Washing Machine - Selected Wash Method
//          0x00 = 1 Pre-Rinse
//          0x01 = 2 Soak
//          0x02 = 3 30 Degree Wash
//          0x03 = 4 60 Degree Wash
//          0x04 = 5 90 Degree Wash
//          0x05 = 6 Low Spin
//          0x06 = 7 Heavy Spin
//          0x07 = 8 Drain
//          .+0x2ac | [8-bit] Washing Machine - 4th Wash
//          .+0x2b0 | [8-bit] Washing Machine - 3rd Wash
//          .+0x2b4 | [8-bit] Washing Machine - 2nd Wash
//          .+0x2b8 | [8-bit] Washing Machine - 1st Wash
//          ───────────────── Rotary Calendar ─────────────────
//          .+0x278 | [8-bit] Rotary Calendar - Month Slot 1
//          0x00 = 0
//          0x01 = 1
//          .+0x27c | [8-bit] Rotary Calendar - Month Slot 2
//          0x00-0x09 = 0-9
//          .+0x280 | [8-bit] Rotary Calendar - Day Slot 1
//          0x00-0x03 = 0-3
//          .+0x284 | [8-bit] Rotary Calendar - Day Slot 2
//          0x00-0x09 = 0-9
//          .+0x288 | [8-bit] Rotary Calendar - Year Slot 1
//          0x00-0x09 = 0-9
//          .+0x28c | [8-bit] Rotary Calendar - Year Slot 2
//          .+0x290 | [8-bit] Rotary Calendar - Year Slot 3
//          .+0x294 | [8-bit] Rotary Calendar - Year Slot 4
//          .+0x298 | [8-bit] Rotary Calendar - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x29c | [8-bit] Rotary Calendar - Unlocking Toggle Flag
//          .+0x2a0 | [32-bit float] Rotary Calendar - Unlock Timer
//          .+0x2a4 | [8-bit] Rotary Calendar - Pressing Toggle Flag
//          .+0x2a8 | [8-bit] Rotary Calendar - Selected Slot
//          .+0x2ac | [8-bit] Rotary Calendar - Last Slot Number Pressed
//          ───────────────── Flauros ─────────────────
//          .+0x26c | [8-bit] Flauros - Unlock Flag
//          0x00 = False
//          0x01 = True
//          .+0x270 | [8-bit] Flauros - Unlocking Toggle Flag
//          .+0x27c | [32-bit float] Flauros - Unlock Timer
//          .+0x2f8 | [8-bit] Flauros - 4th Piece Attached Flag
//          0x00 = False
//          0x01 = True
//          ..+0x320 | [8-bit] Flauros - 2nd Piece Attached Flag
//          ..+0x348 | [8-bit] Flauros - 1st Piece Attached Flag
//          ..+0x370 | [8-bit] Flauros - 3rd Piece Attached Flag
//          ..+0x390 | [32-bit float] Flauros - Core Piece Rotation X
//          ..+0x394 | [32-bit float] Flauros - Core Piece Rotation Y
//          ..+0x3c4 | [8-bit] Flauros - Free Cursor Active Toggle
//          ───────────────── Settings ─────────────────
//          .+0x264 | [8-bit] Accolades Page / Tips Menu
//          0x01-0x0e = Accolades Page 1-14
//          0x01-0x0c = 1-12 Tips Menu Pages
//          .+0x268 | [8-bit] Accolades Pages Unlock Flag
//          0x00 = False
//          0x01 = True
function puzzles() => dword(0x346BE4)

// $6B3474: [8-bit] FPS (dev-only)
//          0x02 = 30fps
//          0x01 = 60fps
function fps_devonly() => byte(0x6B3474)

// $6BF9A0: [32-bit float] Total Enemies Killed using Melee Weapons
function total_enemies_killed_using_melee_weapons() => float(0x6BF9A0)

// $6BF9A4: [32-bit float] Total Enemies Killed using Firearms
function total_enemies_killed_using_firearms() => float(0x6BF9A4)

// $6BF9A8: [32-bit float] Total Enemies Killed using Fists
function total_enemies_killed_using_fists() => float(0x6BF9A8)

// $6BF9AC: [32-bit float] Total Items Collected
function total_items_collected() => float(0x6BF9AC)

// $6BF9B0: [32-bit float] Number of Map Views
function number_of_map_views() => float(0x6BF9B0)

// $6BF9B4: [32-bit float] Number of Times Saved
function number_of_times_saved() => float(0x6BF9B4)

// $6BF9B8: [32-bit float] Distance Walked
function distance_walked() => float(0x6BF9B8)

// $6BF9BC: [32-bit float] Total Game Time
function total_game_time() => float(0x6BF9BC)

// $6BF9C0: [32-bit float] Total Flashlight Use Time
function total_flashlight_use_time() => float(0x6BF9C0)

// $6BF9C4: [32-bit float] Number of Game Completions
function number_of_game_completions() => float(0x6BF9C4)

ModeLookup = {
    1: "• NG+",
    2: "• NG+",
    3: "• NG+",
    4: "• NG+",
    5: "• NG+",
    6: "• NG+",
    7: "• NG+",
    8: "• NG+",
    9: "• NG+",
    10: "• NG+",
    11: "• NG+",
    12: "• NG+",
    13: "• NG+",
    14: "• NG+",
    15: "• NG+",
    16: "• NG+",
    17: "• NG+",
    18: "• NG+",
    19: "• NG+",
    20: "• NG+",
    21: "• NG+",
    22: "• NG+",
    23: "• NG+",
    24: "• NG+",
    25: "• NG+",
    26: "• NG+",
    27: "• NG+",
    28: "• NG+",
    29: "• NG+",
    30: "• NG+",
    31: "• NG+",
    32: "• NG+",
    33: "• NG+",
    34: "• NG+",
    35: "• NG+",
    36: "• NG+",
    37: "• NG+",
    38: "• NG+",
    39: "• NG+",
    40: "• NG+",
    41: "• NG+",
    42: "• NG+",
    43: "• NG+",
    44: "• NG+",
    45: "• NG+",
    46: "• NG+",
    47: "• NG+",
    48: "• NG+",
    49: "• NG+",
    50: "• NG+",
    51: "• NG+",
    52: "• NG+",
    53: "• NG+",
    54: "• NG+",
    55: "• NG+",
    56: "• NG+",
    57: "• NG+",
    58: "• NG+",
    59: "• NG+",
    60: "• NG+",
    61: "• NG+",
    62: "• NG+",
    63: "• NG+",
    64: "• NG+",
    65: "• NG+",
    66: "• NG+",
    67: "• NG+",
    68: "• NG+",
    69: "• NG+",
    70: "• NG+",
    71: "• NG+",
    72: "• NG+",
    73: "• NG+",
    74: "• NG+",
    75: "• NG+",
    76: "• NG+",
    77: "• NG+",
    78: "• NG+",
    79: "• NG+",
    80: "• NG+",
    81: "• NG+",
    82: "• NG+",
    83: "• NG+",
    84: "• NG+",
    85: "• NG+",
    86: "• NG+",
    87: "• NG+",
    88: "• NG+",
    89: "• NG+",
    90: "• NG+",
    91: "• NG+",
    92: "• NG+",
    93: "• NG+",
    94: "• NG+",
    95: "• NG+",
    96: "• NG+",
    97: "• NG+",
    98: "• NG+",
    99: "• NG+",
    100: "• NG+",
    101: "• NG+",
    102: "• NG+",
    103: "• NG+",
    104: "• NG+",
    105: "• NG+",
    106: "• NG+",
    107: "• NG+",
    108: "• NG+",
    109: "• NG+",
    110: "• NG+",
    111: "• NG+",
    112: "• NG+",
    113: "• NG+",
    114: "• NG+",
    115: "• NG+",
    116: "• NG+",
    117: "• NG+",
    118: "• NG+",
    119: "• NG+",
    120: "• NG+",
    121: "• NG+",
    122: "• NG+",
    123: "• NG+",
    124: "• NG+",
    125: "• NG+",
    126: "• NG+",
    127: "• NG+",
    128: "• NG+",
    129: "• NG+",
    130: "• NG+",
    131: "• NG+",
    132: "• NG+",
    133: "• NG+",
    134: "• NG+",
    135: "• NG+",
    136: "• NG+",
    137: "• NG+",
    138: "• NG+",
    139: "• NG+",
    140: "• NG+",
    141: "• NG+",
    142: "• NG+",
    143: "• NG+",
    144: "• NG+",
    145: "• NG+",
    146: "• NG+",
    147: "• NG+",
    148: "• NG+",
    149: "• NG+",
    150: "• NG+",
    151: "• NG+",
    152: "• NG+",
    153: "• NG+",
    154: "• NG+",
    155: "• NG+",
    156: "• NG+",
    157: "• NG+",
    158: "• NG+",
    159: "• NG+",
    160: "• NG+",
    161: "• NG+",
    162: "• NG+",
    163: "• NG+",
    164: "• NG+",
    165: "• NG+",
    166: "• NG+",
    167: "• NG+",
    168: "• NG+",
    169: "• NG+",
    170: "• NG+",
    171: "• NG+",
    172: "• NG+",
    173: "• NG+",
    174: "• NG+",
    175: "• NG+",
    176: "• NG+",
    177: "• NG+",
    178: "• NG+",
    179: "• NG+",
    180: "• NG+",
    181: "• NG+",
    182: "• NG+",
    183: "• NG+",
    184: "• NG+",
    185: "• NG+",
    186: "• NG+",
    187: "• NG+",
    188: "• NG+",
    189: "• NG+",
    190: "• NG+",
    191: "• NG+",
    192: "• NG+",
    193: "• NG+",
    194: "• NG+",
    195: "• NG+",
    196: "• NG+",
    197: "• NG+",
    198: "• NG+",
    199: "• NG+",
    200: "• NG+",
    201: "• NG+",
    202: "• NG+",
    203: "• NG+",
    204: "• NG+",
    205: "• NG+",
    206: "• NG+",
    207: "• NG+",
    208: "• NG+",
    209: "• NG+",
    210: "• NG+",
    211: "• NG+",
    212: "• NG+",
    213: "• NG+",
    214: "• NG+",
    215: "• NG+",
    216: "• NG+",
    217: "• NG+",
    218: "• NG+",
    219: "• NG+",
    220: "• NG+",
    221: "• NG+",
    222: "• NG+",
    223: "• NG+",
    224: "• NG+",
    225: "• NG+",
    226: "• NG+",
    227: "• NG+",
    228: "• NG+",
    229: "• NG+",
    230: "• NG+",
    231: "• NG+",
    232: "• NG+",
    233: "• NG+",
    234: "• NG+",
    235: "• NG+",
    236: "• NG+",
    237: "• NG+",
    238: "• NG+",
    239: "• NG+",
    240: "• NG+",
    241: "• NG+",
    242: "• NG+",
    243: "• NG+",
    244: "• NG+",
    245: "• NG+",
    246: "• NG+",
    247: "• NG+",
    248: "• NG+",
    249: "• NG+",
    250: "• NG+",
    251: "• NG+",
    252: "• NG+",
    253: "• NG+",
    254: "• NG+",
    255: "• NG+",
}

// $6BF9C8: [32-bit float] Savior Accolade
//          0.0 = Default
//          1.0 = Achieved
function savior_accolade() => float(0x6BF9C8)

// $6BF9CC: [32-bit float] Butcher Accolade
//          0.0 = Default
//          1.0 = Achieved
function butcher_accolade() => float(0x6BF9CC)

// $6BF9D0: [32-bit float] Ambassador Accolade
//          0.0 = Default
//          1.0 = Achieved
function ambassador_accolade() => float(0x6BF9D0)

// $6BF9D4: [32-bit float] % of Enemies Killed with Melee Weapons
function of_enemies_killed_with_melee_weapons() => float(0x6BF9D4)

// $6BF9D8: [32-bit float] % of Enemies Killed with Firearms
function of_enemies_killed_with_firearms() => float(0x6BF9D8)

// $6BF9DC: [32-bit float] % of Enemies Killed with Fists
function of_enemies_killed_with_fists() => float(0x6BF9DC)

// $6BF9E0: [32-bit float] Time to Rescue Alessa from Fire
function time_to_rescue_alessa_from_fire() => float(0x6BF9E0)

// $6BF9E4: [32-bit float] Konami Code Accolade
//          0.0 = Default
//          1.0 = Achieved
function konami_code_accolade() => float(0x6BF9E4)

// $6C3BD0: [11 bytes  ASCII] Game FMV
//          IGC.ARC;1 = In-game Intro Cutscene
//          MENUW.PSS;1 = Menu Menu
//          BACKN.PSS;1 = Language Select
//          BACKW.PSS;1 = New Game Screen
//          LOGOWF.PSS;1 = Logo / Boot Screen
//          SCN01W.PSS;1 = Intro FMV
//          GOMOVW.PSS;1 = Game Over
//          SCN18W.PSS;1 = Dark Town - Leaving Hospital Scene
//          SCN19W.OSS;1 = Scene Before Alessa boss
//          SCN20W.PSS;1 = Scene After Alessa boss
//          ENDGW.PSS;1 = Ending Scene
//          ENDUW.PSS;1 = UFO Ending Scene
//          ENDBW.PSS;1 = Bad Ending Scene
//          CRDGW.PSS;1 = Good Ending Credits
//          CRDBW.PSS;1 = Bad Ending Credits
//          CRDUW.PSS;1 = UFO Credits
//          STATGW.PSS;1 = Good Ending Summary Screen
//          STATBW.PSS;1 = Bad Ending Summary Screen
//          STATUW.PSS;1 = UFO Summary Screen
function _11_bytes_ascii_game_fmv() => dword(0x6C3BD0)

CreditsLookup = {
    0x42445243: "Bad Ending Credits",
    0x47445243: "Good Ending Credits",
    0x55445243: "UFO Ending Credits",
}

// $6F895C: [32-bit Pointer] Player Health
//          +0xbdc | [32-bit float] Travis's Health
//          100.0 = Max HP
function player_health() => dword(0x6F895C)
function traviss_health() => float((player_health() & 0x1FFFFFF) + 0x000BDC)

// $735638: [8-bit] Peephole Room Views
//          0x00 = View into Pink Moon Suite
//          0x01 = View into King Suite
//          0x06 = View into Rose Suite
//          0x10 = None
//          0x18 = View into Room 500
//          0x19 = View into Room 501
//          0x1a = View into Room 502
//          0x1b = View into Room 503
function peephole_room_views() => byte(0x735638)

LocationLookup = {
    0x72746e49: "Intro",
    0x6c686144: "Gillespie House",
    0x6e776f54: "Town",
    0x70736f48: "Alchemilla Hospital",
    0x696e6153: "Cedar Grove Sanitarium",
    0x6e616c42: "Greenfield Apartments",
    0x61656854: "Artaud Theater",
    0x65746f4d: "Riverside Motel",
    0x6b726144: "Nowhere",
    0x614d6f4e: "Antique Shop",
}

achievement(
    title = "Safe Now", points = 5, type="missable",
    description = "Rescue Alessa from the fire in less than 80 seconds",
    id = 532085, badge = "604078", published = "7/14/2025 7:03:50 PM", modified = "7/15/2025 12:10:00 AM",
    trigger = once(_10_bytes_ascii_location_id_1_2() == 0x6C686144 && prev(time_to_rescue_alessa_from_fire()) < 1.0 &&
                  time_to_rescue_alessa_from_fire() > 1.0
              ) && prev(_10_bytes_ascii_location_id_1_2()) == 0x6C686144 &&
              trigger_when(_10_bytes_ascii_location_id_1_2() == 0x6E776F54) &&
              never((game_state() == 0x01 || time_to_rescue_alessa_from_fire() > 80.0))
)

achievement(
    title = "Where Am I", points = 5, type="progression",
    description = "Enter the Otherworld for the first time in the Alchemilla Hospital",
    id = 532086, badge = "604079", published = "7/14/2025 7:03:50 PM", modified = "7/15/2025 12:10:00 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x70736F48 &&
              current_player_location_4_4() == 0x09 && prev(cutscene_active_flag()) == 0x00 &&
              cutscene_active_flag() == 0x01
)

achievement(
    title = "Age Before Beauty", points = 5, type="progression",
    description = "Solve the Medical Icebox puzzle",
    id = 532087, badge = "604080", published = "7/14/2025 7:03:50 PM", modified = "7/15/2025 12:10:01 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x70736F48 &&
              current_player_location_4_4() == 0x07 && game_state() == 0x02 && byte(puzzles() + 0x278) == 0x02 &&
              byte(puzzles() + 0x27C) == 0x00 && byte(puzzles() + 0x280) == 0x01 && byte(puzzles() + 0x284) == 0x02 &&
              byte(puzzles() + 0x288) == 0x00 && byte(puzzles() + 0x28C) == 0x08 &&
              prev(byte(puzzles() + 0x294)) == 0x00 && byte(puzzles() + 0x294) == 0x01
)

achievement(
    title = "Stevie's Secret", points = 5, type="progression",
    description = "Solve the Plastic Anatomy Doll puzzle",
    id = 532088, badge = "604081", published = "7/14/2025 7:03:51 PM", modified = "7/15/2025 12:10:01 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x70736F48 &&
              current_player_location_4_4() == 0x10 && game_state() == 0x02 && byte(puzzles() + 0x28C) == 0x01 &&
              byte(puzzles() + 0x2D0) == 0x01 && byte(puzzles() + 0x314) == 0x01 && byte(puzzles() + 0x358) == 0x01 &&
              byte(puzzles() + 0x39C) == 0x01 && prev(byte(puzzles() + 0x3C0)) == 0x00 &&
              byte(puzzles() + 0x3C0) == 0x01
)

achievement(
    title = "Bare-Knuckle", points = 5, type="missable",
    description = "Defeat the first Straightjacket using only your fists, without equipping any weapons or taking damage, in the Alchemilla Hospital",
    id = 532089, badge = "604082", published = "7/14/2025 7:03:51 PM", modified = "7/15/2025 12:10:02 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x6E616C42 && current_player_location_4_4() == 0x07 &&
              trigger_when(total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())) &&
              prev(boss_health()) >= 1.0 && trigger_when(boss_health() == 0.0) &&
              disable_when((prev(traviss_health()) >= traviss_health()) &&
                  _10_bytes_ascii_location_id_1_2() == 0x6E616C42 && current_player_location_4_4() == 0x07 &&
                  player_position_z() >= -4.0 && player_position_z() <= 4.0 && player_position_x() >= -2.0 &&
                  player_position_x() <= 5.0 && traviss_health() < prev(traviss_health())
              ) && disable_when(dword(pointer_to_weapon_data() + 0x58) < prev(dword(pointer_to_weapon_data() + 0x58))) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              disable_when(byte(pointer_to_weapon_data() + 0x64) < prev(byte(pointer_to_weapon_data() + 0x64))) &&
              (always_false() || (never((_10_bytes_ascii_location_id_1_2() != 0x6E616C42 || current_player_location_4_4() != 0x07 ||
                    cutscene_active_flag() == 0x00)
                )))
)

achievement(
    title = "Something's Off", points = 5, type="progression",
    description = "Meet Lisa Garland for the first time",
    id = 532090, badge = "604083", published = "7/14/2025 7:03:51 PM", modified = "7/15/2025 12:10:02 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x70736F48 &&
              current_player_location_4_4() == 0x06 && prev(cutscene_active_flag()) == 0x00 &&
              cutscene_active_flag() == 0x01
)

achievement(
    title = "Seeing Things", points = 5, type="progression",
    description = "Observe an unsettling figure",
    id = 532091, badge = "604084", published = "7/14/2025 7:03:51 PM", modified = "7/15/2025 12:10:03 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x6E776F54 &&
              current_player_location_4_4() == 0x06 && prev(cutscene_active_flag()) == 0x00 &&
              cutscene_active_flag() == 0x01
)

achievement(
    title = "This May Come in Handy", points = 5, type="missable",
    description = "Find the Target Pistol",
    id = 532092, badge = "604085", published = "7/14/2025 7:03:52 PM", modified = "7/15/2025 12:10:03 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x696E6153 && current_player_location_4_4() == 0x03 &&
              game_state() == 0x04 && player_position_z() >= -2.5 && player_position_z() <= -1.0 &&
              player_position_x() >= 3.0 && player_position_x() <= 6.0 &&
              total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "She Knew My Name", points = 5, type="progression",
    description = "Encounter a familiar woman in Cedar Grove Sanitarium",
    id = 532093, badge = "604086", published = "7/14/2025 7:03:52 PM", modified = "7/15/2025 12:10:03 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
              current_player_location_4_4() == 0x07 && prev(cutscene_active_flag()) == 0x00 &&
              cutscene_active_flag() == 0x01
)

achievement(
    title = "Overloaded", points = 5, type="progression",
    description = "Solve the Iron Lung puzzle",
    id = 532094, badge = "604087", published = "7/14/2025 7:03:52 PM", modified = "7/15/2025 12:10:04 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
              current_player_location_4_4() == 0x09 && game_state() == 0x02 && byte(puzzles() + 0x274) == 0x64 &&
              byte(puzzles() + 0x278) == 0x64 && byte(puzzles() + 0x27C) == 0x64 && byte(puzzles() + 0x280) == 0x64 &&
              byte(puzzles() + 0x284) == 0x64 && prev(byte(puzzles() + 0x268)) == 0x00 &&
              byte(puzzles() + 0x268) == 0x01
)

achievement(
    title = "Ready for Close Combat", points = 5, type="progression",
    description = "Obtain the Shotgun",
    id = 532095, badge = "604088", published = "7/14/2025 7:03:53 PM", modified = "7/15/2025 12:10:04 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
              current_player_location_4_4() == 0x09 && game_state() == 0x04 &&
              total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "This'll Cut It", points = 5, type="missable",
    description = "Find a Katana in Cedar Grove Sanitarium",
    id = 532096, badge = "604089", published = "7/14/2025 7:03:53 PM", modified = "7/15/2025 6:36:50 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
              (player_position_z() >= 0.3 && player_position_z() <= 1.9 && player_position_x() >= 0.0 &&
                  player_position_x() <= 3.0 && current_player_location_4_4() == 0x05
              ) && current_player_location_3_4() == 0x01 && current_player_location_2_4() == 0x01 &&
              game_state() == 0x04 && item_count_in_location() == 0x06 &&
              total_melee_weapons_in_inventory() > prev(total_melee_weapons_in_inventory())
)

achievement(
    title = "Harris's Lockbox", points = 5, type="progression",
    description = "Solve the Pill Cabinet puzzle",
    id = 532097, badge = "604090", published = "7/14/2025 7:03:53 PM", modified = "7/15/2025 12:10:05 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
              current_player_location_4_4() == 0x08 && game_state() == 0x02 && byte(puzzles() + 0x26C) == 0x00 &&
              byte(puzzles() + 0x270) == 0x01 && byte(puzzles() + 0x274) == 0x01 && byte(puzzles() + 0x278) == 0x02 &&
              byte(puzzles() + 0x27C) == 0x03 && prev(byte(puzzles() + 0x268)) == 0x00 &&
              byte(puzzles() + 0x268) == 0x01
)

achievement(
    title = "Not a Devil Child", points = 10, type="missable",
    description = "Defeat Momma using only your fists, without equipping any weapons or taking damage, in the Cedar Grove Sanitarium",
    id = 532098, badge = "604091", published = "7/14/2025 7:03:53 PM", modified = "7/15/2025 12:10:05 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x696E6153 && current_player_location_4_4() == 0x11 &&
              trigger_when(total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())) &&
              prev(boss_health()) >= 1.0 && trigger_when(boss_health() == 0.0) &&
              disable_when((prev(traviss_health()) >= traviss_health()) &&
                  _10_bytes_ascii_location_id_1_2() == 0x696E6153 && current_player_location_4_4() == 0x11 &&
                  player_position_z() >= -5.0 && player_position_z() <= 5.0 && player_position_x() >= -4.0 &&
                  player_position_x() <= 6.0 && traviss_health() < prev(traviss_health())
              ) && disable_when(dword(pointer_to_weapon_data() + 0x58) < prev(dword(pointer_to_weapon_data() + 0x58))) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              disable_when(byte(pointer_to_weapon_data() + 0x64) < prev(byte(pointer_to_weapon_data() + 0x64))) &&
              (always_false() || (never((_10_bytes_ascii_location_id_1_2() != 0x696E6153 || current_player_location_4_4() != 0x11 ||
                    cutscene_active_flag() == 0x00)
                )))
)

achievement(
    title = "This Is Just Like Before...", points = 5, type="progression",
    description = "Make your way out of the Cedar Grove Sanitarium",
    id = 532099, badge = "604092", published = "7/14/2025 7:03:54 PM", modified = "7/15/2025 12:10:05 AM",
    trigger = once(number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x696E6153 &&
                  current_player_location_4_4() == 0x11 && prev(items_collected_flag()) == 0x00 &&
                  items_collected_flag() == 0x01
              ) && current_player_location_4_4() == 0x0A && prev(cutscene_active_flag()) == 0x00 &&
              cutscene_active_flag() == 0x01 && never(_10_bytes_ascii_location_id_1_2() != 0x696E6153)
)

achievement(
    title = "Theatrics", points = 5, type="progression",
    description = "Ran into Lisa again at the theater, things aren't as they seem",
    id = 532100, badge = "604093", published = "7/14/2025 7:03:54 PM", modified = "7/15/2025 12:10:05 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x61656854 &&
              current_player_location_4_4() == 0x07 && game_state() == 0x04 && item_count_in_location() == 0x04 &&
              prev(cutscene_active_flag()) == 0x00 && cutscene_active_flag() == 0x01
)

achievement(
    title = "Standard Issue", points = 5, type="missable",
    description = "Find the Service Pistol",
    id = 532101, badge = "604094", published = "7/14/2025 7:03:54 PM", modified = "7/15/2025 12:10:05 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x03 &&
              game_state() == 0x04 && player_position_z() >= -1.5 && player_position_z() <= 0.0 &&
              player_position_x() >= -2.5 && player_position_x() <= 0.0 &&
              total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "Sometimes, the Long Way Is the Fun Way", points = 5, type="progression",
    description = "Have both the Sun and Moon Totems in your inventory, then use them together to unlock the eastern corridor door",
    id = 532102, badge = "604095", published = "7/14/2025 7:03:54 PM", modified = "7/15/2025 12:10:06 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x61656854 && game_state() == 0x04 &&
              repeated(2,
                  current_player_location_4_4() == 0x21 &&
                  (prev(total_items_in_inventory()) - total_items_in_inventory()) == 0x01
              ) &&
              never((current_player_location_4_4() == 0x21 &&
                  (total_items_in_inventory() - prev(total_items_in_inventory())) == 0x01)
              )
)

achievement(
    title = "Ready for What's Next", points = 5, type="missable",
    description = "Find the Hunting Rifle",
    id = 532103, badge = "604096", published = "7/14/2025 7:03:55 PM", modified = "7/15/2025 12:10:06 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x01 &&
              game_state() == 0x04 && player_position_z() >= -11.0 && player_position_z() <= -8.0 &&
              player_position_x() >= -7.5 && player_position_x() <= -4.0 &&
              total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "Let There Be Light", points = 5, type="progression",
    description = "Solve the Spotlights puzzle",
    id = 532104, badge = "604097", published = "7/14/2025 7:03:55 PM", modified = "7/15/2025 12:10:06 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x61656854 &&
              game_state() == 0x02 && current_player_location_4_4() == 0x52 && prev(byte(puzzles() + 0x268)) == 0x00 &&
              byte(puzzles() + 0x268) == 0x01
)

achievement(
    title = "Behind the Curtain", points = 3, type="missable",
    description = "Activate and discover all three backstage sceneries in the Artaud Theater, without returning to the main menu",
    id = 532105, badge = "604098", published = "7/14/2025 7:03:55 PM", modified = "7/15/2025 12:10:06 AM",
    trigger = measured(tally(3,
                  once(once(once(_10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x3C &&
                  byte(puzzles() + 0x278) == 0x01) && byte(puzzles() + 0x288) == 0x01) &&
                  _10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x06 &&
                  prev(dword(0x34519C)) == 0x657274 && dword(0x34519C) == 0x5F657274),
                  once(once(once(_10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x3C &&
                  byte(puzzles() + 0x280) == 0x01) && byte(puzzles() + 0x284) == 0x01) &&
                  _10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x04 &&
                  prev(dword(0x34519C)) == 0x657274 && dword(0x34519C) == 0x5F657274),
                  once(once(once(_10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x3C &&
                  byte(puzzles() + 0x27C) == 0x01) && byte(puzzles() + 0x28C) == 0x01) &&
                  _10_bytes_ascii_location_id_1_2() == 0x61656854 && current_player_location_4_4() == 0x07 &&
                  prev(dword(0x34519C)) == 0x657274 && dword(0x34519C) == 0x5F657274))
              ) &&
              (always_false() || (never((_10_bytes_ascii_location_id_1_2() != 0x61656854 || game_state() == 0x01))))
)

achievement(
    title = "Be Not Afeard, the Isle Is Full of Noises", points = 10, type="missable",
    description = "Defeat Caliban using only your fists, without equipping any weapons or taking damage, in Artaud Theater",
    id = 532106, badge = "604099", published = "7/14/2025 7:03:56 PM", modified = "7/15/2025 12:10:07 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x61656854 && dword(0x34519C) == 0x5F657274 &&
              current_player_location_4_4() == 0x07 &&
              trigger_when(total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())) &&
              prev(caliban_health()) >= 1.0 && trigger_when(caliban_health() == 0.0) &&
              disable_when((prev(traviss_health()) >= traviss_health()) && dword(0x34519C) == 0x5F657274 &&
                  current_player_location_4_4() == 0x07 && traviss_health() < prev(traviss_health())
              ) && disable_when(dword(pointer_to_weapon_data() + 0x58) < prev(dword(pointer_to_weapon_data() + 0x58))) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              disable_when(byte(pointer_to_weapon_data() + 0x64) < prev(byte(pointer_to_weapon_data() + 0x64))) &&
              (always_false() || (never((dword(0x34519C) != 0x5F657274 || current_player_location_4_4() != 0x07 || cutscene_active_flag() == 0x00))))
)

achievement(
    title = "The Show Is Over", points = 5, type="progression",
    description = "Make your way out of the Artaud Theater",
    id = 532107, badge = "604100", published = "7/14/2025 7:03:56 PM", modified = "7/15/2025 12:10:07 AM",
    trigger = number_of_game_completions() == 0.0 && current_player_location_4_4() == 0x07 &&
              _10_bytes_ascii_location_id_1_2() == 0x61656854 && dword(0x34519C) == 0x5F657274 &&
              prev(word(0x3451A0)) == 0x4F && word(0x3451A0) == 0x45
)

achievement(
    title = "Found It, Keeping It", points = 5, type="missable",
    description = "Find the Assault Rifle",
    id = 532108, badge = "604101", published = "7/14/2025 7:03:56 PM", modified = "7/15/2025 12:10:07 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x6E776F54 && current_player_location_4_4() == 0x08 &&
              game_state() == 0x04 && player_position_z() >= -1.0 && player_position_z() <= 3.5 &&
              player_position_x() >= -3.5 && player_position_x() <= -1.0 &&
              total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "Not Just Books", points = 5, type="progression",
    description = "Unlock the Cash Register in Andy's Bookstore",
    id = 532109, badge = "604102", published = "7/14/2025 7:03:56 PM", modified = "7/15/2025 12:10:07 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x6E776F54 &&
              current_player_location_4_4() == 0x08 && game_state() == 0x02 && byte(puzzles() + 0x290) == 0x01 &&
              byte(puzzles() + 0x294) == 0x00 && byte(puzzles() + 0x298) == 0x02 &&
              prev(byte(puzzles() + 0x278)) == 0x00 && byte(puzzles() + 0x278) == 0x01
)

achievement(
    title = "Welcome to the Riverside Motel!", points = 5, type="progression",
    description = "Make it inside the Riverside Motel",
    id = 532110, badge = "604103", published = "7/14/2025 7:03:57 PM", modified = "7/15/2025 12:10:08 AM",
    trigger = number_of_game_completions() == 0.0 &&
              (current_player_location_4_4() == 0x02 || current_player_location_4_4() == 0x12) && game_state() == 0x04 &&
              prev(_10_bytes_ascii_location_id_1_2()) == 0x6E776F54 && _10_bytes_ascii_location_id_1_2() == 0x65746F4D
)

achievement(
    title = "Not Alone", points = 3, type="missable",
    description = "Witnessed a horrifying presence through a peephole in Riverside Motel",
    id = 532111, badge = "604104", published = "7/14/2025 7:03:57 PM", modified = "7/15/2025 12:10:08 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x0F &&
              peephole_room_views() == 0x1B && prev(peephole_camera_x()) < 15.0 && peephole_camera_x() == 15.0
)

achievement(
    title = "44 Hand Cannon", points = 5, type="missable",
    description = "Find the Redeemer",
    id = 532112, badge = "604105", published = "7/14/2025 7:03:57 PM", modified = "7/15/2025 12:10:08 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x02 &&
              game_state() == 0x04 && total_firearms_in_inventory() > prev(total_firearms_in_inventory())
)

achievement(
    title = "You're Not the Only Monster", points = 10, type="missable",
    description = "Defeat The Butcher using only your fists and without equipping any weapons, in the Riverside Motel",
    id = 532113, badge = "604106", published = "7/14/2025 7:03:58 PM", modified = "7/17/2025 7:44:32 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x0D &&
              current_player_location_1_4() == 0x02 && current_player_location_2_4() == 0x00 &&
              current_player_location_3_4() == 0x02 &&
              trigger_when(total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())) &&
              prev(float(pointer_to_bosses_health() + 0xC1C)) >= 1.0 &&
              trigger_when(float(pointer_to_bosses_health() + 0xC1C) == 0.0) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) < prev(dword(pointer_to_weapon_data() + 0x58))) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              disable_when(byte(pointer_to_weapon_data() + 0x64) < prev(byte(pointer_to_weapon_data() + 0x64))) &&
              (always_false() || (never(((_10_bytes_ascii_location_id_1_2() != 0x65746F4D || current_player_location_1_4() == 0x02) &&
                    current_player_location_2_4() == 0x00 && current_player_location_3_4() == 0x02 &&
                    current_player_location_4_4() != 0x0D) || cutscene_active_flag() == 0x00
                )))
)

achievement(
    title = "Laundry Day", points = 5, type="progression",
    description = "Solve the Washing Machine puzzle",
    id = 532114, badge = "604107", published = "7/14/2025 7:03:59 PM", modified = "7/15/2025 12:10:09 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x65746F4D &&
              current_player_location_4_4() == 0x0F && game_state() == 0x02 && byte(puzzles() + 0x2AC) == 0x05 &&
              byte(puzzles() + 0x2B0) == 0x03 && byte(puzzles() + 0x2B4) == 0x07 && byte(puzzles() + 0x2B8) == 0x00 &&
              prev(byte(puzzles() + 0x290)) == 0x00 && byte(puzzles() + 0x290) == 0x01
)

achievement(
    title = "Turn Back the Years", points = 5, type="progression",
    description = "Solve the Rotary Calendar puzzle",
    id = 532115, badge = "604108", published = "7/14/2025 7:03:59 PM", modified = "7/15/2025 12:10:09 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x65746F4D &&
              current_player_location_4_4() == 0x18 && game_state() == 0x04 && player_position_z() >= -2.0 &&
              player_position_z() <= -1.0 && player_position_x() >= 2.7 && player_position_x() <= 4.0 &&
              total_items_in_inventory() < prev(total_items_in_inventory())
)

achievement(
    title = "No Holds Barred", points = 10, type="missable",
    description = "Defeat Sad Daddy without taking damage or using any unlockable weapons in the Riverside Motel",
    id = 532116, badge = "604109", published = "7/14/2025 7:03:59 PM", modified = "7/29/2025 3:37:29 AM",
    trigger = player_position_z() >= -3.0 && player_position_z() <= 3.0 && player_position_x() >= -2.0 &&
              player_position_x() <= 2.0 &&
              trigger_when(once(_10_bytes_ascii_location_id_1_2() == 0x65746F4D &&
                  current_player_location_4_4() == 0x07 && current_player_location_2_4() == 0x00 &&
                  prev(items_collected_flag()) == 0x01 && total_items_in_inventory() > prev(total_items_in_inventory()))
              ) &&
              (_10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x07 &&
                  current_player_location_2_4() == 0x00 && prev(cutscene_active_flag()) == 0x01
              ) && trigger_when(cutscene_active_flag() == 0x00) &&
              disable_when(player_position_z() >= -3.0 && player_position_z() <= 3.0 && player_position_x() >= -2.0 &&
                  player_position_x() <= 2.0 && traviss_health() < prev(traviss_health())
              ) && disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              (always_false() || (never((current_player_location_2_4() == 0x06 || current_player_location_4_4() != 0x07 ||
                    _10_bytes_ascii_location_id_1_2() != 0x65746F4D)
                )))
)

achievement(
    title = "Haunted by Truth", points = 5, type="progression",
    description = "Make it out of the Riverside Motel",
    id = 532117, badge = "604110", published = "7/14/2025 7:04:00 PM", modified = "7/15/2025 12:10:11 AM",
    trigger = number_of_game_completions() == 0.0 && current_player_location_4_4() == 0x03 && game_state() == 0x04 &&
              cutscene_active_flag() == 0x01 && prev(_10_bytes_ascii_location_id_1_2()) == 0x65746F4D &&
              _10_bytes_ascii_location_id_1_2() == 0x70736F48
)

achievement(
    title = "Free from Flauros", points = 5, type="progression",
    description = "Solve the Flauros puzzle",
    id = 532118, badge = "604111", published = "7/14/2025 7:04:00 PM", modified = "7/15/2025 12:10:11 AM",
    trigger = number_of_game_completions() == 0.0 && _10_bytes_ascii_location_id_1_2() == 0x70736F48 &&
              current_player_location_4_4() == 0x13 && game_state() == 0x02 && byte(puzzles() + 0x2F8) == 0x01 &&
              byte(puzzles() + 0x320) == 0x01 && byte(puzzles() + 0x348) == 0x01 && byte(puzzles() + 0x370) == 0x01 &&
              prev(byte(puzzles() + 0x26C)) == 0x00 && byte(puzzles() + 0x26C) == 0x01
)

achievement(
    title = "This Ends Here", points = 10, type="missable",
    description = "Defeat Alessa's Dream using only your fists and without equipping any weapons in the Otherworld",
    id = 532119, badge = "604112", published = "7/14/2025 7:04:01 PM", modified = "7/15/2025 12:10:12 AM",
    trigger = _10_bytes_ascii_location_id_2_2() == 0x614D6F4E && current_player_location_4_4() == 0x09 &&
              prev(boss_health()) > 4250.0 && trigger_when(boss_health() == 4250.0) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) < prev(dword(pointer_to_weapon_data() + 0x58))) &&
              disable_when(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
              disable_when(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
              disable_when(byte(pointer_to_weapon_data() + 0x64) < prev(byte(pointer_to_weapon_data() + 0x64))) &&
              (always_false() || (never((_10_bytes_ascii_location_id_2_2() != 0x614D6F4E || current_player_location_4_4() != 0x09 ||
                    game_state() == 0x01)
                )))
)

achievement(
    title = "Peace, at Last", points = 50, type="win_condition",
    description = "Reach the Good Ending",
    id = 532120, badge = "604113", published = "7/14/2025 7:04:02 PM", modified = "7/15/2025 12:10:12 AM",
    trigger = summary_screen_active_flag() == 0x01 && savior_accolade() == 1.0 && butcher_accolade() == 0.0 &&
              ambassador_accolade() == 0.0 && prev(number_of_game_completions()) == 0.0 &&
              number_of_game_completions() == 1.0
)

achievement(
    title = "The Other Side of You", points = 25,
    description = "Reach the Bad Ending in NG+",
    id = 532121, badge = "604114", published = "7/14/2025 7:04:03 PM", modified = "7/15/2025 12:10:12 AM",
    trigger = summary_screen_active_flag() == 0x01 && butcher_accolade() == 1.0 && savior_accolade() == 0.0 &&
              ambassador_accolade() == 0.0 && number_of_game_completions() >= 1.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Access Granted", points = 5,
    description = "Obtain the key to Room 502 in NG+",
    id = 532122, badge = "604115", published = "7/14/2025 7:04:04 PM", modified = "7/15/2025 8:01:32 AM",
    trigger = number_of_game_completions() >= 1.0 && _10_bytes_ascii_location_id_1_2() == 0x6E776F54 &&
              current_player_location_4_4() == 0x10 &&
              (current_player_location_2_4() == 0x09 || current_player_location_2_4() == 0x0B) && game_state() == 0x04 &&
              player_position_y() >= 6.0 && total_items_in_inventory() > prev(total_items_in_inventory())
)

achievement(
    title = "Your Truck Is on Our Planet", points = 25,
    description = "Reach the UFO Ending in NG+",
    id = 532123, badge = "604116", published = "7/14/2025 7:04:04 PM", modified = "7/15/2025 12:10:13 AM",
    trigger = summary_screen_active_flag() == 0x01 && ambassador_accolade() == 1.0 && butcher_accolade() == 0.0 &&
              savior_accolade() == 0.0 && number_of_game_completions() >= 1.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Lost and Found", points = 10,
    description = "Collect all 50 notes",
    id = 532124, badge = "604117", published = "7/14/2025 7:04:05 PM", modified = "7/15/2025 12:10:13 AM",
    trigger = game_state() != 0x01 && prev(total_notes_collected()) == 0x31 && measured(total_notes_collected() == 0x32)
)

achievement(
    title = "Just a Few Things", points = 10,
    description = "Collect 300 items",
    id = 532125, badge = "604118", published = "7/14/2025 7:04:05 PM", modified = "8/2/2025 6:18:19 AM",
    trigger = game_state() != 0x01 && prev(total_items_collected()) < 300.0 &&
              measured(total_items_collected() >= 300.0)
)

achievement(
    title = "Feeling My Way Through", points = 10, type="missable",
    description = "Make it out of the Alchemilla Hospital without picking up the map and without returning to the main menu",
    id = 532127, badge = "604120", published = "7/14/2025 7:04:06 PM", modified = "7/15/2025 12:10:14 AM",
    trigger = trigger_when(tally(3,
                  once(prev(_10_bytes_ascii_location_id_1_2()) == 0x6E776F54 &&
                  _10_bytes_ascii_location_id_1_2() == 0x70736F48),
                  once(prev(_10_bytes_ascii_location_id_1_2()) == 0x70736F48 &&
                  _10_bytes_ascii_location_id_1_2() == 0x6E776F54),
                  once(_10_bytes_ascii_location_id_1_2() == 0x70736F48 && current_player_location_4_4() == 0x13))
              ) &&
              disable_when(_10_bytes_ascii_location_id_1_2() == 0x70736F48 && number_of_map_views() > prev(number_of_map_views())) &&
              disable_when(repeated(15,
                  (total_firearms_in_inventory() > 0x01) || _10_bytes_ascii_location_id_1_2() == 0x72746E49 ||
                  _10_bytes_ascii_location_id_1_2() == 0x6C686144 || _10_bytes_ascii_location_id_1_2() == 0x696E6153 ||
                  _10_bytes_ascii_location_id_1_2() == 0x61656854 || _10_bytes_ascii_location_id_1_2() == 0x65746F4D ||
                  _10_bytes_ascii_location_id_1_2() == 0x6B726144 || _10_bytes_ascii_location_id_2_2() == 0x6E776F54)
              ) &&
              (always_false() || (never(_10_bytes_ascii_location_id_1_2() == 0x00) &&
                never((player_position_z() >= 32.0 && player_position_z() <= 37.0 && player_position_x() >= -32.0 &&
                    player_position_x() <= -25.0 && current_player_location_4_4() == 0x00 &&
                    _10_bytes_ascii_location_id_1_2() == 0x6E776F54)
                )))
)

achievement(
    title = "All Quiet in Alchemilla", points = 5, type="missable",
    description = "While in Alchemilla Hospital, switch off your radio then kill all enemies without using unlockable weapons or returning to the main menu",
    id = 532126, badge = "604119", published = "7/14/2025 7:04:05 PM", modified = "8/11/2025 9:59:37 AM",
    trigger = ((trigger_when(tally(9,
                    (dword(dword(player_data() + 0xD8) + 0x68) == 0x00) &&
                    total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms() ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                ) && never(dword(dword(player_data() + 0xD8) + 0x68) == 0x01) &&
                never(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
                never(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
                never((game_state() == 0x01 || _10_bytes_ascii_location_id_1_2() != 0x70736F48))) ||
               (measured(tally(9,
                    (total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms()) ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                )))
)

achievement(
    title = "Do Not Disturb", points = 5,
    description = "While in Cedar Grove Sanitarium, switch off your radio then kill 10 enemies without using unlockable weapons or returning to the main menu",
    id = 532128, badge = "604121", published = "7/14/2025 7:04:06 PM", modified = "8/11/2025 9:59:37 AM",
    trigger = ((trigger_when(tally(10,
                    (dword(dword(player_data() + 0xD8) + 0x68) == 0x00) &&
                    total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms() ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                ) && never(dword(dword(player_data() + 0xD8) + 0x68) == 0x01) &&
                never(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
                never(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
                never((game_state() == 0x01 || _10_bytes_ascii_location_id_1_2() != 0x696E6153))) ||
               (measured(tally(10,
                    (total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms()) ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                )))
)

achievement(
    title = "The Show Must Go Silent", points = 10,
    description = "While in Artaud Theater, switch off your radio then kill 15 enemies without using unlockable weapons or returning to the main menu",
    id = 532129, badge = "604122", published = "7/14/2025 7:04:06 PM", modified = "8/11/2025 9:59:38 AM",
    trigger = ((trigger_when(tally(15,
                    (dword(dword(player_data() + 0xD8) + 0x68) == 0x00) &&
                    total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms() ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                ) && never(dword(dword(player_data() + 0xD8) + 0x68) == 0x01) &&
                never(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
                never(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
                never((game_state() == 0x01 || _10_bytes_ascii_location_id_1_2() != 0x61656854))) ||
               (measured(tally(15,
                    (total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms()) ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                )))
)

achievement(
    title = "No Vacancy for Noise", points = 10,
    description = "While in Riverside Motel, switch off your radio then kill 15 enemies without using unlockable weapons or returning to the main menu",
    id = 532130, badge = "604123", published = "7/14/2025 7:04:06 PM", modified = "8/11/2025 9:59:38 AM",
    trigger = ((trigger_when(tally(15,
                    (dword(dword(player_data() + 0xD8) + 0x68) == 0x00) &&
                    total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms() ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                ) && never(dword(dword(player_data() + 0xD8) + 0x68) == 0x01) &&
                never(dword(pointer_to_weapon_data() + 0x58) == 0xF423F) &&
                never(dword(pointer_to_weapon_data() + 0x60) == 0xF423F) &&
                never((game_state() == 0x01 || _10_bytes_ascii_location_id_1_2() != 0x65746F4D))) ||
               (measured(tally(15,
                    (total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()) ||
                    total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms()) ||
                    total_enemies_killed_using_fists() > prev(total_enemies_killed_using_fists())))
                )))
)

achievement(
    title = "The Unseen Path", points = 5, type="missable",
    description = "Make it through Nowhere to the Antique Shop without picking up the Child's Map",
    id = 532131, badge = "604124", published = "7/14/2025 7:04:07 PM", modified = "7/15/2025 12:10:16 AM",
    trigger = _10_bytes_ascii_location_id_1_2() == 0x6B726144 && prev(_10_bytes_ascii_location_id_2_2()) == 0x6B726144 &&
              trigger_when(_10_bytes_ascii_location_id_2_2() == 0x614D6F4E) &&
              disable_when(_10_bytes_ascii_location_id_1_2() == 0x6B726144 && number_of_map_views() > prev(number_of_map_views())) &&
              (always_false() || (never(game_state() == 0x01)))
)

achievement(
    title = "Killing with Style", points = 10,
    description = "Perform 8 different execution animations on downed enemies without returning to the main menu",
    id = 532132, badge = "604125", published = "7/14/2025 7:04:07 PM", modified = "8/1/2025 11:35:49 PM",
    trigger = measured(tally(8,
                  once(game_state() == 0x04 && byte(pointer_to_weapon_data() + 0x54) == 0x03 && targeted_object() != 0x00 &&
                  total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x04) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x05) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x06) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x07) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x08) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x09) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons())),
                  once((prev(byte(pointer_to_weapon_data() + 0x54)) == 0x0A) &&
                  byte(pointer_to_weapon_data() + 0x54) == 0x00 && targeted_object() != 0x00 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons())),
                  once((byte(pointer_to_weapon_data() + 0x54) == 0x0B) && targeted_object() != 0x00 &&
                  total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms())))
              ) && never(game_state() == 0x01)
)

achievement(
    title = "No Mercy", points = 10,
    description = "Finish off 50 enemies with a stomp attack",
    id = 532133, badge = "604126", published = "7/14/2025 7:04:07 PM", modified = "7/15/2025 12:10:16 AM",
    trigger = game_state() == 0x04 && prev(total_enemies_killed_using_fists()) == 49.0 &&
              measured(total_enemies_killed_using_fists() == 50.0)
)

achievement(
    title = "Sharp Enough for the Job", points = 10,
    description = "Kill 75 enemies with melee weapons",
    id = 532134, badge = "604127", published = "7/14/2025 7:04:08 PM", modified = "7/15/2025 12:10:17 AM",
    trigger = game_state() == 0x04 && prev(total_enemies_killed_using_melee_weapons()) == 74.0 &&
              measured(total_enemies_killed_using_melee_weapons() == 75.0)
)

achievement(
    title = "Click. Boom. Repeat", points = 10,
    description = "Kill 75 enemies with firearms",
    id = 532135, badge = "604128", published = "7/14/2025 7:04:08 PM", modified = "7/15/2025 12:10:17 AM",
    trigger = game_state() == 0x04 && prev(total_enemies_killed_using_firearms()) == 74.0 &&
              measured(total_enemies_killed_using_firearms() == 75.0)
)

achievement(
    title = "Everything Went Down in One Hit", points = 5,
    description = "Kill 15 enemies using the Moon Gauntlets without returning to the main menu",
    id = 532136, badge = "604129", published = "7/14/2025 7:04:08 PM", modified = "7/15/2025 12:10:17 AM",
    trigger = measured(repeated(15,
                  (byte(pointer_to_weapon_data() + 0x54) == 0x10) && dword(pointer_to_weapon_data() + 0x58) == 0xF423F &&
                  float(pointer_to_weapon_data() + 0x5C) == 50.0 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()))
              ) && never(game_state() == 0x01)
)

achievement(
    title = "Chop Til They Drop", points = 5,
    description = "Kill 15 enemies using the Fire Axe without returning to the main menu",
    id = 532137, badge = "604130", published = "7/14/2025 7:04:09 PM", modified = "7/15/2025 12:10:18 AM",
    trigger = measured(repeated(15,
                  (byte(pointer_to_weapon_data() + 0x54) == 0x08) && dword(pointer_to_weapon_data() + 0x58) == 0xF423F &&
                  float(pointer_to_weapon_data() + 0x5C) == 40.0 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()))
              ) && never(game_state() == 0x01)
)

achievement(
    title = "The Butcher", points = 5,
    description = "Kill 15 enemies using the Great Cleaver without returning to the main menu",
    id = 532138, badge = "604131", published = "7/14/2025 7:04:09 PM", modified = "7/15/2025 12:10:18 AM",
    trigger = measured(repeated(15,
                  (byte(pointer_to_weapon_data() + 0x54) == 0x07) && dword(pointer_to_weapon_data() + 0x58) == 0xF423F &&
                  float(pointer_to_weapon_data() + 0x5C) == 190.0 &&
                  total_enemies_killed_using_melee_weapons() > prev(total_enemies_killed_using_melee_weapons()))
              ) && never(game_state() == 0x01)
)

achievement(
    title = "Shock Therapy", points = 5,
    description = "Kill 25 enemies using the Tesla Rifle without returning to the main menu",
    id = 532139, badge = "604132", published = "7/14/2025 7:04:09 PM", modified = "7/15/2025 12:10:18 AM",
    trigger = measured(repeated(25,
                  (byte(pointer_to_weapon_data() + 0x54) == 0x0B) && dword(pointer_to_weapon_data() + 0x58) == 0x00 &&
                  float(pointer_to_weapon_data() + 0x5C) == 15.0 && dword(pointer_to_weapon_data() + 0x60) == 0xF423F &&
                  total_enemies_killed_using_firearms() > prev(total_enemies_killed_using_firearms()))
              ) && never(game_state() == 0x01)
)

achievement(
    title = "Vincent's Return", points = 5,
    description = "Do the Konami Code on NG+",
    id = 532140, badge = "604133", published = "7/14/2025 7:04:10 PM", modified = "7/15/2025 12:10:19 AM",
    trigger = number_of_game_completions() >= 1.0 && prev(konami_code_accolade()) == 0.0 &&
              konami_code_accolade() == 1.0
)

achievement(
    title = "Part-Time Firefighter", points = 10,
    description = "Finish the game after rescuing Alessa from the fire in under 80 seconds",
    id = 532141, badge = "604134", published = "7/14/2025 7:04:10 PM", modified = "7/15/2025 12:10:19 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              time_to_rescue_alessa_from_fire() < 80.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Silent Hoarder", points = 25,
    description = "Finish the game with over 300 items collected",
    id = 532142, badge = "604135", published = "7/14/2025 7:04:10 PM", modified = "7/15/2025 12:10:19 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              total_items_collected() > 300.0 && number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "A Few Looks for Sanity's Sake", points = 25,
    description = "Finish the game looking at your map less than 25 times",
    id = 532143, badge = "604136", published = "7/14/2025 7:04:11 PM", modified = "7/15/2025 12:10:20 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              number_of_map_views() < 25.0 && number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Footsteps in the Fog", points = 25,
    description = "Finish the game with a total distance traveled over 22.5 km",
    id = 532144, badge = "604137", published = "7/14/2025 7:04:11 PM", modified = "7/15/2025 12:10:20 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              distance_walked() >= 22500.0 && number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "The Darkness Knows Your Name", points = 25,
    description = "Finish the game while using your flashlight for less than 3 hours",
    id = 532145, badge = "604138", published = "7/14/2025 7:04:11 PM", modified = "7/15/2025 12:10:20 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              total_flashlight_use_time() <= 10800.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Manifested Violence", points = 25,
    description = "Finish the game with at least 50% of enemies defeated using fists",
    id = 532146, badge = "604139", published = "7/14/2025 7:04:11 PM", modified = "7/15/2025 12:10:20 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              of_enemies_killed_with_fists() >= 50.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Up Close and Brutal", points = 25,
    description = "Finish the game with at least 75% of enemies defeated using melee weapons",
    id = 532147, badge = "604140", published = "7/14/2025 7:04:12 PM", modified = "7/15/2025 12:10:21 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              of_enemies_killed_with_melee_weapons() >= 75.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Let the Guns Speak", points = 25,
    description = "Finish the game with at least 75% of enemies defeated using firearms",
    id = 532148, badge = "604141", published = "7/14/2025 7:04:12 PM", modified = "7/15/2025 12:10:21 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              of_enemies_killed_with_firearms() >= 75.0 &&
              number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "Out of the Fog, Fast", points = 25,
    description = "Finish the game in less than 2 hours",
    id = 532149, badge = "604142", published = "7/14/2025 7:04:12 PM", modified = "7/15/2025 12:10:21 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              total_game_time() < 7200.0 && number_of_game_completions() > prev(number_of_game_completions())
)

achievement(
    title = "No Safety Net", points = 25,
    description = "Finish the game without saving",
    id = 532150, badge = "604143", published = "7/14/2025 7:04:13 PM", modified = "7/15/2025 12:10:22 AM",
    trigger = summary_screen_active_flag() == 0x01 &&
              (savior_accolade() == 1.0 || butcher_accolade() == 1.0 || ambassador_accolade() == 1.0) &&
              number_of_times_saved() == 0.0 && number_of_game_completions() > prev(number_of_game_completions())
)

leaderboard(
    id = 135435, title = "Alessa in Flames",
    description = "Fastest time to rescue Alessa from the fire",
    start  = _10_bytes_ascii_location_id_1_2() == 0x6C686144 && prev(time_to_rescue_alessa_from_fire()) < 1.0 &&
             time_to_rescue_alessa_from_fire() > 1.0,
    cancel = prev(game_state()) != 0x01 && game_state() == 0x01,
    submit = time_to_rescue_alessa_from_fire() != 0.0 && prev(_10_bytes_ascii_location_id_1_2()) == 0x6C686144 &&
             _10_bytes_ascii_location_id_1_2() == 0x6E776F54,
    value  = measured(time_to_rescue_alessa_from_fire()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 135436, title = "Straightjacket",
    description = "Time taken to defeat Straightjacket without using unlockable weapons",
    start  = _10_bytes_ascii_location_id_1_2() == 0x6E616C42 && current_player_location_4_4() == 0x07 &&
             boss_health() == 200.0 && prev(cutscene_active_flag()) == 0x00 && cutscene_active_flag() == 0x01,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = _10_bytes_ascii_location_id_1_2() == 0x6E616C42 && current_player_location_4_4() == 0x07 &&
             (prev(boss_health()) >= 1.0) && boss_health() == 0.0,
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135437, title = "Momma",
    description = "Time taken to defeat Momma without using unlockable weapons",
    start  = _10_bytes_ascii_location_id_1_2() == 0x696E6153 && current_player_location_4_4() == 0x11 &&
             boss_health() == 375.0 && prev(cutscene_active_flag()) == 0x00 && cutscene_active_flag() == 0x01,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = _10_bytes_ascii_location_id_1_2() == 0x696E6153 && current_player_location_4_4() == 0x11 &&
             (prev(boss_health()) >= 1.0) && boss_health() == 0.0,
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135438, title = "Caliban",
    description = "Time taken to defeat Caliban without using unlockable weapons",
    start  = _10_bytes_ascii_location_id_1_2() == 0x61656854 && dword(0x34519C) == 0x5F657274 &&
             current_player_location_4_4() == 0x07 && caliban_health() == 450.0 && prev(cutscene_active_flag()) == 0x00 &&
             cutscene_active_flag() == 0x01,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = _10_bytes_ascii_location_id_1_2() == 0x61656854 && dword(0x34519C) == 0x5F657274 &&
             current_player_location_4_4() == 0x07 && (prev(caliban_health()) >= 1.0) && caliban_health() == 0.0,
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135439, title = "The Butcher",
    description = "Time taken to defeat The Butcher without using unlockable weapons",
    start  = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x0D &&
             float(pointer_to_bosses_health() + 0xC1C) == 375.0 && prev(cutscene_active_flag()) == 0x00 &&
             cutscene_active_flag() == 0x01,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_4_4() == 0x0D &&
             prev(float(pointer_to_bosses_health() + 0xC1C)) >= 1.0 && float(pointer_to_bosses_health() + 0xC1C) <= 0.0,
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135440, title = "Sad Daddy",
    description = "Time taken to defeat Sad Daddy without using unlockable weapons",
    start  = player_position_z() >= -3.0 && player_position_z() <= 2.7 && player_position_x() >= -3.0 &&
             player_position_x() <= 2.0 && _10_bytes_ascii_location_id_1_2() == 0x65746F4D &&
             current_player_location_2_4() == 0x00 && current_player_location_3_4() == 0x02 &&
             current_player_location_4_4() == 0x07 && cutscene_fmv_playing_flag() == 0x00,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = player_position_z() >= -3.0 && player_position_z() <= 2.7 && player_position_x() >= -3.0 &&
             player_position_x() <= 2.0 &&
             (_10_bytes_ascii_location_id_1_2() == 0x65746F4D && current_player_location_2_4() == 0x00 &&
                 current_player_location_3_4() == 0x02 && current_player_location_4_4() == 0x07 &&
                 current_player_location_2_4() == 0x00 && total_items_in_inventory() > prev(total_items_in_inventory())
             ),
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135441, title = "Alessa's Dream",
    description = "Time taken to defeat Alessa's Dream without using unlockable weapons",
    start  = _10_bytes_ascii_location_id_2_2() == 0x614D6F4E && current_player_location_4_4() == 0x09 &&
             _11_bytes_ascii_game_fmv() == 0x314E4353 && boss_health() == 5000.0 &&
             prev(cutscene_fmv_playing_flag()) == 0x03 && cutscene_fmv_playing_flag() == 0x00,
    cancel = prev(game_state()) != 0x01 &&
             (((game_state() == 0x01 || prev(traviss_health()) >= traviss_health())) && traviss_health() <= 0.0) ||
             dword(pointer_to_weapon_data() + 0x58) == 0xF423F || dword(pointer_to_weapon_data() + 0x60) == 0xF423F,
    submit = _10_bytes_ascii_location_id_2_2() == 0x614D6F4E && current_player_location_4_4() == 0x09 &&
             (prev(boss_health()) > 4250.0) && boss_health() == 4250.0,
    value  = measured(tally(0, fps_devonly() == 0x02 && total_game_time() > prev(total_game_time()),
                 total_game_time() > prev(total_game_time()))
             ),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 135442, title = "Good Ending",
    description = "Fastest Time to reach Good Ending",
    start  = _10_bytes_ascii_location_id_2_2() == 0x614D6F4E && summary_screen_active_flag() == 0x01 &&
             savior_accolade() == 1.0 && butcher_accolade() == 0.0 && ambassador_accolade() == 0.0 &&
             number_of_game_completions() > prev(number_of_game_completions()),
    cancel = always_false(),
    submit = summary_screen_active_flag() == 0x01 && savior_accolade() == 1.0 && butcher_accolade() == 0.0 &&
             ambassador_accolade() == 0.0 && number_of_game_completions() > prev(number_of_game_completions()),
    value  = measured(total_game_time()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 135443, title = "Bad Ending",
    description = "Fastest Time to reach Bad Ending",
    start  = _10_bytes_ascii_location_id_2_2() == 0x614D6F4E && summary_screen_active_flag() == 0x01 &&
             butcher_accolade() == 1.0 && savior_accolade() == 0.0 && ambassador_accolade() == 0.0 &&
             number_of_game_completions() > prev(number_of_game_completions()),
    cancel = always_false(),
    submit = summary_screen_active_flag() == 0x01 && butcher_accolade() == 1.0 && savior_accolade() == 0.0 &&
             ambassador_accolade() == 0.0 && number_of_game_completions() > prev(number_of_game_completions()),
    value  = measured(total_game_time()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 135444, title = "UFO Ending",
    description = "Fastest Time to reach UFO Ending",
    start  = _10_bytes_ascii_location_id_1_2() == 0x65746F4D && summary_screen_active_flag() == 0x01 &&
             ambassador_accolade() == 1.0 && butcher_accolade() == 0.0 && savior_accolade() == 0.0 &&
             number_of_game_completions() > prev(number_of_game_completions()),
    cancel = always_false(),
    submit = summary_screen_active_flag() == 0x01 && ambassador_accolade() == 1.0 && butcher_accolade() == 0.0 &&
             savior_accolade() == 0.0 && number_of_game_completions() > prev(number_of_game_completions()),
    value  = measured(total_game_time()),
    format = "SECS", lower_is_better = true
)

rich_presence_conditional_display((summary_screen_active_flag() == 0x00 && _10_bytes_ascii_location_id_1_2() == 0x00 &&
        _10_bytes_ascii_location_id_2_2() == 0x00
    ), "In the menus")

rich_presence_conditional_display((summary_screen_active_flag() == 0x00 && game_state() == 0x03 && _10_bytes_ascii_location_id_2_2() == 0x614D6F4E &&
    _11_bytes_ascii_game_fmv() == 0x42445243) || _11_bytes_ascii_game_fmv() == 0x47445243 ||
    _11_bytes_ascii_game_fmv() == 0x55445243, "{0}",
    rich_presence_lookup("Credits", _11_bytes_ascii_game_fmv(), CreditsLookup)
)

rich_presence_conditional_display((summary_screen_active_flag() == 0x01 && savior_accolade() == 1.0), "Summary • Good Ending")

rich_presence_conditional_display((summary_screen_active_flag() == 0x01 && butcher_accolade() == 1.0), "Summary • Bad Ending")

rich_presence_conditional_display((summary_screen_active_flag() == 0x01 && ambassador_accolade() == 1.0), "Summary • UFO Ending")

rich_presence_conditional_display((_10_bytes_ascii_location_id_1_2() == 0x72746E49 || _10_bytes_ascii_location_id_1_2() == 0x6C686144), "🗺️{0} • 🕒{1} 🔦{2} 🔥{3} • {4}Km {5}",
    rich_presence_lookup("Location", _10_bytes_ascii_location_id_1_2(), LocationLookup),
    rich_presence_value("Seconds", total_game_time(), format="SECS"),
    rich_presence_value("Seconds", total_flashlight_use_time(), format="SECS"),
    rich_presence_value("Seconds", time_to_rescue_alessa_from_fire(), format="SECS"),
    rich_presence_value("Float2", distance_walked() * 0.001, format="FLOAT2"),
    rich_presence_lookup("Mode", number_of_game_completions(), ModeLookup)
)

rich_presence_conditional_display(game_state() != 0x01, "🗺️{0} • Map Views: {1}x • ❤️{2}% • Kills: 🔫{3} 🔪{4} 👊🏻{5} 💀{6} • 📦Items: {7} • 📝Saves: {8}x • 🕒{9} 🔦{10} • 📻{11} • {12}Km {13}",
    rich_presence_lookup("Location", _10_bytes_ascii_location_id_2_2(), LocationLookup),
    rich_presence_value("Float0", number_of_map_views(), format="FLOAT1"),
    rich_presence_value("Float0", traviss_health(), format="FLOAT1"),
    rich_presence_value("Float0", total_enemies_killed_using_firearms(), format="FLOAT1"),
    rich_presence_value("Float0", total_enemies_killed_using_melee_weapons(), format="FLOAT1"),
    rich_presence_value("Float0", total_enemies_killed_using_fists(), format="FLOAT1"),
    rich_presence_value("Float0", total_enemies_killed_using_melee_weapons() + total_enemies_killed_using_firearms() +
                            total_enemies_killed_using_fists()
                        , format="FLOAT1"),
    rich_presence_value("Float0", total_items_collected(), format="FLOAT1"),
    rich_presence_value("Float0", number_of_times_saved(), format="FLOAT1"),
    rich_presence_value("Seconds", total_game_time(), format="SECS"),
    rich_presence_value("Seconds", total_flashlight_use_time(), format="SECS"),
    rich_presence_lookup("Radio", dword(dword(player_data() + 0xD8) + 0x68), RadioLookup),
    rich_presence_value("Float2", distance_walked() * 0.001, format="FLOAT2"),
    rich_presence_lookup("Mode", number_of_game_completions(), ModeLookup)
)

rich_presence_display("In the menus")
