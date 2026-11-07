// Tomb Raider: Underworld
// #ID = 21163

// $5AC880: [20 bytes ASCII BE] Sequence ID
//          Note: Value becomes 0x00 on reset and load, until a sequence occur.
//          ────── Prologue ─────────────────────────────────────────────────────────────────────────────────────────
//          000_Pro_Flames = Intro               | 0x3030305f, 0x50726f5f, 0x466c616d
//          001_Pro_Corridor = Mid Section       | 0x3030315f, 0x50726f5f, 0x436f7272, 0x69646f72
//          010_Pro_Surprise = End               | 0x3031305f, 0x50726f5f, 0x53757270, 0x72697365
//          ────── Mediterranean ────────────────────────────────────────────────────────────────────────────────────
//          030_Med_Yacht = Intro                | 0x3033305f, 0x4d65645f, 0x59616368
//          040_Med_Ruin = Kraken Entrance       | 0x3034305f, 0x4d65645f, 0x5275696e
//          045_Med_Kraken = Kraken Room Main    | 0x3034355f, 0x4d65645f, 0x4b72616b
//          049_Med_Krakendeath = Kraken Death   | 0x3034395f, 0x4d65645f, 0x4b72616b, 0x656e6465
//          050_Med_Thor = Balders Tomb Entrance | 0x3035305f, 0x54686f72, 0x006e6465
//          051_Med_Thor2 = Balders Tomb End     | 0x3035315f, 0x4d65645f, 0x54686f72
//          052_Med_Shipapproach = Ship          | 0x3035325f, 0x4d65645f, 0x53686970, 0x61707072, 0x6f616368
//          055_Med_Merc = Ship Engine Hall      | 0x3035355f, 0x4d65645f, 0x4d657263
//          060_Med_Natla = Sinking Hall         | 0x3036305f, 0x4d65645f, 0x4e61746c
//          070_med_dive = End                   | 0x3037305f, 0x6d65645f, 0x64697665
//          ─────── Coastal Thailand ────────────────────────────────────────────────────────────────────────────────
//          080_The_Yacht = Cliff Climb Intro    | 0x3038305f, 0x5468615f, 0x59616368
//          090_The_Ruins = Shiva Puzzle         | 0x3039305f, 0x5468615f, 0x5275696e
//          092_The_Arch = Naga End              | 0x3039325f, 0x5468615f, 0x41726368
//          095_Tha_Powerup = Map Room           | 0x3039355f, 0x5468615f, 0x506f7765
//          100_Tha_Thor = Map Room              | 0x3130305f, 0x5468615f, 0x54686f72
//          105_Tha_Powerdown = Map Room         | 0x3130355f, 0x5468615f, 0x506f7765, 0x72646f77
//          110_Tha_YachtExit = End              | 0x3131305f, 0x5468615f, 0x59616368, 0x74457869
//          ─────── Croft Manor ─────────────────────────────────────────────────────────────────────────────────────
//          120_Man_Vault = Intro                | 0x3132305f, 0x4d616e5f, 0x5661756c
//          130_Man_Study = Secret Chamber       | 0x3133305f, 0x4d616e5f, 0x53747564
//          145_Man_Powerdown = Secret Hall      | 0x3134355f, 0x4d616e5f, 0x506f7765, 0x72646f77
//          148_Man_Corridor = Secret Hall       | 0x3134385f, 0x4d616e5f, 0x436f7272, 0X69646f72
//          150_Man_Pinned = Foyer Main Hall     | 0x3135305f, 0x4d616e5f, 0x50696e6e
//          160_Man_Shot = Foyer Main Hall       | 0x3136305f, 0x4d616e5f, 0x53686f74
//          170_Man_Exit = Foyer Main Hall End   | 0x3137305f, 0x4d616e5f, 0x45786974
//          ─────── Southern Mexico ─────────────────────────────────────────────────────────────────────────────────
//          180_Max_Intro = Trail Intro          | 0x3138305f, 0x4d65785f, 0x496e7472
//          185_Max_Calendar = Cliff Lock        | 0x3138355f, 0x4d65785f, 0x43616c65, 0x43616c65
//          14_ballcourt_open = Cliff Lock       | 0x6c345f62, 0x616c6c63, 0x6f757274, 0x5f6f7065
//          190_Mex_Mayan = Spikes               | 0x3139305f, 0x4d65785f, 0x4d617961
//          195_Mex_Lords = Council Hub          | 0x3139355f, 0x4d65785f, 0x4c6f7264
//          200_Mex_Serpent = Belt Foyer         | 0x3230305f, 0x4d65785f, 0x53657270
//          210_Mex_Belt = Belt Room             | 0x3231305f, 0x4d65785f, 0x42656c74
//          198_Mex_Thralls = Council Hub        | 0x3139385f, 0x4d65785f, 0x54687261
//          220_Mex_Exit = Council Hall (End)    | 0x3232305f, 0x4d65785f, 0x45786974
//          ─────── Jan Mayen Island ────────────────────────────────────────────────────────────────────────────────
//          230_Val_Intro = Arctic Start (Intro) | 0x3233305f, 0x56616c5f, 0x496e7472
//          235_Val_Shaft = Valgrind Hall End    | 0x3233355f, 0x56616c5f, 0x53686166
//          240_Val_Gate = Valgrind Hall End     | 0x3234305f, 0x56616c5f, 0x47617465
//          245_Val_Yeti = Hammer Gear Yeti      | 0x3234355f, 0x56616c5f, 0x59657469
//          250_Val_Hammer = Stairs (end)        | 0x3235305f, 0x56616c5f, 0x48616d6d
//          ─────── Andaman Sea ─────────────────────────────────────────────────────────────────────────────────────
//          260_Ship_Intro = Ship Start (Intro)  | 0x3236305f, 0x53686970, 0x5f496e74
//          270_Ship_Escape = Ship Engine Hall   | 0x3237305f, 0x5368705f, 0x45736361
//          ─────── Arctic Sea ─────────────────────────────────────────────────────────────────────────────────────
//          276_Hel_Entrance = Helheim Hall      | 0x3237365f, 0x48656c5f, 0x456e7472, 0x616e6365
//          280_Hel_Intro = Helheim Hall         | 0x3238305f, 0x48656c5f, 0x496e7472
//          290_Hel_Gate = Helheim Hall          | 0x3239305f, 0x48656c5f, 0x47617465
//          300_Hel_Mother = Yggdrasil Hall End  | 0x3330305f, 0x48656c5f, 0x4d6f7468
//          320_Hel_Boss = Final Boss            | 0x3332305f, 0x48656c5f, 0x426f7373
//          330_Hel_Thralls = Final Boss scene   | 0x3333305f, 0x48656c5f, 0x54687261
//          340_Hel_Endgame = End Game           | 0x3334305f, 0x48656c5f, 0x456e6467
//          342_Hel_Endgame = End Game 2         | 0x3334325f, 0x48656c5f, 0x456e6467
function _20_bytes_ascii_be_sequence_id() => dword_be(0x5AC880)

// $5ACBC8: [32-bit float] Dual Pistols Ammo
function dual_pistols_ammo() => float(0x5ACBC8)

// $5ACBD8: [32-bit float] Dual Pistols Ammo
function dual_pistols_ammo_2() => float(0x5ACBD8)

// $5ACBE0: [32-bit float] Submachine Guns Ammo
function submachine_guns_ammo() => float(0x5ACBE0)

// $5ACBE8: [32-bit float] Shotgun Ammo
function shotgun_ammo() => float(0x5ACBE8)

// $5ACBF0: [32-bit float] Assault Rifle Ammo
function assault_rifle_ammo() => float(0x5ACBF0)

// $5B5178: [32-bit] Game State
//          0x00 = Menus
//          0x01 = In-game
function game_state() => dword(0x5B5178)

// $5C7658: [32-bit] Cutscene Active Flag
//          0xffffffff = False
//          0x01 = True
function cutscene_active_flag() => dword(0x5C7658)

// $5FFB54: [32-bit float] Runtime
function runtime() => float(0x5FFB54)

// $60099C: [32-bit Pointer] Player Data
//          +0x638 | [32-bit float] Lara's Health
//          1000.0 = Full
//          .+0x80 | [32-bit] Holding Object Active Flag
//          0x00 = True
//          0x01 = False
function player_data() => dword(0x60099C)
function laras_health() => float((player_data() & 0x1FFFFFF) + 0x000638)

// $6020C0: [32-bit] Current Player Location
//          Note: The values generally start highest at the beginning of a section then decreases as you progress.
//          
//          0x00 = Menu / Lvl Transition
//          0xffffffff = Loading
//          ────── Prologue ──────────
//          0x20 = Foyer Main Hall (End)
//          0x21 = Bedroom Hall End
//          0x22 = Bedroom Hall Start
//          0x23 = Bedroom Main
//          0x24 = Secret Hall End
//          0x25 = Secret Hall (Intro)
//          ────── Mediterranean ──────────
//          0x26 = Kraken Room Left
//          0x27 = Kraken Room Lock
//          0x28 = Kraken Room Main
//          0x29 = Kraken Room Right
//          0x2a = Kraken Stairs End
//          0x2b = Sinking Hall (End)
//          0x2c = Ship Engine Hall
//          0x2d = Ship Temp Hall
//          0x2e = Ship Exterior
//          0x2f = Transition Tunnel
//          0x30 = Escape Hall End
//          0x31 = Escape Hall Start
//          0x32 = Balders Tomb End
//          0x33 = Balders Hall End
//          0x34 = Balders Hall Start
//          0x35 = Kraken Stairs Start
//          0x36 = Kraken Entrance
//          0x37 = Entrance Hall End
//          0x38 = Entrance Hall Start
//          0x39 = Sea (Intro)
//          ────── Coastal Thailand ──────────
//          0x3a = Flush Tunnel Start (End)
//          0x3b = Flush Tunnel Start
//          0x3c = Map Room
//          0x3d = Naga End
//          0x3e = Naga Hall
//          0x3f = Naga Start
//          0x40 = Shiva Puzzle
//          0x41 = Shiva Buffer
//          0x42 = Hindu Hall
//          0x43 = Jungle Hub
//          0x44 = Jungle Buffer
//          0x45 = Cliff Hall
//          0x46 = Cliff Climb (Intro)
//          ────── Croft ──────────
//          0x47 = Foyer Main Hall (End)
//          0x48 = Bedroom Hall End
//          0x49 = Bedroom Hall Start
//          0x4a = Bedroom Main
//          0x4b = Secret Hall End
//          0x4d = Secret Hall Start
//          0x4e = Secret Chamber
//          0x4f = Chamber Lock
//          0x50 = Chapel Back
//          0x51 = Chapel Left Wing Back
//          0x52 = Chapel Left Wing
//          0x53 = Chapel Front
//          0x54 = Chapel Hall End
//          0x55 = Chapel Hall Start
//          0x56 = Cavern Hall Start (Intro)
//          ────── Southern Mexico ──────────
//          0x57 = Cliff Lock
//          0x58 = Cliff Lock
//          0x59 = Ball Court Trail
//          0x5a = Cliff Trail
//          0x5b = Cliff Trail Lock
//          0x5c = Council Cold Hall
//          0x5d = Cold Buffer
//          0x5e = Council Hub
//          0x5f = Cold Buffer
//          0x60 = Cold Climb
//          0x61 = Cold Panther Hall
//          0x62 = Belt Room
//          0x63 = Belt Lock
//          0x64 = Belt Foyer
//          0x65 = Belt Hall
//          0x66 = Council Belt
//          0x67 = Council Hall (End)
//          0x68 = Council Buffer
//          0x69 = Council Nighthall
//          0x6a = Goo Room
//          0x6b = Goo Buffer
//          0x6c = Goo Hall
//          0x6d = Council Hub Buffer
//          0x6e = Council Voyeur
//          0x6f = Council Hall
//          0x70 = Ball Court Trail
//          0x71 = Trail North
//          0x72 = Trail Start (Intro)
//          0x73 = Temple Return
//          0x74 = Temple
//          0x75 = Temple End
//          0x76 = Temple Hall
//          0x77 = Temple Mid
//          0x78 = Temple Mid Lock
//          0x79 = Temple Lock
//          0x7a = Trail South
//          ────── Jan Mayen Island ──────────
//          0x7c = Hammer Gear B
//          0x7d = Gear Hall B
//          0x7e = Hammer Hall Start
//          0x7f = Hammer Gear D
//          0x80 = Gear Hall D
//          0x81 = Hammer Gear A
//          0x82 = Gear Hall A
//          0x83 = Hammer Hall End (End)
//          0x84 = Hammer Hall Mid
//          0x85 = Hammer Hall Buffer Start
//          0x86 = Maze Hall
//          0x87 = Arctic Maze End
//          0x88 = Arctic Maze Mid
//          0x89 = Arctic Maze
//          0x8a = Valgrind Hall End
//          0x8b = Valgrind Hall End
//          0x8c = Valgrind Hall Mid
//          0x8d = Valgrind Hall Start
//          0x8e = Arctic Ice End
//          0x9f = Arctic Ice Mid
//          0x90 = Arctic Ice Start (Intro)
//          ────── Andaman Sea ──────────
//          0x91 = Ship Engine Hall (End)
//          0x92 = Ship Temp Hall
//          0x93 = Ship Exterior (start)
//          ────── Arctic Sea ──────────
//          0x00 = End Game finally
//          0x94 = Yggrdasil End
//          0x95 = Yggrdasil Hall 02 C
//          0x96 = Yggrdasil Hall 02 B
//          0x98 = Yggdrasil Hall 02 End
//          0x99 = Yggdrasil Hall
//          0x9a = Helheim Hall
//          0x9b = Helheim Hall
function current_player_location() => dword(0x6020C0)

// $67D2D0: [32-bit Pointer] Enemy Data 1
//          +0xfa4 | [32-bit float] Enemy's Health
//          ────── Naga ──────
//          400.0 = Full
//          0.0 = Dead
//          ────── Tiger Thralls ──────
//          500.0 = Full
//          0.0 = Dead
//          ────── Yeti Thralls ──────
//          900.0 = Full
//          0.0 = Dead
//          ────── Mayan Thrall ──────
//          600.0 = Full
//          0.0 = Dead
//          .+0xfb8 | [32-bit] Enemy Status
//          0x00 = Alive
//          0x01 = Dead
function enemy_data_1() => dword(0x67D2D0)
function enemys_health() => float((enemy_data_1() & 0x1FFFFFF) + 0x000FA4)

// $67D2D4: [32-bit Pointer] Enemy Data 2
//          +0xfa4 | [32-bit float] Enemy's Health
//          ────── Naga ──────
//          400.0 = Full
//          0.0 = Dead
//          ────── Tiger Thralls ──────
//          500.0 = Full
//          0.0 = Dead
//          ────── Yeti Thralls ──────
//          900.0 = Full
//          0.0 = Dead
//          ────── Mayan Thrall ──────
//          600.0 = Full
//          0.0 = Dead
//          .+0xfb8 | [32-bit] Enemy Status
//          0x00 = Alive
//          0x01 = Dead
function enemy_data_2() => dword(0x67D2D4)
function enemys_health_2() => float((enemy_data_2() & 0x1FFFFFF) + 0x000FA4)

// $154A3F6: [8-bit] Treasure Hunt Mode
//           0x01 = Mediterranean Sea
//           0x02 = Costal Thailand
//           0x03 = Croft Manor
//           0x04 = Southern Mexico
//           0x05 = Jan Mayen Island
//           0x06 = Andaman Sea
//           0x07 = Arctic Sea
function treasure_hunt_mode() => byte(0x154A3F6)

// $154A3F8: [32-bit] Level ID
//           0x00 = Prologue
//           0x01 = Mediterranean
//           0x02 = Coastal Thailand
//           0x03 = Croft Manor
//           0x03 = Southern Mexico (yes 0x03 cause why not)
//           0x05 = Jan Mayen Island
//           0x06 = Andaman Sea
//           0x07 = Arctic Sea
//           0x08 = End Game Scene..
function level_id() => dword(0x154A3F8)

// $15890A8: [32-bit] Mediterranean: Treasures Collected
function mediterranean_treasures_collected() => dword(0x15890A8)

// $15890AC: [32-bit] Coastal Thailand: Treasures Collected
function coastal_thailand_treasures_collected() => dword(0x15890AC)

// $15890B0: [32-bit] Croft Manor:Treasures Collected
function croft_manor_treasures_collected() => dword(0x15890B0)

// $15890B4: [32-bit] Southern Mexico: Treasures Collected
function southern_mexico_treasures_collected() => dword(0x15890B4)

// $15890B8: [32-bit] Jan Mayen Island: Treasures Collected
function jan_mayen_island_treasures_collected() => dword(0x15890B8)

// $15890BC: [32-bit] Andaman Sea: Treasures Collected
function andaman_sea_treasures_collected() => dword(0x15890BC)

// $15890C0: [32-bit] Arctic Sea: Treasures Collected
function arctic_sea_treasures_collected() => dword(0x15890C0)

achievement(
    title = "No Illusions", points = 5, type="progression",
    description = "Complete the Prologue",
    id = 549124, badge = "623824", published = "10/6/2025 8:48:13 AM", modified = "10/6/2025 8:48:13 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3031305F && prev(level_id()) == 0x00 && level_id() == 0x01
)

achievement(
    title = "Fireproof Raider", points = 5,
    description = "Complete the Prologue from start to finish without taking damage",
    id = 549144, badge = "623844", published = "10/6/2025 9:50:41 AM", modified = "10/6/2025 5:42:31 PM",
    trigger = trigger_when((once(once(once(once(once(current_player_location() == 0x24) &&
                  current_player_location() == 0x23) && current_player_location() == 0x22) &&
                  current_player_location() == 0x21) && current_player_location() == 0x20) &&
                  prev(_20_bytes_ascii_be_sequence_id()) == 0x3030315F && _20_bytes_ascii_be_sequence_id() == 0x3031305F)
              ) && disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
              unless((current_player_location() == 0x00) || level_id() != 0x00 || game_state() == 0x00) &&
              (always_false() || (never((cutscene_active_flag() == 0x01 && current_player_location() == 0x25))))
)

achievement(
    title = "The Path to Avalon", points = 10, type="progression",
    description = "Complete the Mediterranean",
    id = 549125, badge = "623825", published = "10/6/2025 8:48:13 AM", modified = "10/6/2025 8:48:13 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3037305F && prev(level_id()) == 0x01 && level_id() == 0x02
)

achievement(
    title = "Deep Sea Explorer", points = 10,
    description = "Collect all the Relics in the Mediterranean",
    id = 549126, badge = "623826", published = "10/6/2025 8:48:13 AM", modified = "10/6/2025 8:48:13 AM",
    trigger = (treasure_hunt_mode() == 0x01 || level_id() == 0x01) && prev(mediterranean_treasures_collected()) == 0x07 &&
              measured(mediterranean_treasures_collected() == 0x08)
)

achievement(
    title = "The Ancient World", points = 10, type="progression",
    description = "Complete Coastal Thailand",
    id = 549127, badge = "623827", published = "10/6/2025 8:48:14 AM", modified = "10/6/2025 8:48:14 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3131305F && prev(level_id()) == 0x02 && level_id() == 0x03
)

achievement(
    title = "Temple Explorer", points = 10,
    description = "Collect all Relics in Coastal Thailand",
    id = 549128, badge = "623828", published = "10/6/2025 8:48:14 AM", modified = "10/6/2025 8:48:14 AM",
    trigger = (treasure_hunt_mode() == 0x02 || level_id() == 0x02) &&
              prev(coastal_thailand_treasures_collected()) == 0x03 &&
              measured(coastal_thailand_treasures_collected() == 0x04)
)

achievement(
    title = "Serpent Slayer", points = 10, type="missable",
    description = "Defeat all quadruped lizards in Coastal Thailand trap room without taking damage",
    id = 549129, badge = "623829", published = "10/6/2025 8:48:14 AM", modified = "10/6/2025 6:05:15 PM",
    trigger = trigger_when((prev(current_player_location()) == 0x3E && current_player_location() == 0x3D)) &&
              disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
              (always_false() || (never((current_player_location() < 0x3D || current_player_location() > 0x3E))))
)

achievement(
    title = "Protected by the Dead", points = 10, type="progression",
    description = "Complete Croft Manor",
    id = 549130, badge = "623830", published = "10/6/2025 8:48:14 AM", modified = "10/6/2025 8:48:14 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3137305F && level_id() == 0x03 &&
              prev(current_player_location()) != 0x72 && current_player_location() == 0x72
)

achievement(
    title = "Crypt Explorer", points = 10,
    description = "Collect all Relics in Croft Manor",
    id = 549131, badge = "623831", published = "10/6/2025 8:48:15 AM", modified = "10/6/2025 8:48:15 AM",
    trigger = (treasure_hunt_mode() == 0x03 || level_id() == 0x03) && prev(croft_manor_treasures_collected()) == 0x05 &&
              measured(croft_manor_treasures_collected() == 0x06)
)

achievement(
    title = "The Mane Event", points = 10, type="missable",
    description = "Defeat both Tiger Thralls within their area at Croft Manor without taking damage",
    id = 549132, badge = "623832", published = "10/6/2025 8:48:15 AM", modified = "10/6/2025 8:48:15 AM",
    trigger = trigger_when(tally(2, once((prev(enemys_health()) >= 1.0) && enemys_health() == 0.0),
                  once((prev(enemys_health_2()) >= 1.0) && enemys_health_2() == 0.0))
              ) && disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
              (always_false() || (never(current_player_location() != 0x4E) && never(laras_health() == 0.0)))
)

achievement(
    title = "The Midgard Serpent", points = 10, type="progression",
    description = "Complete Southern Mexico",
    id = 549133, badge = "623833", published = "10/6/2025 8:48:15 AM", modified = "10/6/2025 8:48:15 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3232305F && prev(level_id()) == 0x03 && level_id() == 0x05
)

achievement(
    title = "Underworld Explorer", points = 10,
    description = "Collect all Relics in Southern Mexico",
    id = 549134, badge = "623834", published = "10/6/2025 8:48:16 AM", modified = "10/6/2025 8:48:16 AM",
    trigger = (treasure_hunt_mode() == 0x04 || level_id() == 0x03) &&
              prev(southern_mexico_treasures_collected()) == 0x05 &&
              measured(southern_mexico_treasures_collected() == 0x06)
)

achievement(
    title = "No Scratch", points = 5, type="missable",
    description = "Defeat the Black Panther within its area in Southern Mexico using just the dual pistols without taking damage",
    id = 549135, badge = "623835", published = "10/6/2025 8:48:16 AM", modified = "10/6/2025 8:48:16 AM",
    trigger = trigger_when(once((prev(enemys_health()) >= 1.0) && enemys_health() == 0.0)) &&
              disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
              disable_when(assault_rifle_ammo() < prev(assault_rifle_ammo())) &&
              (always_false() || (never(current_player_location() != 0x77) && never(laras_health() == 0.0)))
)

achievement(
    title = "Blast from Above", points = 5, type="missable",
    description = "Defeat the first Mayan Thrall in Southern Mexico using only grenades without taking damage",
    id = 549136, badge = "623836", published = "10/6/2025 8:48:16 AM", modified = "10/6/2025 8:48:16 AM",
    trigger = trigger_when(once((prev(enemys_health()) >= 1.0) && enemys_health() == 0.0)) &&
              disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
              disable_when(once(once((once(dual_pistols_ammo() < prev(dual_pistols_ammo()))) ||
                  dual_pistols_ammo_2() < prev(dual_pistols_ammo_2())) ||
                  submachine_guns_ammo() < prev(submachine_guns_ammo())) || shotgun_ammo() < prev(shotgun_ammo())
              ) && disable_when(assault_rifle_ammo() < prev(assault_rifle_ammo())) &&
              (always_false() || (never((current_player_location() < 0x65 || current_player_location() > 0x66)) &&
                never(laras_health() == 0.0)))
)

achievement(
    title = "Valhalla", points = 10, type="progression",
    description = "Complete Jan Mayen Island",
    id = 549137, badge = "623837", published = "10/6/2025 8:48:16 AM", modified = "10/6/2025 8:48:16 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3235305F && prev(level_id()) == 0x05 && level_id() == 0x06
)

achievement(
    title = "Runic Explorer", points = 10,
    description = "Collect all Relics in Jan Mayen Island",
    id = 549138, badge = "623838", published = "10/6/2025 8:48:17 AM", modified = "10/6/2025 8:48:17 AM",
    trigger = (treasure_hunt_mode() == 0x05 || level_id() == 0x05) &&
              prev(jan_mayen_island_treasures_collected()) == 0x02 &&
              measured(jan_mayen_island_treasures_collected() == 0x03)
)

achievement(
    title = "The Beast of Jan Mayen", points = 10, type="missable",
    description = "Defeat the Yeti Thrall within its area on Jan Mayen Island without taking damage",
    id = 549139, badge = "623839", published = "10/6/2025 8:48:17 AM", modified = "10/12/2025 4:07:32 AM",
    trigger = once(current_player_location() == 0x7F && enemys_health() == 900.0) &&
              trigger_when(once((prev(enemys_health()) >= 1.0) && enemys_health() == 0.0)) &&
              disable_when(level_id() == 0x05 || treasure_hunt_mode() == 0x05) && current_player_location() == 0x7F &&
                  prev(laras_health()) >= laras_health( && laras_health() < prev(laras_health())) &&
              unless(current_player_location() != 0x7F) &&
              (always_false() || (never((cutscene_active_flag() == 0x01 && current_player_location() == 0x7F))))
)

achievement(
    title = "Rituals Old", points = 5, type="progression",
    description = "Complete Andaman Sea",
    id = 549140, badge = "623840", published = "10/6/2025 8:48:17 AM", modified = "10/6/2025 8:48:17 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3237305F && prev(level_id()) == 0x06 && level_id() == 0x07
)

achievement(
    title = "Smooth Sailing", points = 5,
    description = "Complete Andaman Sea without taking damage",
    id = 549141, badge = "623841", published = "10/6/2025 8:48:17 AM", modified = "10/6/2025 8:48:17 AM",
    trigger = never((level_id() != 0x07 && current_player_location() < 0x91) || current_player_location() > 0x93) &&
              never(laras_health() == 0.0) &&
              ((trigger_when((prev(_20_bytes_ascii_be_sequence_id()) != 0x3237305F && _20_bytes_ascii_be_sequence_id() == 0x3237305F)) &&
                disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
                unless((level_id() == 0x08 && treasure_hunt_mode() != 0x06))) ||
               (trigger_when((prev(_20_bytes_ascii_be_sequence_id()) != 0x3237305F && _20_bytes_ascii_be_sequence_id() == 0x3237305F)) &&
                disable_when((prev(laras_health()) >= laras_health()) && laras_health() < prev(laras_health())) &&
                unless(level_id() != 0x06)))
)

achievement(
    title = "Out of Time", points = 10, type="win_condition",
    description = "Complete Arctic Sea",
    id = 549142, badge = "623842", published = "10/6/2025 8:48:18 AM", modified = "10/6/2025 8:48:18 AM",
    trigger = _20_bytes_ascii_be_sequence_id() == 0x3334325F && level_id() == 0x08 &&
              prev(current_player_location()) == 0x94 && current_player_location() == 0x00
)

achievement(
    title = "Mythic Explorer", points = 10,
    description = "Collect all Relics in the Arctic Sea",
    id = 549143, badge = "623843", published = "10/6/2025 8:48:18 AM", modified = "10/6/2025 8:48:18 AM",
    trigger = (treasure_hunt_mode() == 0x07 || level_id() == 0x07) && prev(arctic_sea_treasures_collected()) == 0x03 &&
              measured(arctic_sea_treasures_collected() == 0x04)
)

rich_presence_conditional_display(current_player_location() == 0x00, "In the menus")

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x00), " Level: Prologue • Health: {0}% • Time: {1}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x01), " Level: Mediterranean • Health: {0}% • Relics: {1}/8 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", mediterranean_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x02), " Level: Coastal Thailand • Health: {0}% • Relics: {1}/4 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", coastal_thailand_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && current_player_location() >= 0x47 && current_player_location() <= 0x56), " Level: Croft Manor • Health: {0}% • Relics: {1}/6 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", croft_manor_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && current_player_location() >= 0x57 && current_player_location() <= 0x7A), " Level: Southern Mexico • Health: {0}% • Relics: {1}/6 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", southern_mexico_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x05), " Level: Jan Mayen Island • Health: {0}% • Relics: {1}/3 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", jan_mayen_island_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x06), " Level: Andaman Sea • Health: {0}% • Relics: {1}/0 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", andaman_sea_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x07), " Level: Arctic Sea • Health: {0}% • Relics: {1}/4 • Time: {2}",
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Number", arctic_sea_treasures_collected()),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x00 && level_id() == 0x08), "Credits")

rich_presence_conditional_display((treasure_hunt_mode() == 0x01 && level_id() == 0x08), "Treasure Hunt • Mediterranean • Relics: {0}/8 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", mediterranean_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x02 && level_id() == 0x08), "Treasure Hunt • Coastal Thailand • Relics: {0}/4 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", coastal_thailand_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x03 && level_id() == 0x08), "Treasure Hunt • Croft Manor • Relics: {0}/6 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", croft_manor_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x04 && level_id() == 0x08), "Treasure Hunt • Southern Mexico • Relics: {0}/6 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", southern_mexico_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x05 && level_id() == 0x08), "Treasure Hunt • Jan Mayen Island • Relics: {0}/3 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", jan_mayen_island_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x06 && level_id() == 0x08), "Treasure Hunt • Andaman Sea • Relics: {0}/0 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", andaman_sea_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_conditional_display((treasure_hunt_mode() == 0x07 && level_id() == 0x08), "Treasure Hunt • Arctic Sea • Relics: {0}/4 • Health: {1}% • Time: {2}",
    rich_presence_value("Number", arctic_sea_treasures_collected()),
    rich_presence_value("Float0", laras_health() / 0x0A, format="FlOAT1"),
    rich_presence_value("Seconds", runtime(), format="SECS")
)

rich_presence_display("In the menus")
