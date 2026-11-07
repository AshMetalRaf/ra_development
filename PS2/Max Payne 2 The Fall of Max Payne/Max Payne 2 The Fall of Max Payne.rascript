// Max Payne 2: The Fall of Max Payne
// #ID = 19130

// $592098: [32-bit] Current Player Location
//          Note: Shared across multiple Lvls.
//          ───────────────────────── Abbr. ─────────────────────
//          Part Pt.# | Chapter C# | Prologue P0 | Continued #a-b
//          
//          0x00 = Pt.1: P0 Hosp.Corr. | C1 Whse.(End) | C2 Start | C3 Interrog.Rm.
//          C4b Ledge | C5 Basement | C6 Streets | C7a Apt.2 up | C7b Elevator(End)
//          Pt.2: P0 Cells | C1 Garage 2F | C2a Outdoor | C2b Lobby Br.
//          C3 Hallway | C4 Start | C5 Const. Outdoor | C6 Const. Bridge (End)
//          Pt.3: P0 Prison Stairs | C1 Hosp. Surg. | C2 Hall | C3a 3F Apt. | C3b Streets | C4 Backdoor
//          C5 Burn. Whse. 2F | C6 Long hallway | C7a Start | C8a Cellar | C8b Vladimir fight (End)
//          0x01 = Pt.1: P0 Hosp. ICU Room 1 | C1 Whse. | C3 Morgue Rm.
//          C4a Apts. Stairs | C4b Stairs | C5 Basement | C7a Balcony (End) | C7b Elevator
//          Pt.2: P0 Garage (End) | C1 Streets | C2a Garage (Start) | C2b Start Room
//          C3 Hallway | C4 Const. Site (End) | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 Prison Cells | C1 Hosp. Room | C2 Parking Lot | C3a 3F Apt. | C3b Streets
//          C4 Stairs | C5 Whse. Backdoor | C6 Interrog. Rm | C7a Patio | C7b Balcony | C8b Stairs
//          0x02 = Pt.1: P0 Hosp. Surgery | C1 Whse. 2F Elevator | C2 Backstage Enemies Rm. | C3 Apts. Stairs
//          C4a Fire Exit | C4b Apts. Hall | C5 Stairs | C6 Streets | C7b Secret Area (Memoriam)
//          Pt.2: P0 Offices (Start) | C1 Start | C2a 1F-3F Hallway | C2b Room w/ Bodies (End)
//          C3 Start | C4 Const. Site Scales Stairs | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 PD Offices | C1 Hosp. Lobby | C2 Stairs | C3a 2F Apt. | C3b Streets
//          C4 2F Apt. | C5 2F Burn. Whse. (Start) | C6 Hallway | C8a Cellar | C8b Living Rm.
//          0x03 = Pt.1: P0 Hosp. Lobby | C1 Whse. 2F | C2 Back Entrance (End) | C3 Apts. Hall
//          C4 Apts. Hall | C5 Stairs | C6 Garage | C7b Start, Outdoor Lift, Plasma TV Secret Scene
//          Pt.2: P0 Lockup Room | C1 Streets (End) | C2a 3F Hallway | C2b 5F Secretary
//          C3 Roof (End) | C4 Const. Site | C5 Const. Site | C6 Const. Site (Start)
//          Pt.3: P0 PD Offices (End) | C1 Hosp. ICU | C2 Stairs | C3a Outdoor | C3b Streets
//          C4 Outdoor | C5 Burning Whse. | C6 PD Office | C7a Hallway (End) | C7b 2F | C8b Start
//          0x04 = Pt.1: C1 Parking Lot | C2 Backstage | C4a Apts. Hall | C4b Stairs
//          C5 1st Floor | C6 Start | C7a Apt.2 | C7b Lobby
//          Pt.2: P0 Cells | C1 Intro Comic | C2a 1F-3F Hallway | C2b 2F Offices | C3 Hallway
//          C4 Const. Site | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 Hospital Hall | C1 Hosp. Lobby | C2 Backstage | C3a 3F Apt. | C3b Streets | C4 Entrance
//          C5 Burning Whse. | C6 Maze | C7a Hallway | C7b Hallway | C8a Cellar Start | C8b Bedroom
//          0x05 = Pt.1: C1 Warehouse | C2 4F Room | C4a Apts. Hall | C4b Elevator Hall
//          C5 A3 Apts. Hall | C6 Alleyway | C7a Apt. Piano Rm. | C7b Kitchen (Plasma TV Secret)
//          Pt.2: P0 Cells | C1 Streets | C2a 1F-3F Hallway | C2b 2F Offices | C3 Hallway
//          C4 Construction Site | C5 Start
//          Pt.3: P0 Prison Cells | C1 Hospital Hall | C3 Outdoor, 2F Apt. | C4 Parking Lot
//          C5 Stairs | C6 Hallway | C7a Manor entrance | C8a Cellar
//          0x06 = Pt.1: C1 Whse. 2F | C2 2F Stairs | C3 Streets | C4a Apts. Hall | C4b Inside Apt.
//          C5 Start | C6 Mona's Room (End) | C7a Lobby | C7b Apt.
//          Pt.2: P0 Stairs | C1 Streets | C2a 3F Broken Tiles | C2b 3F Offices | C3 Offices
//          C5 Const. Site Drop Down (End) | C6 Const. Site
//          Pt.3: P0 Prison Stairs | C1 Hosp. Reception | C2 3F Storage | C3 Outdoor
//          C4 Warehouse | C5 Burning Whse. | C7b Backyard (End) | C8a Cellar
//          0x07 = Pt.1: P0 Hosp. Reception | C1 Whse. Elevator | C2 3F | C4a Apts. Hall | C4b Fancy Apt. Dining
//          C5 Ledge, Outdoor (End) | C6 Elevator | C7a Elevator Start | C7b Apt.
//          Pt.2: P0 Reception | C1 Streets | C2a Room | C2b 3F Offices | C3 Offices
//          C4 Const. Site Stairs | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 Prison Cells | C2 Hall | C4 Backdoor | C5 2F Burn. Whse. (End)
//          C6 Hallway (End) | C7a Library | C7b Hallway | C8a Cellar
//          0x08 = Pt.1: C1 Whse. 2F | C2 4F | C3 Max Apt. | C4a Apts. Hall | C4b Fancy Apt. Living Rm.
//          C5 Basement | C6 Outdoor | C7a Apt. | C7b Lobby
//          Pt.2: P0 Interrog. Lineup | C1 Garage Backstage | C2a 2F-3F Room | C2b 4F Offices
//          C3 Offices | C4 Const. Site | C5 Const. Site | C6 Const. Site Stairs
//          Pt.3: P0 Prison Stairs | C3b Alleyway | C4 Car Shop Garage (End) | C5 Burning Whse.
//          C7a building entrance | C7b Hallway 2F
//          0x09 = Pt.1: P0 Hosp. Elevator | C1 Whse. 2F | C2 Roof | C3 Max Apt, Ending Scene | C4b Apts. Hall
//          C5 Stairs | C7a Apt. 3 | C7b Lobby
//          Pt.2: P0 Rec Room | C2 Offices | C2b 5F Offices | C3 Hallway | C6 Const. Site
//          Pt.3: P0 Prison Cells | C1 Hosp. Recovery | C2 Stairs | C3a 3F Balcony | C3b Alleyway
//          C4 Start | C5 Burning Whse.
//          0x0a = Pt.1: P0 Hosp. 2F (End) | C1 Whse. | C2 Back Entrance | C4a Apts. Stairs | C4b Basement
//          C5 Stairs | C6 Dark Spinning Rm. | C7b Apt.
//          Pt.2: P0 Briefing Room | C1 Backstage Rm. | C2a 3F Room | C2b Stairs | C3 Hallway
//          C4 Const. Site, Stairs | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 Prison Bathroom | C1 Hosp. Hallway | C2 3F Office (End) | C4 Storage
//          C5 2F Burn. Whse. | C6 Start | C7a Rm. | C7b Hallway 2F
//          0x0b = Pt.1: C1 Warehouse | C2 Back Room | C4a Neighbors Apt. | C4b Basement
//          C5 Stairs | C6 Underground | C7b Apt. into Window
//          Pt.2: P0 Cells | C2a 3F Room | C2b Stairs | C3 Offices
//          C5 Const. Site | C6 Const. Site Outdoor
//          Pt.3: P0 Prison Bathroom | C2 Stairs | C3a Stairs | C3b Streets (End) | C4 Office | C6 Start
//          C7b Lobby (Start) | C7b Balcony
//          0x0c = Pt.1: P0 Hosp. ICU Room 1 | C1 Whse. 2F | C2 Backstage Hall | C4 Sniper's Hideout
//          C5 Stairs | C6 Underground
//          Pt.2: P0 Cells | C1 Lever Room | C2 Inside Building | C3 Hallway | C6 Const. Site
//          Pt.3: P0 Prison Cells Hall | C1 Hosp. Start | C2 Backstage Storage
//          C3 Stairs | C4 Storage | C7b CCTV Rm.
//          0x0d = Pt.1: C1 Whse. 2F | C2 Backstage Room | C4a Neighbors Apt. | C4b Inside Apt. (End)
//          C6 Spinning Floor
//          Pt.2: P0 Stairs to Parking Lot | C2 3F Hallway | C5 Const. Site | C6 Const. Site
//          Pt.3: P0 Prison Cells Hall | C1 Hosp. Parking (End) | C2 2F Storage | C3a Building Stairs
//          C3b Start | C4 2F Backyard | C7b Guest Rm.
//          0x0e = Pt.1: C1 Whse. 2F Office | C2 Backstage Room | C4a Max's Apt. | C4b Fancy Apt. Bedroom
//          C5 Stairs | C6 Streets
//          Pt.2: C1 Streets | C2a 3F Hallway | C2b Stairs
//          Pt.3: P0 Hosp. Start | C2 Attic Storage | C3a Stairs | C3b Stairs
//          0x0f = Pt.1: C1 Whse. 2F | C2 4F Stairs | C4a Neighbor's Apt. | C4b Fancy Apt.
//          C5 Burnt Apt. Living Rm | C6 Underground Bathroom
//          Pt.2: C1 Parking Lot | C2a 3F Offices | C2b 5F Offices
//          Pt.3: P0 Hosp. Hall | C1 Hosp. Control Rm | C2 Attic | C3a Stairs | C3b Stairs | C4 2F
//          0x10 = Pt.1: C1 Whse. Stairs | C4a Neighbor's Apt. | C4b Fancy Apt. Bathroom
//          C5 Burnt Apt. Bathroom | C6 Backstage
//          Pt.2: C2a 3F Small Jump Room (End) | C2b Elevator
//          Pt.3: C1 Hosp. Stairs | C2 Kitchen | C3 Stairs | C4 2F Apt. Living Rm
//          0x11 = Pt.1: C1 Warehouse | C2 2F | C4a Max Apt. | C4b Inside Apt.
//          C5 Stairs | C6 Underground
//          Pt.2: C2 Backdoor 2
//          Pt.3: C1 Hosp. 3F | C2 Storage | C3a Building Stairs | C3b Stairs | C4 Car Shop
//          0x12 = Pt.1: C1 Warehouse | C2 3F Stairs | C4a Max Apt. | C4b Elevator
//          C5 Stairs | C6 Streets 2
//          Pt.2: C2 Backdoor
//          Pt.3: C3 Stairs | C4 Car Shop 2F
//          0x13 = Pt.1: C2 1F Stairs | C4a Max Apt. | C4b Stairs | C5 Burnt Apt. Entrance | C6 Mini Tunnel
//          Pt.2: C2 2F
//          Pt.3: C1 Hosp. Lobby | C2 Hall | C3a 2F Apt. | C3b Stairs
//          0x14 = Pt.1: C4a Old Lady's Apt. Entrance | C4b Stairs | C5 Burnt Apt. | C6 Elevator
//          Pt.2: C2 Lobby
//          Pt.3: C1 Hosp. ICU Room 1 | C2 Start | C3a 2F Apt. | C3b Stairs
//          0x15 = Pt.1: C4a Old Lady's Apt. Guests | C4b Stairs | C5 Burnt Apt. Storage | C6 Underground
//          Pt.2: C2 Hallway
//          Pt.3: C1 Hosp. Offices | C3 2F Apt. (End)
//          0x16 = Pt.1: C4 Old Lady's Apt. Bathroom
//          Pt.2: C2 Stairs
//          Pt.3: C1 Hosp. Room | C3 Stairs
//          0x17 = Pt.1: C4 Old Lady's Apt. Living Rm
//          Pt.2: C2 Stairs
//          Pt.3: C1 Hosp. X-ray Rm | C3 Garage Start
//          0x18 = Pt.1: C4 Sniper's Hideout Entrance
//          Pt.2: C2 Stairs
//          Pt.3: C1 Hosp. Kitchen | C3 2F Apt.
//          0x19 = Pt.1: C4 Sniper's Hideout Bathroom
//          Pt.2: C2 Hallway
//          Pt.3: C1 Hosp. Stairs | C3 2F Apt. Bathroom
//          0x1a = Pt.2: C2 3F Meeting Room
//          Pt.3: C3 Stairs
//          0x1b = Pt.3: C3 Stairs
//          0x1c = Pt.2: C2 Hallway
//          Pt.3: C3 Stairs
//          0x1d = Pt.2: C2 TV Room
//          Pt.3: C3 Stairs
//          0x1e = Pt.2: C2 Meeting Room
//          Pt.3: C3 2F Apt.
//          0x1f = Pt.2: C2 Room
//          Pt.3: C3 2F Apt. Bathroom
//          0x20 = Pt.2: C2 Waiting Room
//          Pt.3: C3 Garage
//          0x21 = Pt.2: C2 2F Waiting Room
//          Pt.3: C3 Stairs
//          0x22 = Pt.2: C2 Elevators
//          Pt.3: C3 Stairs
//          0x23 = Pt.3: C3 2F Apt.
//          0x24 = Pt.3: C3 2F Apt.
//          0xffffffff = Loading
function current_player_location() => dword(0x592098)

P3P0Lookup = {
    0: "NYPD Precinct",
    1: "NYPD Precinct",
    2: "NYPD Precinct",
    3: "NYPD Precinct",
    0x04: "New York Memorial Hospital",
    5: "NYPD Precinct",
    6: "NYPD Precinct",
    7: "NYPD Precinct",
    8: "NYPD Precinct",
    9: "NYPD Precinct",
    10: "NYPD Precinct",
    11: "NYPD Precinct",
    12: "NYPD Precinct",
    13: "NYPD Precinct",
    14: "New York Memorial Hospital",
    15: "New York Memorial Hospital",
}

// $5ABA30: [32-bit float] Background Audio Volume Scale
//          1.0 = Normal
//          0.0 = Voiceover Active (audio ducked)
function background_audio_volume_scale() => float(0x5ABA30)

// $5B9220: [10 bytes ASCII] US Serial
//          SLUS-20814
function _10_bytes_ascii_us_serial() => dword_be(0x5B9220)

// $5FC0F0: [25 bytes ASCII] Location ID
//          Format:BE
//          
//          ───────────────── Campaign Mode ─────────────────
//          ───────────────── Part I ─────────────────
//          03_First_Hospital (Prologue)
//          └──> = 0x30335f46, 0x69727374, 0x5f486f73, 0x70697461, 0x6c000000
//          04_Warehouse (Chapter 1)
//          └──> = 0x30345f57, 0x61726568, 0x6f757365
//          05_First_Vodka (Chapter 2)
//          └──> = 0x30355f46, 0x69727374, 0x5f566f64, 0x6b610000
//          06_First_Dream (Chapter 3)
//          └──> = 0x30365f46, 0x69727374, 0x5f447265, 0x616d0000
//          07_Maxs_Apartment_split1 (Chapter 4)
//          └──> = 0x30375f4d, 0x6178735f, 0x41706172, 0x746d656e, 0x745f7370, 0x6c697431
//          07_Maxs_Apartment_split2 (Chapter 4 Continued)
//          └──> = 0x30375f4d, 0x6178735f, 0x41706172, 0x746d656e, 0x745f7370, 0x6c697432
//          07_Maxs_Apartment_B (Chapter 5)
//          └──> = 0x30375f4d, 0x6178735f, 0x41706172, 0x746d656e, 0x745f4200
//          08_First_Address_Unknown (Chapter 6)
//          └──> = 0x30385f46, 0x69727374, 0x5f416464, 0x72657373, 0x5f556e6b, 0x6e6f776e
//          09_Upper_East_Side_split1 (Chapter 7)
//          └──> = 0x30395f55, 0x70706572, 0x5f456173, 0x745f5369, 0x64655f73, 0x706c6974, 0x31000000
//          09_Upper_East_Side_split2 (Chapter 7 Continued)
//          └──> = 0x30395f55, 0x70706572, 0x5f456173, 0x745f5369, 0x64655f73, 0x706c6974, 0x32000000
//          ───────────────── Part II ─────────────────
//          10_Police_Station (Prologue)
//          └──> = 0x31305f50, 0x6f6c6963, 0x655f5374, 0x6174696f, 0x6e000000
//          11_Second_Address_Unknown (Chapter 1)
//          └──> = 0x31315f53, 0x65636f6e, 0x645f4164, 0x64726573, 0x735f556e, 0x6b6e6f77, 0x6e000000
//          12_Condemned_Building_SP1 (Chapter 2)
//          └──> = 0x31325f43, 0x6f6e6465, 0x6d6e6564, 0x5f427569, 0x6c64696e, 0x675f5350, 0x31000000
//          12_Condemned_Building_SP2 (Chapter 2 Continued)
//          └──> = 0x31325f43, 0x6f6e6465, 0x6d6e6564, 0x5f427569, 0x6c64696e, 0x675f5350, 0x32000000
//          12_Condemned_Building_B (Chapter 3)
//          └──> = 0x31325f43, 0x6f6e6465, 0x6d6e6564, 0x5f427569, 0x6c64696e, 0x675f4200
//          13_Construction_Site (Chapter 4)
//          └──> = 0x31335f43, 0x6f6e7374, 0x72756374, 0x696f6e5f, 0x53697465
//          13_Construction_Site_B (Chapter 5)
//          └──> = 0x31335f43, 0x6f6e7374, 0x72756374, 0x696f6e5f, 0x53697465, 0x5f420000
//          13_Construction_Site_C (Chapter 6)
//          └──> = 0x31335f43, 0x6f6e7374, 0x72756374, 0x696f6e5f, 0x53697465, 0x5f430000
//          ───────────────── Part III ─────────────────
//          14_Second_Dream (Prologue)
//          └──> = 0x31345f53, 0x65636f6e, 0x645f4472, 0x65616d00
//          15_Second_Hospital (Chapter 1)
//          └──> = 0x31355f53, 0x65636f6e, 0x645f486f, 0x73706974, 0x616c0000
//          16_Second_Vodka (Chapter 2)
//          └──> = 0x31365f53, 0x65636f6e, 0x645f566f, 0x646b6100
//          17_Crackhouse_split1 (Chapter 3)
//          └──> = 0x31375f43, 0x7261636b, 0x686f7573, 0x655f7370, 0x6c697431
//          17_Crackhouse_split2 (Chapter 3 Continued)
//          └──> = 0x31375f43, 0x7261636b, 0x686f7573, 0x655f7370, 0x6c697432
//          18_Gognittis_Lot (Chapter 4)
//          └──> = 0x31385f47, 0x6f676e69, 0x74746973, 0x5f4c6f74
//          19_Third_Address_Unknown (Chapter 5)
//          └──> = 0x31395f54, 0x68697264, 0x5f416464, 0x72657373, 0x5f556e6b, 0x6e6f776e
//          20_Third_Dream (Chapter 6)
//          └──> = 0x32305f54, 0x68697264, 0x5f447265, 0x616d0000
//          21_The_Manor_Split1 (Chapter 7)
//          └──> = 0x32315f54, 0x68655f4d, 0x616e6f72, 0x5f53706c, 0x69743100
//          21_The_Manor_Split2 (Chapter 7 Continued)
//          └──> = 0x32315f54, 0x68655f4d, 0x616e6f72, 0x5f53706c, 0x69743200
//          21_The_Manor_B_split1 (Chapter 8)
//          └──> = 0x32315f54, 0x68655f4d, 0x616e6f72, 0x5f425f73, 0x706c6974, 0x31000000
//          21_The_Manor_B_split2 (Chapter 8 Continued)
//          └──> = 0x32315f54, 0x68655f4d, 0x616e6f72, 0x5f425f73, 0x706c6974, 0x32000000
//          ───────────────── Dead Man Walking Mode ─────────────────
//          01_Survival (Manor Yard)
//          └──> = 0x30315f53, 0x75727669, 0x76616c00
//          02_Survival (Construction Site)
//          └──> = 0x30325f53, 0x75727669, 0x76616c00
//          03_Survival (Manor Garden)
//          └──> = 0x30335f53, 0x75727669, 0x76616c00
//          04_Survival (Used Car Lot)
//          └──> = 0x30345f53, 0x75727669, 0x76616c00
//          05_Survival (Scaffolding)
//          └──> = 0x30355f53, 0x75727669, 0x76616c00
function _25_bytes_ascii_location_id() => dword_be(0x5FC0F0)

// $5FC668: [32-bit] Game State
//          0x00 = In-game
//          0x01 = Menus
function game_state() => dword(0x5FC668)

// $5FC680: [32-bit] Chapters Intro Active Flag
//          0x00 = False
//          0x01 = True
function chapters_intro_active_flag() => dword(0x5FC680)

// $6075A0: [32-bit] Hard-Boiled Mode Unlock Flag
//          0x00 = False
//          0x01 = True
function hardboiled_mode_unlock_flag() => dword(0x6075A0)

// $6075A4: [32-bit] Dead on Arrival Mode Unlock Flag
//          0x00 = False
//          0x01 = True
function dead_on_arrival_mode_unlock_flag() => dword(0x6075A4)

// $6075A8: [32-bit] New York Minute & Dead Man Walking Modes Unlock Flag
//          0x00 = False
//          0x01 = True
function new_york_minute_dead_man_walking_modes_unlock_flag() => dword(0x6075A8)

// $6075AC: [32-bit] Jump to Chapter Menu Unlock Flag
//          0x00 = False
//          0x01 = True
function jump_to_chapter_menu_unlock_flag() => dword(0x6075AC)

// $607650: [32-bit] New York Minute: Part I Prologue - Record Submitted
//          0xffffffff = No Record Submitted
function new_york_minute_part_i_prologue_record_submitted() => dword(0x607650)

// $607654: [32-bit] New York Minute: Part I Chapter 1 - Record Submitted
function new_york_minute_part_i_chapter_1_record_submitted() => dword(0x607654)

// $607658: [32-bit] New York Minute: Part I Chapter 2 - Record Submitted
function new_york_minute_part_i_chapter_2_record_submitted() => dword(0x607658)

// $60765C: [32-bit] New York Minute: Part I Chapter 3 - Record Submitted
function new_york_minute_part_i_chapter_3_record_submitted() => dword(0x60765C)

// $607660: [32-bit] New York Minute: Part I Chapter 4 - Record Submitted
function new_york_minute_part_i_chapter_4_record_submitted() => dword(0x607660)

// $607664: [32-bit] New York Minute: Part I Chapter 4 Continued - Record Submitted
function new_york_minute_part_i_chapter_4_continued_record_submitted() => dword(0x607664)

// $607668: [32-bit] New York Minute: Part I Chapter 5 - Record Submitted
function new_york_minute_part_i_chapter_5_record_submitted() => dword(0x607668)

// $60766C: [32-bit] New York Minute: Part I Chapter 6 - Record Submitted
function new_york_minute_part_i_chapter_6_record_submitted() => dword(0x60766C)

// $607670: [32-bit] New York Minute: Part I Chapter 7 - Record Submitted
function new_york_minute_part_i_chapter_7_record_submitted() => dword(0x607670)

// $607674: [32-bit] New York Minute: Part I Chapter 7 Continued - Record Submitted
function new_york_minute_part_i_chapter_7_continued_record_submitted() => dword(0x607674)

// $607678: [32-bit] New York Minute: Part II Prolouge - Record Submitted
function new_york_minute_part_ii_prolouge_record_submitted() => dword(0x607678)

// $60767C: [32-bit] New York Minute: Part II Chapter 1 - Record Submitted
function new_york_minute_part_ii_chapter_1_record_submitted() => dword(0x60767C)

// $607680: [32-bit] New York Minute: Part II Chapter 2 - Record Submitted
function new_york_minute_part_ii_chapter_2_record_submitted() => dword(0x607680)

// $607684: [32-bit] New York Minute: Part II Chapter 2 Continued - Record Submitted
function new_york_minute_part_ii_chapter_2_continued_record_submitted() => dword(0x607684)

// $607688: [32-bit] New York Minute: Part II Chapter 3 - Record Submitted
function new_york_minute_part_ii_chapter_3_record_submitted() => dword(0x607688)

// $60768C: [32-bit] New York Minute: Part II Chapter 4 - Record Submitted
function new_york_minute_part_ii_chapter_4_record_submitted() => dword(0x60768C)

// $607690: [32-bit] New York Minute: Part II Chapter 5 - Record Submitted
function new_york_minute_part_ii_chapter_5_record_submitted() => dword(0x607690)

// $607694: [32-bit] New York Minute: Part II Chapter 6 - Record Submitted
function new_york_minute_part_ii_chapter_6_record_submitted() => dword(0x607694)

// $607698: [32-bit] New York Minute: Part III Prologue - Record Submitted
function new_york_minute_part_iii_prologue_record_submitted() => dword(0x607698)

// $60769C: [32-bit] New York Minute: Part III Chapter 1 - Record Submitted
function new_york_minute_part_iii_chapter_1_record_submitted() => dword(0x60769C)

// $6076A0: [32-bit] New York Minute: Part III Chapter 2 - Record Submitted
function new_york_minute_part_iii_chapter_2_record_submitted() => dword(0x6076A0)

// $6076A4: [32-bit] New York Minute: Part III Chapter 3 - Record Submitted
function new_york_minute_part_iii_chapter_3_record_submitted() => dword(0x6076A4)

// $6076A8: [32-bit] New York Minute: Part III Chapter 3 Continued - Record Submitted
function new_york_minute_part_iii_chapter_3_continued_record_submitted() => dword(0x6076A8)

// $6076AC: [32-bit] New York Minute: Part III Chapter 4 - Record Submitted
function new_york_minute_part_iii_chapter_4_record_submitted() => dword(0x6076AC)

// $6076B0: [32-bit] New York Minute: Part III Chapter 5 - Record Submitted
function new_york_minute_part_iii_chapter_5_record_submitted() => dword(0x6076B0)

// $6076B4: [32-bit] New York Minute: Part III Chapter 6 - Record Submitted
function new_york_minute_part_iii_chapter_6_record_submitted() => dword(0x6076B4)

// $6076B8: [32-bit] New York Minute: Part III Chapter 7 - Record Submitted
function new_york_minute_part_iii_chapter_7_record_submitted() => dword(0x6076B8)

// $6076BC: [32-bit] New York Minute: Part III Chapter 7 Continued - Record Submitted
function new_york_minute_part_iii_chapter_7_continued_record_submitted() => dword(0x6076BC)

// $6076C0: [32-bit] New York Minute: Part III Chapter 8 - Record Submitted
function new_york_minute_part_iii_chapter_8_record_submitted() => dword(0x6076C0)

// $6076C4: [32-bit] New York Minute: Part III Chapter 8 Continued - Record Submitted
function new_york_minute_part_iii_chapter_8_continued_record_submitted() => dword(0x6076C4)

// $60A3F0: [32-bit] Game State
//          0x00 = Menus / Loading
//          0x01 = In-game
function game_state_2() => dword(0x60A3F0)

// $60A980: [32-bit Pointer] Player Data
//          +0x27c | [32-bit float] Player Health
//          250.0 = Full
//          0.0 = Dead
//          .+0x15c
//          ..+0x20
//          ...+0xd0 | [32-bit float] Player Position Z
//          ...+0xd4 | [32-bit float] Player Position Y
//          ...+0xd8 | [32-bit float] Player Position X
//          .+0x260 | [32-bit] Weapon Held Animation ID
//          0x00 = 9mm Pistol, Sawed-off Shotgun, Ingram (Uzi)
//          0x00000100 = 9mm Pistol Dual, Desert Eagle (and dual), Ingram (Uzi dual)
//          0x00000101 = Pump-Action Shotgun, Striker, MP5, Kalashnikov, M4 Carbine, Sniper Rifle, Dragunov (sniper)
//          .+0x264 | [32-bit] Current Primary Weapon Equipped
//          0x01 = 9mm Pistol
//          0x02 = 9mm Pistol (dual)
//          0x03 = Desert Eagle
//          0x04 = Desert Eagle (dual)
//          0x05 = Sawed-off Shotgun
//          0x06 = Pump-Action Shotgun
//          0x07 = Striker
//          0x08 = Ingram (Uzi)
//          0x09 = Ingram (dual Uzi)
//          0x0a = MP5
//          0x0b = Kalashnikov
//          0x0c = M4 Carbine
//          0x0d = Sniper Rifle
//          0x0e = Dragunov (sniper)
//          .+0x26c | [32-bit] Current Secondary Weapon Equipped
//          0x14 = Unarmed
//          0x15 = Molotov Cocktail
//          0x16 = Grenade
//          ..+0x776 | [16-bit] Shooting Active Flag
//          0x00 = True
//          0x01 = False
//          ...+0x928 | [32-bit] Player Animations ID
//          0x01 = Running Forward
//          0x02 = Running Forward-Left
//          0x03 = Running Forward-Right
//          0x04 = Running Left
//          0x05 = Running Right
//          0x06 = Running Backward
//          0x07 = Running Backward-Left
//          0x08 = Running Backward-Right
//          0x09 = During P2 Prologue Intro comic scene
//          0x11 = Looking Left
//          0x12 = Looking Right
//          0x13 = Standing Idle
//          0x14 = Crouch
//          0x15 = Roll Left
//          0x16 = Roll Right
//          0x18 = Roll Backward
//          0x1f = Shootdodge
//          0x25 = Getting up after shootdodge left
//          0x26 = Getting up after shootdodge right
//          0x27 = Getting up after shootdodge front
//          0x28 = Kip Up after shootdodge backward
//          0x31 = Jump Standing
//          0x32 = Jump Running Forward
//          0x33 = Jump Running Forward-Left
//          0x34 = Jump Running Forward-Right
//          0x35 = Falling
//          0x36 = Landing
//          0x37 = Interaction
//          0x38 = Switching Weapon 1
//          0x39 = Switching Weapon 2
//          0x4c = Dead (burning)
//          0x4e = Dead (after falling)
//          0x190 = Reloading
//          0x1ae = Shooting, during part III chapter 5 intro scene mona shooting
//          0x208 = Melee Attack
//          0x254 = Initiate a dialog or command an NPC, also used for M Spray secret in P1C4
//          0x261 = During Part III Chapter 5 intro scene mona shootdodging
//          0x283 = During Part II Chapter 5 Intro scene
//          0x2ad = During Part I Chapter 1 Intro comic scene
//          0x2ba = During Part III Chapter 3 Continued Intro scene
//          0x2c4 = During Part II Prologue Intro comic scene
//          0x2c5 = During Part I Prologue Intro comic scene
//          0x2d3 = During Part I Chapter 3 Intro comic scene
//          0x2d6 = During Part III Prologue Intro comic scene
//          0x2e7 = During Part III Chapter 3 Intro scene
//          0x2ef = During Part I Chapter 4 Intro comic scene
//          0x2f0 = During Part II Chapter 2 Intro comic scene
//          0x2fe = During Part I Chapter 2 Intro comic scene
//          0x305 = During Part I Chapter 7 Intro comic scene
//          0x308 = During Part II Chapter 1 Intro comic scene
//          0x323 = During Part III Chapter 7 Intro comic scene
//          0x331 = During Part III Chapter 4 Intro scene
//          0x333 = During Part III Chapter 8 Intro scene
//          0x336 = During Part II Chapter 3 Intro comic scene
//          0x7fff = Loading
function player_data() => dword(0x60A980)

HealthLookup = {
    0: "4%",
    1: "4%",
    2: "4%",
    3: "4%",
    4: "4%",
    5: "4%",
    6: "4%",
    7: "4%",
    8: "4%",
    9: "4%",
    10: "4%",
    11: "8%",
    12: "8%",
    13: "8%",
    14: "8%",
    15: "8%",
    16: "8%",
    17: "8%",
    18: "8%",
    19: "8%",
    20: "8%",
    21: "12%",
    22: "12%",
    23: "12%",
    24: "12%",
    25: "12%",
    26: "12%",
    27: "12%",
    28: "12%",
    29: "12%",
    30: "12%",
    31: "16%",
    32: "16%",
    33: "16%",
    34: "16%",
    35: "16%",
    36: "16%",
    37: "16%",
    38: "16%",
    39: "16%",
    40: "16%",
    41: "20%",
    42: "20%",
    43: "20%",
    44: "20%",
    45: "20%",
    46: "20%",
    47: "20%",
    48: "20%",
    49: "20%",
    50: "20%",
    51: "24%",
    52: "24%",
    53: "24%",
    54: "24%",
    55: "24%",
    56: "24%",
    57: "24%",
    58: "24%",
    59: "24%",
    60: "24%",
    61: "28%",
    62: "28%",
    63: "28%",
    64: "28%",
    65: "28%",
    66: "28%",
    67: "28%",
    68: "28%",
    69: "28%",
    70: "28%",
    71: "32%",
    72: "32%",
    73: "32%",
    74: "32%",
    75: "32%",
    76: "32%",
    77: "32%",
    78: "32%",
    79: "32%",
    80: "32%",
    81: "36%",
    82: "36%",
    83: "36%",
    84: "36%",
    85: "36%",
    86: "36%",
    87: "36%",
    88: "36%",
    89: "36%",
    90: "36%",
    91: "40%",
    92: "40%",
    93: "40%",
    94: "40%",
    95: "40%",
    96: "40%",
    97: "40%",
    98: "40%",
    99: "40%",
    100: "40%",
    101: "44%",
    102: "44%",
    103: "44%",
    104: "44%",
    105: "44%",
    106: "44%",
    107: "44%",
    108: "44%",
    109: "44%",
    110: "44%",
    111: "48%",
    112: "48%",
    113: "48%",
    114: "48%",
    115: "48%",
    116: "48%",
    117: "48%",
    118: "48%",
    119: "48%",
    120: "48%",
    121: "52%",
    122: "52%",
    123: "52%",
    124: "52%",
    125: "52%",
    126: "52%",
    127: "52%",
    128: "52%",
    129: "52%",
    130: "52%",
    131: "56%",
    132: "56%",
    133: "56%",
    134: "56%",
    135: "56%",
    136: "56%",
    137: "56%",
    138: "56%",
    139: "56%",
    140: "56%",
    141: "60%",
    142: "60%",
    143: "60%",
    144: "60%",
    145: "60%",
    146: "60%",
    147: "60%",
    148: "60%",
    149: "60%",
    150: "60%",
    151: "64%",
    152: "64%",
    153: "64%",
    154: "64%",
    155: "64%",
    156: "64%",
    157: "64%",
    158: "64%",
    159: "64%",
    160: "64%",
    161: "68%",
    162: "68%",
    163: "68%",
    164: "68%",
    165: "68%",
    166: "68%",
    167: "68%",
    168: "68%",
    169: "68%",
    170: "68%",
    171: "72%",
    172: "72%",
    173: "72%",
    174: "72%",
    175: "72%",
    176: "72%",
    177: "72%",
    178: "72%",
    179: "72%",
    180: "72%",
    181: "76%",
    182: "76%",
    183: "76%",
    184: "76%",
    185: "76%",
    186: "76%",
    187: "76%",
    188: "76%",
    189: "76%",
    190: "76%",
    191: "80%",
    192: "80%",
    193: "80%",
    194: "80%",
    195: "80%",
    196: "80%",
    197: "80%",
    198: "80%",
    199: "80%",
    200: "80%",
    201: "84%",
    202: "84%",
    203: "84%",
    204: "84%",
    205: "84%",
    206: "84%",
    207: "84%",
    208: "84%",
    209: "84%",
    210: "84%",
    211: "88%",
    212: "88%",
    213: "88%",
    214: "88%",
    215: "88%",
    216: "88%",
    217: "88%",
    218: "88%",
    219: "88%",
    220: "88%",
    221: "92%",
    222: "92%",
    223: "92%",
    224: "92%",
    225: "92%",
    226: "92%",
    227: "92%",
    228: "92%",
    229: "92%",
    230: "92%",
    231: "96%",
    232: "96%",
    233: "96%",
    234: "96%",
    235: "96%",
    236: "96%",
    237: "96%",
    238: "96%",
    239: "96%",
    240: "96%",
    241: "100%",
    242: "100%",
    243: "100%",
    244: "100%",
    245: "100%",
    246: "100%",
    247: "100%",
    248: "100%",
    249: "100%",
    250: "100%",
}
function player_health() => float((player_data() & 0x1FFFFFF) + 0x00027C)
function player_health_dword() => dword((player_data() & 0x1FFFFFF) + 0x00027C)

// $6B47E8: [32-bit] UI State
//          0x13 = Loading into a chapter (not applicable to in-game loading)
//          Note: Value decreases when you skip through comic scenes
function ui_state() => dword(0x6B47E8)

// $74037A: [8-bit] Game Paused Flag
//          0x00 = False
//          0x01 = True
//          Note: Works for both Start and Select
function game_paused_flag() => byte(0x74037A)

// $740494: [32-bit] Cutscene Related
//          0x00 = None
//          0x02 = In-game Cutscene
//          0x03 = In-game Cutscene
function cutscene_related() => dword(0x740494)

// $74068C: [32-bit Pointer] Player Equipment
//          +0x1d0 | [32-bit] Number of Painkillers
//          .+0x368 | [32-bit] Equipped Weapon ID
//          0x00 = Unarmed
//          0x01 = 9mm Pistol
//          0x02 = 9mm Pistol (double)
//          0x03 = Desert Eagle
//          0x04 = Desert Eagle (double)
//          0x05 = Sawed-off Shotgun
//          0x06 = Pump-Action Shotgun
//          0x07 = Striker
//          0x08 = Ingram (Uzi)
//          0x09 = Ingram (double Uzi)
//          0x0a = MP5
//          0x0b = Kalashnikov
//          0x0c = M4 Carbine
//          0x0d = Sniper Rifle
//          0x0e = Dragunov (sniper)
//          ..+0x374 | [32-bit] Current Ammo in Clip
function player_equipment() => dword(0x74068C)
function number_of_painkillers() => dword((player_equipment() & 0x1FFFFFF) + 0x0001D0)

// $7418E8: [32-bit] Bullet Time Active Flag
//          0x00 = False
//          0x01 = True
function bullet_time_active_flag() => dword(0x7418E8)

// $75C018: [32-bit] Chapter ID
//          ───────────────── Part I ─────────────────
//          0x08 = Prologue
//          0x19 = Chapter 1
//          0x2a = Chapter 2
//          0x06 = Chapter 3
//          0x16 = Chapter 4
//          0x0d = Chapter 4 Continued
//          0x1c = Chapter 5
//          0x01 = Chapter 6
//          0x14 = Chapter 7
//          0x1d = Chapter 7 Continued
//          ───────────────── Part II ─────────────────
//          0x15 = Prologue
//          0x26 = Chapter 1
//          0x26 = Chapter 2
//          0x0c = Chapter 2 Continued
//          0x14 = Chapter 3
//          0x22 = Chapter 4
//          0x28 = Chapter 5
//          0x31 = Chapter 6
//          ───────────────── Part III ─────────────────
//          0x0f = Prologue
//          0x1c = Chapter 1
//          0x29 = Chapter 2
//          0x22 = Chapter 3
//          0x16 = Chapter 3 Continued
//          0x29 = Chapter 4
//          0x01 = Chapter 5
//          0x0a = Chapter 6
//          0x20 = Chapter 7
//          0x22 = Chapter 7 Continued
//          0x0d = Chapter 8
//          0x15 = Chapter 8 Continued
//          ───────────────── Dead Man Walking ─────────────────
//          0x0e = Manor Yard
//          0x09 = Construction Site
//          0x06 = Manor Garden
//          0x08 = Used Car Lot
//          0x07 = Scaffolding
function chapter_id() => dword(0x75C018)

// $75C034: [32-bit] Progression Events
//          0x00 = Return
//          0x0101c4f0 = Pt.1 P0: Robber killed
//          0x0102d7a0 = Pt.1 P0: Elevator scene
//          0x01032c00 = Pt.1 P0: Ending scene 1
//          0x01034bc0 = Pt.1 P0: Ending scene 2
//          0x01007260 = Pt.1 C2: Mike the cowboy shooting enemies scene 1
//          0x01006fe0 = Pt.1 C2: Mike the cowboy shooting enemies scene 2
//          0x01006d80 = Pt.1 C2: Mike the cowboy shooting enemies scene 3
//          0x01006b20 = Pt.1 C2: Mike the cowboy shooting enemies scene 4
//          0x010147c0 = Pt.1 C2: Mike the cowboy shooting enemies scene 5
//          0x01014520 = Pt.1 C2: Mike the cowboy shooting enemies scene 6
//          0x010042a0 = Pt.1 C2: Mike the cowboy shooting enemies scene 7
//          0x00ff5c40 = Pt.1 C3: Intro door scene
//          0x00ff89c0 = Pt.1 C3: Ending scene
//          0x01022820 = Pt.1 C4: Entering Hideout scene 1
//          0x01022a90 = Pt.1 C4: Hideout Sniper Scope scene 2
//          0x01022100 = Pt.1 C4: Hideout Record playing scene 3
//          0x010225c0 = Pt.1 C4: Hideout Pictures on wall scene 4
//          0x01022360 = Pt.1 C4: Hideout Plan scene 5
//          0x01021e80 = Pt.1 C4: Sniper Hideout
//          0x01060fc0 = Pt.1 C4b: Kill inside apartment
//          0x010141a0 = Pt.1 C4b: End of C4
//          0x010147f0 = Pt.1 C5: Intro
//          0x01017510 = Pt.1 C5: Van chase end
//          0x010303c0 = Pt.1 C6: Intro scene 1
//          0x01030620 = Pt.1 C6: Intro scene 2
//          0x0102b400 = Pt.1 C6: Elevator rising 1
//          0x0102b1a0 = Pt.1 C6: Elevator rising 2
//          0x01012c80 = Pt.1 C7: Apartment 2, dead person 1
//          0x0100b4e0 = Pt.1 C7: Apartment 2, dead person 2
//          0x01012a00 = Pt.1 C7: Apartment 2, dead person 3
//          0x0100a1e0 = Pt.1 C7: Apartment 2, dead person 4
//          0x01014290 = Max falls off building (death)
//          0x01013180 = Pt.1 C7b: Elevator kill
//          0x01010420 = Pt.1 C7b: Plasma TV secret scene
//          0x0100e460 = Pt.1 C7b: Elevator end
//          0x00ffbb20 = Pt.2 P0: Intro
//          0x00ffd370 = Pt.2 P0: Phone call 1
//          0x00ffdfd0 = Pt.2 P0: Phone call 2
//          0x00ff7d50 = Pt.2 C1: Mona shooting in streets
//          0x01020f10 = Pt.2 C2: 3F Hallway kill
//          0x00ffb3d0 = Pt.2 C2b: Intro
//          0x010111d0 = Pt.2 C3: Max jumps off building
//          0x01000050 = Pt.2 C4: Comic intro
//          0x00ff8320 = Pt.2 C5: Max shoots enemies
//          0x01050060 = Pt.2 C5: Sniper kill
//          0x00ff7e40 = Pt.2 C5: Max avoids bullets
//          0x00ff80c0 = Pt.2 C5: Max searches for exit
//          0x00ff1b00 = Pt.2 C6: Intro
//          0x00ff1880 = Pt.2 C6: Enemy falls after being shot
//          0x00ffd430 = Pt.3 P0: Prison cell
//          0x00ffc110 = Pt.3 P0: Prison bathroom
//          0x00feef10 = Pt.3 P0: Dying man
//          0x01029080 = Pt.3 C1: Comic intro
//          0x010292e0 = Pt.3 C1: Intro scene 1
//          0x01027fe0 = Pt.3 C1: Intro scene 2
//          0x01029a00 = Pt.3 C1: Parking lot end
//          0x0102dbb0 = Pt.3 C2: Intro scene 1
//          0x0102d950 = Pt.3 C2: Intro scene 2
//          0x0103e4e0 = Pt.3 C3: Ending scene 1
//          0x0103e280 = Pt.3 C3: Ending scene 2
//          0x0103e020 = Pt.3 C3: Ending scene 3
//          0x0103ddc0 = Pt.3 C3: Ending scene 4
//          0x0103db60 = Pt.3 C3: Ending scene 5
//          0x0101fa80 = Pt.3 C4: Comic intro
//          0x01025060 = Pt.3 C4: Ending scene 1
//          0x010252c0 = Pt.3 C4: Ending scene 2
//          0x01024da0 = Pt.3 C4: Ending scene 3
//          0x00ffeb40 = Pt.3 C5: Comic intro
//          0x00ffdd00 = Pt.3 C5: Intro scene 1
//          0x00ffda90 = Pt.3 C5: Intro scene 2
//          0x00ff58f0 = Pt.3 C5: 2F Burning Warehouse scene 1
//          0x00ff5b50 = Pt.3 C5: 2F Burning Warehouse scene 2
//          0x0100e980 = Pt.3 C5: 2F Max KO scene 1
//          0x0100e4c0 = Pt.3 C5: 2F Max KO scene 2
//          0x0100e720 = Pt.3 C5: 2F Max KO scene 3
//          0x0101a8d0 = Pt.3 C6: Intro
//          0x01018eb0 = Pt.3 C6: Dead body
//          0x00ff8d90 = Pt.3 C6: Interrogation room
//          0x00ffc150 = Pt.3 C6: Hallway Max shooting
//          0x00ff6a70 = Pt.3 C7: Dead swat
//          0x00ff6cd0 = Pt.3 C7: Mona shooting swat
//          0x00fb5b0 = Pt.3 C7: Ending
//          0x00ffb810 = Pt.3 C7b: CCTV scene 1
//          0x00ffbf30 = Pt.3 C7b: CCTV scene 2
//          0x00fff630 = Pt.3 C7b: CCTV scene 3
//          0x01006a30 = Pt.3 C8b: Max opening door
//          0x01006cd0 = Pt.3 C8b: Enemy climbing
//          0x010067b0 = Pt.3 C8b: Max shooting
//          0x01006070 = Pt.3 C8b: Glass breaking
//          0x01005e10 = Pt.3 C8b: Vladimir shooting
//          0x010056f0 = Pt.3 C8b: Vladimir throwing molotov
//          0x0100bd90 = Pt.3 C8b: Roof collapsing end scene 1
//          0x0100bb30 = Pt.3 C8b: Roof collapsing end scene 2
//          0x01005490 = Pt.3 C8b: Vladimir avoding roof collapsing end scene
//          0x01004630 = Pt.3 C8b: Roof Explosion end scene
//          0x01004d50 = Pt.3 C8b: Vladimir dying scene 1
//          0x01004fd0 = Pt.3 C8b: Vladimir dying scene 2
//          0x01004150 = Pt.3 C8b: Vladimir dying scene 3
//          0x010032c0 = Pt.3 C8b: Vladimir dying scene 4
//          0x01003060 = Pt.3 C8b: Vladimir dying scene 5
//          0x01003eb0 = Pt.3 C8b: Vladimir dying scene 6
//          0x01002ba0 = Pt.3 C8b: Vladimir dying scene 7
//          0x01004890 = Game Ending comic scene and Credits
function progression_events() => dword(0x75C034)

// $7B71F0: Hard-Boiled mode unlock (8-bit)
//          0x00 = Locked
//          0x01 = Unlocked
function hardboiled_mode_unlock() => byte(0x7B71F0)

// $9D32BC: [32-bit] Difficulty
//          0x01 = Detective
//          0x02 = Hard-Boiled
//          0x03 = Dead on Arrival
//          0x04 = New York Minute & Dead Man Walking
function difficulty() => dword(0x9D32BC)

DifficultyLookup = {
    0x01: "Detective",
    0x02: "Hard-Boiled",
    0x03: "Dead on Arrival",
    0x04: "New York Minute",
}

// $FD82DC: [32-bit] Dead Man Walking: Construction Site - Kill Counter 1/8
function dead_man_walking_construction_site_kill_counter_1_8() => dword(0xFD82DC)

// $FDA5EC: [32-bit] Dead Man Walking: Manor Garden - Kill Counter 1/5
function dead_man_walking_manor_garden_kill_counter_1_5() => dword(0xFDA5EC)

// $FDF67C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 1/13
function dead_man_walking_manor_yard_kill_counter_1_13() => dword(0xFDF67C)

// $FE679C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 1/6
function dead_man_walking_scaffolding_kill_counter_1_6() => dword(0xFE679C)

// $FE71CC: [32-bit] Pt.2 P0: Interacting with Air Conditioner Flag
//          0x00 = False
//          0x01 = True
function pt_2_p0_interacting_with_air_conditioner_flag() => dword(0xFE71CC)

// $FEDC0C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 1/7
function dead_man_walking_used_car_lot_kill_counter_1_7() => dword(0xFEDC0C)

// $FF6C5C: [32-bit] Dead Man Walking: Construction Site - Kill Counter 2/8
function dead_man_walking_construction_site_kill_counter_2_8() => dword(0xFF6C5C)

// $FF927C: [32-bit] Dead Man Walking: Construction Site - Kill Counter 3/8
function dead_man_walking_construction_site_kill_counter_3_8() => dword(0xFF927C)

// $FF936C: [32-bit] Dead Man Walking: Manor Garden - Kill Counter 2/5
function dead_man_walking_manor_garden_kill_counter_2_5() => dword(0xFF936C)

// $FFCB9C: [32-bit] Dead Man Walking: Construction Site - Kill Counter 4/8
function dead_man_walking_construction_site_kill_counter_4_8() => dword(0xFFCB9C)

// $FFCC8C: [32-bit] Dead Man Walking: Manor Garden - Kill Counter 3/5
function dead_man_walking_manor_garden_kill_counter_3_5() => dword(0xFFCC8C)

// $FFE8EC: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 2/13
function dead_man_walking_manor_yard_kill_counter_2_13() => dword(0xFFE8EC)

// $10001AC: [32-bit] Dead Man Walking: Manor Garden - Kill Counter 4/5
function dead_man_walking_manor_garden_kill_counter_4_5() => dword(0x10001AC)

// $10004BC: [32-bit] Dead Man Walking: Construction Site - Kill Counter 5/8
function dead_man_walking_construction_site_kill_counter_5_8() => dword(0x10004BC)

// $10025EC: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 3/13
function dead_man_walking_manor_yard_kill_counter_3_13() => dword(0x10025EC)

// $10027CC: [32-bit] Dead Man Walking: Manor Garden - Kill Counter 5/5
function dead_man_walking_manor_garden_kill_counter_5_5() => dword(0x10027CC)

// $10029CC: [32-bit] Dead Man Walking: Construction Site - Kill Counter 6/8
function dead_man_walking_construction_site_kill_counter_6_8() => dword(0x10029CC)

// $1003C64: [32-bit] Pt.1 C7: Interacted with Piano Flag
//           0x00 = False
//           0x01 = True
function pt_1_c7_interacted_with_piano_flag() => dword(0x1003C64)

// $1003D0C: [16-bit] Pt.2 P0: TV Status
//           0x0001 = Active
//           0x0100 = Inactive
function pt_2_p0_tv_status_2() => word(0x1003D0C)

// $1004900: [32-bit float] Dead Man Walking: Manor Garden - Time
function dead_man_walking_manor_garden_time() => float(0x1004900)

// $1004EDC: [32-bit] Dead Man Walking: Construction Site - Kill Counter 7/8
//           └───> Dead Man Walking: Manor Yard - Kill Counter 4/13
function dead_man_walking_construction_site_kill_counter_7_8() => dword(0x1004EDC)

// $100511C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 2/6
function dead_man_walking_scaffolding_kill_counter_2_6() => dword(0x100511C)

// $10073EC: [32-bit] Dead Man Walking: Construction Site - Kill Counter 8/8
function dead_man_walking_construction_site_kill_counter_8_8() => dword(0x10073EC)

// $100773C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 3/6
function dead_man_walking_scaffolding_kill_counter_3_6() => dword(0x100773C)

// $10077CC: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 5/13
function dead_man_walking_manor_yard_kill_counter_5_13() => dword(0x10077CC)

// $1009520: [32-bit float] Dead Man Walking: Construction Site - Time
function dead_man_walking_construction_site_time() => float(0x1009520)

// $1009C4C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 4/6
function dead_man_walking_scaffolding_kill_counter_4_6() => dword(0x1009C4C)

// $100A0BC: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 6/13
function dead_man_walking_manor_yard_kill_counter_6_13() => dword(0x100A0BC)

// $100C26C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 5/6
function dead_man_walking_scaffolding_kill_counter_5_6() => dword(0x100C26C)

// $100C4EC: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 2/7
function dead_man_walking_used_car_lot_kill_counter_2_7() => dword(0x100C4EC)

// $100C9AC: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 7/13
function dead_man_walking_manor_yard_kill_counter_7_13() => dword(0x100C9AC)

// $100E59C: [32-bit] Pt.3 C3 Continued: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_3_c3_continued_enemy_status_flag() => dword(0x100E59C)

// $100E77C: [32-bit] Dead Man Walking: Scaffolding - Kill Counter 6/6
function dead_man_walking_scaffolding_kill_counter_6_6() => dword(0x100E77C)

// $100EB0C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 3/7
function dead_man_walking_used_car_lot_kill_counter_3_7() => dword(0x100EB0C)

// $100F29C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 8/13
function dead_man_walking_manor_yard_kill_counter_8_13() => dword(0x100F29C)

// $10108B0: [32-bit float] Dead Man Walking: Scaffolding - Time
function dead_man_walking_scaffolding_time() => float(0x10108B0)

// $101101C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 4/7
function dead_man_walking_used_car_lot_kill_counter_4_7() => dword(0x101101C)

// $1011B8C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 9/13
function dead_man_walking_manor_yard_kill_counter_9_13() => dword(0x1011B8C)

// $101363C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 5/7
function dead_man_walking_used_car_lot_kill_counter_5_7() => dword(0x101363C)

// $101447C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 10/13
function dead_man_walking_manor_yard_kill_counter_10_13() => dword(0x101447C)

// $1015B4C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 6/7
function dead_man_walking_used_car_lot_kill_counter_6_7() => dword(0x1015B4C)

// $1016D6C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 11/13
function dead_man_walking_manor_yard_kill_counter_11_13() => dword(0x1016D6C)

// $101805C: [32-bit] Dead Man Walking: Used Car Lot - Kill Counter 7/7
function dead_man_walking_used_car_lot_kill_counter_7_7() => dword(0x101805C)

// $1018CCC: [32-bit] Pt.2 P0: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_p0_enemy_status_flag() => dword(0x1018CCC)

// $101965C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 12/13
function dead_man_walking_manor_yard_kill_counter_12_13() => dword(0x101965C)

// $101A190: [32-bit float] Dead Man Walking: Used Car Lot - Time
function dead_man_walking_used_car_lot_time() => float(0x101A190)

// $101BF4C: [32-bit] Dead Man Walking: Manor Yard - Kill Counter 13/13
function dead_man_walking_manor_yard_kill_counter_13_13() => dword(0x101BF4C)

// $101C5CC: [32-bit] Pt.2 C4: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c4_enemy_status_flag() => dword(0x101C5CC)

// $101DCCD: [8-bit] Pt.1 C7 Continued: Interacted with Plasma TV Flag
//           0x00 = False
//           0x01 = True
function pt_1_c7_continued_interacted_with_plasma_tv_flag() => byte(0x101DCCD)

// $101E460: [32-bit float] Dead Man Walking: Manor Yard - Time
function dead_man_walking_manor_yard_time() => float(0x101E460)

// $101E81C: [32-bit] Pt.3 C7: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_3_c7_enemy_status_flag() => dword(0x101E81C)

// $101FB5C: [32-bit] Pt.3 C8: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_3_c8_enemy_status_flag() => dword(0x101FB5C)

// $10230BC: [32-bit] Pt.2 C1: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c1_enemy_status_flag() => dword(0x10230BC)

// $1024F5C: [32-bit] Pt.2 C6: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c6_enemy_status_flag() => dword(0x1024F5C)

// $102CE7C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status() => dword(0x102CE7C)

// $102FCBC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_2() => dword(0x102FCBC)

// $10335DC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_3() => dword(0x10335DC)

// $1033F9C: [32-bit] Pt.1 C4 Continued: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c4_continued_enemy_status_flag() => dword(0x1033F9C)

// $1035AEC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_4() => dword(0x1035AEC)

// $1035C3C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status() => dword(0x1035C3C)

// $103764C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status() => dword(0x103764C)

// $1037AC0: [32-bit float] New York Minute Time: Part I - Chapter 3
function new_york_minute_time_part_i_chapter_3() => float(0x1037AC0)

// $1037FFC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_5() => dword(0x1037FFC)

// $103814C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_2() => dword(0x103814C)

// $1039C6C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_2() => dword(0x1039C6C)

// $103A50C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_6() => dword(0x103A50C)

// $103A65C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_3() => dword(0x103A65C)

// $103AA3C: [32-bit] Pt.2 C5: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c5_enemy_status_flag() => dword(0x103AA3C)

// $103AF4C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status() => dword(0x103AF4C)

// $103C71C: [32-bit] Pt.2 C2 Continued: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c2_continued_enemy_status_flag() => dword(0x103C71C)

// $103CA1C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_7() => dword(0x103CA1C)

// $103CB6C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_4() => dword(0x103CB6C)

// $103D56C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_2() => dword(0x103D56C)

// $103D59C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status() => dword(0x103D59C)

// $103DB3C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status() => dword(0x103DB3C)

// $103EDCC: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status() => dword(0x103EDCC)

// $103EF2C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_8() => dword(0x103EF2C)

// $103F07C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_5() => dword(0x103F07C)

// $103FA7C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_3() => dword(0x103FA7C)

// $103FAAC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_2() => dword(0x103FAAC)

// $104003C: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status() => dword(0x104003C)

// $104015C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_2() => dword(0x104015C)

// $104143C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_9() => dword(0x104143C)

// $104158C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_6() => dword(0x104158C)

// $1041A3C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status() => dword(0x1041A3C)

// $1041A4C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_3() => dword(0x1041A4C)

// $1041F8C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_4() => dword(0x1041F8C)

// $10426EC: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_2() => dword(0x10426EC)

// $104277C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_3() => dword(0x104277C)

// $10431AC: [32-bit] Pt.2 C3: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c3_enemy_status_flag() => dword(0x10431AC)

// $10433CC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_3() => dword(0x10433CC)

// $104394C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_10() => dword(0x104394C)

// $104395C: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_2() => dword(0x104395C)

// $1043F4C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_2() => dword(0x1043F4C)

// $1043F5C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_4() => dword(0x1043F5C)

// $10445AC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_5() => dword(0x10445AC)

// $1044AAC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_7() => dword(0x1044AAC)

// $1044C8C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_4() => dword(0x1044C8C)

// $1044FDC: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_3() => dword(0x1044FDC)

// $1045E6C: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_3() => dword(0x1045E6C)

// $1045F6C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_11() => dword(0x1045F6C)

// $104646C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_5() => dword(0x104646C)

// $104656C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_3() => dword(0x104656C)

// $10468EC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_4() => dword(0x10468EC)

// $1046ABC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_6() => dword(0x1046ABC)

// $1046FBC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_8() => dword(0x1046FBC)

// $104719C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_5() => dword(0x104719C)

// $10474EC: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_4() => dword(0x10474EC)

// $104847C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_12() => dword(0x104847C)

// $104848C: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_4() => dword(0x104848C)

// $104897C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_6() => dword(0x104897C)

// $1048B8C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_4() => dword(0x1048B8C)

// $10490DC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_7() => dword(0x10490DC)

// $10494CC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_9() => dword(0x10494CC)

// $10496AC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_6() => dword(0x10496AC)

// $104A20C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_5() => dword(0x104A20C)

// $104A98C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_13() => dword(0x104A98C)

// $104A99C: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_5() => dword(0x104A99C)

// $104AE8C: [32-bit] Pt.2 P0: Enemy Status
function pt_2_p0_enemy_status_7() => dword(0x104AE8C)

// $104B5EC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_8() => dword(0x104B5EC)

// $104B9DC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_10() => dword(0x104B9DC)

// $104BBBC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_7() => dword(0x104BBBC)

// $104CE9C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_14() => dword(0x104CE9C)

// $104CEAC: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_6() => dword(0x104CEAC)

// $104D12C: [32-bit] Pt.1 C2: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c2_enemy_status_flag() => dword(0x104D12C)

// $104DAFC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_9() => dword(0x104DAFC)

// $104E0CC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_8() => dword(0x104E0CC)

// $104E94C: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_5() => dword(0x104E94C)

// $104F3AC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_15() => dword(0x104F3AC)

// $104F3BC: [32-bit] Pt.2 C2 Continued: Enemy Status
function pt_2_c2_continued_enemy_status_7() => dword(0x104F3BC)

// $104FECC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status() => dword(0x104FECC)

// $105000C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_10() => dword(0x105000C)

// $10503FC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_11() => dword(0x10503FC)

// $10505DC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_9() => dword(0x10505DC)

// $10514F0: [32-bit float] New York Minute Time: Part II - Chapter 2 Continued
function new_york_minute_time_part_ii_chapter_2_continued() => float(0x10514F0)

// $10518BC: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_16() => dword(0x10518BC)

// $105204C: [32-bit] Pt.3 C7 Continued: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_3_c7_continued_enemy_status_flag() => dword(0x105204C)

// $10523DC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_2() => dword(0x10523DC)

// $105251C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_11() => dword(0x105251C)

// $105291C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status() => dword(0x105291C)

// $1052AEC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_10() => dword(0x1052AEC)

// $1053CAC: [32-bit] Pt.1 C4: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c4_enemy_status_flag() => dword(0x1053CAC)

// $10548CC: [32-bit] Pt.1 C7: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c7_enemy_status_flag() => dword(0x10548CC)

// $10549FC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_3() => dword(0x10549FC)

// $1054A2C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_12() => dword(0x1054A2C)

// $1054F3C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_2() => dword(0x1054F3C)

// $105510C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_11() => dword(0x105510C)

// $105520C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status() => dword(0x105520C)

// $10553F0: [32-bit float] New York Minute Time: Part III - Chapter 5
function new_york_minute_time_part_iii_chapter_5() => float(0x10553F0)

// $105596C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status() => dword(0x105596C)

// $105597C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_5() => dword(0x105597C)

// $105674C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_17() => dword(0x105674C)

// $1056F0C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_4() => dword(0x1056F0C)

// $1056F3C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_13() => dword(0x1056F3C)

// $105744C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_3() => dword(0x105744C)

// $105772C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_12() => dword(0x105772C)

// $10578EC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_2() => dword(0x10578EC)

// $1057E7C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_2() => dword(0x1057E7C)

// $1057E8C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_6() => dword(0x1057E8C)

// $1058C5C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_18() => dword(0x1058C5C)

// $105941C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_5() => dword(0x105941C)

// $105944C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_14() => dword(0x105944C)

// $105983C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_12() => dword(0x105983C)

// $10598BC: [32-bit] Pt.2 C2: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_2_c2_enemy_status_flag() => dword(0x10598BC)

// $1059A6C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_4() => dword(0x1059A6C)

// $1059C3C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_13() => dword(0x1059C3C)

// $1059F0C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_3() => dword(0x1059F0C)

// $105A39C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_7() => dword(0x105A39C)

// $105A49C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_3() => dword(0x105A49C)

// $105B16C: [32-bit] Pt.3 C3 Continued: Enemy Status
function pt_3_c3_continued_enemy_status_19() => dword(0x105B16C)

// $105B92C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_6() => dword(0x105B92C)

// $105B9CC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_6() => dword(0x105B9CC)

// $105BD4C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_13() => dword(0x105BD4C)

// $105C14C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_14() => dword(0x105C14C)

// $105C8AC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_8() => dword(0x105C8AC)

// $105CD6C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_15() => dword(0x105CD6C)

// $105CD8C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_4() => dword(0x105CD8C)

// $105CE7C: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_6() => dword(0x105CE7C)

// $105D3B0: [32-bit float] New York Minute Time: Part III - Chapter 3 Continued
function new_york_minute_time_part_iii_chapter_3_continued() => float(0x105D3B0)

// $105DEDC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_7() => dword(0x105DEDC)

// $105E25C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_14() => dword(0x105E25C)

// $105E65C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_15() => dword(0x105E65C)

// $105EDBC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_9() => dword(0x105EDBC)

// $105F27C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_16() => dword(0x105F27C)

// $105F38C: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_7() => dword(0x105F38C)

// $10603EC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_8() => dword(0x10603EC)

// $106076C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_15() => dword(0x106076C)

// $1060B6C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_16() => dword(0x1060B6C)

// $10613DC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_10() => dword(0x10613DC)

// $106153C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_5() => dword(0x106153C)

// $106178C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_17() => dword(0x106178C)

// $10617AC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_5() => dword(0x10617AC)

// $106189C: [32-bit] Pt.3 C8: Enemy Status
function pt_3_c8_enemy_status_8() => dword(0x106189C)

// $1061B2C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status() => dword(0x1061B2C)

// $10628FC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_9() => dword(0x10628FC)

// $1062A7C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_7() => dword(0x1062A7C)

// $1062C7C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_16() => dword(0x1062C7C)

// $106307C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_17() => dword(0x106307C)

// $10638EC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_11() => dword(0x10638EC)

// $1063C9C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_18() => dword(0x1063C9C)

// $1063CBC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_6() => dword(0x1063CBC)

// $106414C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_2() => dword(0x106414C)

// $1064E0C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_10() => dword(0x1064E0C)

// $1064F8C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_8() => dword(0x1064F8C)

// $106518C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_17() => dword(0x106518C)

// $106558C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_18() => dword(0x106558C)

// $1065DFC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_12() => dword(0x1065DFC)

// $1065EE0: [32-bit float] New York Minute Time: Part III - Chapter 8
function new_york_minute_time_part_iii_chapter_8() => float(0x1065EE0)

// $1066100: [32-bit float] New York Minute Time: Part III - Prologue
function new_york_minute_time_part_iii_prologue() => float(0x1066100)

// $10661AC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_19() => dword(0x10661AC)

// $10661CC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_7() => dword(0x10661CC)

// $106731C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_11() => dword(0x106731C)

// $106749C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_9() => dword(0x106749C)

// $106769C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_18() => dword(0x106769C)

// $1067A9C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_19() => dword(0x1067A9C)

// $106830C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_13() => dword(0x106830C)

// $10686BC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_20() => dword(0x10686BC)

// $1068B6C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_3() => dword(0x1068B6C)

// $106982C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_12() => dword(0x106982C)

// $10699AC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_10() => dword(0x10699AC)

// $1069AAC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_4() => dword(0x1069AAC)

// $1069FAC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_20() => dword(0x1069FAC)

// $106A81C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_14() => dword(0x106A81C)

// $106B07C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_4() => dword(0x106B07C)

// $106BD3C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_13() => dword(0x106BD3C)

// $106BEBC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_11() => dword(0x106BEBC)

// $106BFBC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_5() => dword(0x106BFBC)

// $106C7EC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_19() => dword(0x106C7EC)

// $106CB9C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status() => dword(0x106CB9C)

// $106CD2C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_15() => dword(0x106CD2C)

// $106D0DC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_21() => dword(0x106D0DC)

// $106D4DC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_8() => dword(0x106D4DC)

// $106D58C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_5() => dword(0x106D58C)

// $106D8CC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_21() => dword(0x106D8CC)

// $106E24C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_14() => dword(0x106E24C)

// $106E28C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_6() => dword(0x106E28C)

// $106E3CC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_12() => dword(0x106E3CC)

// $106ECFC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_20() => dword(0x106ECFC)

// $106F23C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_16() => dword(0x106F23C)

// $106F5EC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_22() => dword(0x106F5EC)

// $106F840: [32-bit float] New York Minute Time: Part III - Chapter 6
function new_york_minute_time_part_iii_chapter_6() => float(0x106F840)

// $106F9EC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_9() => dword(0x106F9EC)

// $107075C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_15() => dword(0x107075C)

// $107079C: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_7() => dword(0x107079C)

// $1070EAC: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_6() => dword(0x1070EAC)

// $107120C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_21() => dword(0x107120C)

// $10716CC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_2() => dword(0x10716CC)

// $107174C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_17() => dword(0x107174C)

// $10718CC: [32-bit] Pt.3 C2: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_3_c2_enemy_status_flag() => dword(0x10718CC)

// $1071AFC: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_23() => dword(0x1071AFC)

// $10722EC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_22() => dword(0x10722EC)

// $107262C: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status() => dword(0x107262C)

// $1072C6C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_16() => dword(0x1072C6C)

// $1072CAC: [32-bit] Pt.1 C4 Continued: Enemy Status
function pt_1_c4_continued_enemy_status_8() => dword(0x1072CAC)

// $1072EEC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_6() => dword(0x1072EEC)

// $107324C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status() => dword(0x107324C)

// $10733BC: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_7() => dword(0x10733BC)

// $107371C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_22() => dword(0x107371C)

// $1073A30: [32-bit float] New York Minute Time: Part I - Chapter 6
function new_york_minute_time_part_i_chapter_6() => float(0x1073A30)

// $1073C5C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_18() => dword(0x1073C5C)

// $1073CEC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_3() => dword(0x1073CEC)

// $107400C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_24() => dword(0x107400C)

// $107490C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_23() => dword(0x107490C)

// $1074C4C: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_2() => dword(0x1074C4C)

// $1074DE0: [32-bit float] New York Minute Time: Part I - Chapter 4 Continued
function new_york_minute_time_part_i_chapter_4_continued() => float(0x1074DE0)

// $107517C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_17() => dword(0x107517C)

// $10753FC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_7() => dword(0x10753FC)

// $107575C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_2() => dword(0x107575C)

// $10758CC: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_8() => dword(0x10758CC)

// $1075C2C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_23() => dword(0x1075C2C)

// $107616C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_19() => dword(0x107616C)

// $10761FC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_4() => dword(0x10761FC)

// $107651C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_25() => dword(0x107651C)

// $1076E1C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_24() => dword(0x1076E1C)

// $107715C: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_3() => dword(0x107715C)

// $107768C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_18() => dword(0x107768C)

// $107790C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_8() => dword(0x107790C)

// $1077D7C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_3() => dword(0x1077D7C)

// $1077DDC: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_9() => dword(0x1077DDC)

// $107806C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status() => dword(0x107806C)

// $107813C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_24() => dword(0x107813C)

// $107870C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_5() => dword(0x107870C)

// $1078A2C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_26() => dword(0x1078A2C)

// $107932C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_25() => dword(0x107932C)

// $107966C: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_4() => dword(0x107966C)

// $1079B9C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_19() => dword(0x1079B9C)

// $107A27C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_10() => dword(0x107A27C)

// $107A28C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_4() => dword(0x107A28C)

// $107A3FC: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_10() => dword(0x107A3FC)

// $107A64C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_25() => dword(0x107A64C)

// $107AC1C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_6() => dword(0x107AC1C)

// $107AF3C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_27() => dword(0x107AF3C)

// $107B22C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_9() => dword(0x107B22C)

// $107B83C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_26() => dword(0x107B83C)

// $107BB7C: [32-bit] Pt.1 C4: Enemy Status Flag
//           └───> Pt.3 C4: Enemy Status
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c4_enemy_status_flag_2() => dword(0x107BB7C)

// $107C0AC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_20() => dword(0x107C0AC)

// $107C22C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_13() => dword(0x107C22C)

// $107C78C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_11() => dword(0x107C78C)

// $107CA1C: [32-bit] Pt.2 C3: Enemy Status
function pt_2_c3_enemy_status_11() => dword(0x107CA1C)

// $107CB5C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_26() => dword(0x107CB5C)

// $107CD6C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status() => dword(0x107CD6C)

// $107D12C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_7() => dword(0x107D12C)

// $107D44C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_28() => dword(0x107D44C)

// $107D73C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_10() => dword(0x107D73C)

// $107D830: [32-bit float] New York Minute Time: Part II - Prologue
function new_york_minute_time_part_ii_prologue() => float(0x107D830)

// $107E19C: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_5() => dword(0x107E19C)

// $107E5BC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_21() => dword(0x107E5BC)

// $107E6BC: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_2() => dword(0x107E6BC)

// $107E73C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_14() => dword(0x107E73C)

// $107F06C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_27() => dword(0x107F06C)

// $107F15C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_27() => dword(0x107F15C)

// $107F27C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_2() => dword(0x107F27C)

// $107F49C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status() => dword(0x107F49C)

// $107F63C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_8() => dword(0x107F63C)

// $107F64C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_5() => dword(0x107F64C)

// $107F95C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_29() => dword(0x107F95C)

// $107FEAC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status() => dword(0x107FEAC)

// $10807BC: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_6() => dword(0x10807BC)

// $1080A9C: [32-bit] Pt.1 C7 Continued: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c7_continued_enemy_status_flag() => dword(0x1080A9C)

// $1080ACC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_22() => dword(0x1080ACC)

// $1080C4C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_15() => dword(0x1080C4C)

// $10811FC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_12() => dword(0x10811FC)

// $108157C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_28() => dword(0x108157C)

// $108166C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_28() => dword(0x108166C)

// $10819AC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_2() => dword(0x10819AC)

// $1081B4C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_9() => dword(0x1081B4C)

// $1081E6C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_30() => dword(0x1081E6C)

// $1081FDC: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_3() => dword(0x1081FDC)

// $1082CCC: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_7() => dword(0x1082CCC)

// $1082FDC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_23() => dword(0x1082FDC)

// $108315C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_16() => dword(0x108315C)

// $10836BC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_2() => dword(0x10836BC)

// $108399C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status() => dword(0x108399C)

// $1083A8C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_29() => dword(0x1083A8C)

// $1083AEC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_13() => dword(0x1083AEC)

// $1083B7C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_29() => dword(0x1083B7C)

// $1083DAC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_3() => dword(0x1083DAC)

// $1083EBC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_3() => dword(0x1083EBC)

// $108401C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_20() => dword(0x108401C)

// $108405C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_10() => dword(0x108405C)

// $108437C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_31() => dword(0x108437C)

// $108466C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_11() => dword(0x108466C)

// $10851DC: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_8() => dword(0x10851DC)

// $10854EC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_24() => dword(0x10854EC)

// $108566C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_17() => dword(0x108566C)

// $1085BCC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_3() => dword(0x1085BCC)

// $1085F9C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_30() => dword(0x1085F9C)

// $1085FBC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_2() => dword(0x1085FBC)

// $1085FFC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_14() => dword(0x1085FFC)

// $108608C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_30() => dword(0x108608C)

// $10863CC: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_4() => dword(0x10863CC)

// $108652C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_21() => dword(0x108652C)

// $108656C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_11() => dword(0x108656C)

// $108688C: [32-bit] Pt.2 C4: Enemy Status
function pt_2_c4_enemy_status_32() => dword(0x108688C)

// $1086B7C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_12() => dword(0x1086B7C)

// $10876EC: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_9() => dword(0x10876EC)

// $10879FC: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_25() => dword(0x10879FC)

// $1087B7C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_18() => dword(0x1087B7C)

// $10884AC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_31() => dword(0x10884AC)

// $10884CC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_3() => dword(0x10884CC)

// $108850C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_15() => dword(0x108850C)

// $108859C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_31() => dword(0x108859C)

// $10888DC: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_5() => dword(0x10888DC)

// $10889C0: [32-bit float] New York Minute Time: Part II - Chapter 4
function new_york_minute_time_part_ii_chapter_4() => float(0x10889C0)

// $1088A3C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_22() => dword(0x1088A3C)

// $1088A7C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_12() => dword(0x1088A7C)

// $108908C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_13() => dword(0x108908C)

// $1089BFC: [32-bit] Pt.1 C4: Enemy Status
function pt_1_c4_enemy_status_10() => dword(0x1089BFC)

// $1089EDC: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_6() => dword(0x1089EDC)

// $1089F0C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_26() => dword(0x1089F0C)

// $108A08C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_19() => dword(0x108A08C)

// $108A25C: [32-bit] Pt.1 C1: Enemy Status Flag
//           0x00 = Alive
//           0x01 = Dead
function pt_1_c1_enemy_status_flag() => dword(0x108A25C)

// $108A31C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_4() => dword(0x108A31C)

// $108A5EC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_4() => dword(0x108A5EC)

// $108A9BC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_32() => dword(0x108A9BC)

// $108A9DC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_4() => dword(0x108A9DC)

// $108AA1C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_16() => dword(0x108AA1C)

// $108AA40: [32-bit float] New York Minute Time: Part I - Prologue
function new_york_minute_time_part_i_prologue() => float(0x108AA40)

// $108ADEC: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_6() => dword(0x108ADEC)

// $108AF4C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_23() => dword(0x108AF4C)

// $108AF8C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_13() => dword(0x108AF8C)

// $108B6AC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_14() => dword(0x108B6AC)

// $108C3EC: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_7() => dword(0x108C3EC)

// $108C41C: [32-bit] Pt.3 C7: Enemy Status
function pt_3_c7_enemy_status_27() => dword(0x108C41C)

// $108C59C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_20() => dword(0x108C59C)

// $108C76C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status() => dword(0x108C76C)

// $108C82C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_5() => dword(0x108C82C)

// $108C9B0: [32-bit float] New York Minute Time: Part II - Chapter 3
function new_york_minute_time_part_ii_chapter_3() => float(0x108C9B0)

// $108CAFC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_5() => dword(0x108CAFC)

// $108CECC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_33() => dword(0x108CECC)

// $108CEEC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_5() => dword(0x108CEEC)

// $108CF2C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_17() => dword(0x108CF2C)

// $108CFBC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_32() => dword(0x108CFBC)

// $108D2FC: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_7() => dword(0x108D2FC)

// $108D45C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_24() => dword(0x108D45C)

// $108D49C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_14() => dword(0x108D49C)

// $108DBBC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_15() => dword(0x108DBBC)

// $108E550: [32-bit float] New York Minute Time: Part III - Chapter 7
function new_york_minute_time_part_iii_chapter_7() => float(0x108E550)

// $108E8FC: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_8() => dword(0x108E8FC)

// $108EAAC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_21() => dword(0x108EAAC)

// $108ED3C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_6() => dword(0x108ED3C)

// $108ED8C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_2() => dword(0x108ED8C)

// $108F00C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_6() => dword(0x108F00C)

// $108F3DC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_34() => dword(0x108F3DC)

// $108F3FC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_6() => dword(0x108F3FC)

// $108F43C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_18() => dword(0x108F43C)

// $108F80C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_8() => dword(0x108F80C)

// $108F96C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_25() => dword(0x108F96C)

// $108F9AC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_15() => dword(0x108F9AC)

// $10900CC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_16() => dword(0x10900CC)

// $10901AC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status() => dword(0x10901AC)

// $10908DC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_33() => dword(0x10908DC)

// $1090E0C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_9() => dword(0x1090E0C)

// $1090FBC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_22() => dword(0x1090FBC)

// $109124C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_7() => dword(0x109124C)

// $109129C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_3() => dword(0x109129C)

// $109151C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_7() => dword(0x109151C)

// $10918EC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_35() => dword(0x10918EC)

// $109190C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_7() => dword(0x109190C)

// $109194C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_19() => dword(0x109194C)

// $1091D1C: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_9() => dword(0x1091D1C)

// $1091E7C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_26() => dword(0x1091E7C)

// $1091EBC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_16() => dword(0x1091EBC)

// $10925DC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_17() => dword(0x10925DC)

// $10927CC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_2() => dword(0x10927CC)

// $1092DEC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_34() => dword(0x1092DEC)

// $109331C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_10() => dword(0x109331C)

// $10934CC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_23() => dword(0x10934CC)

// $10937AC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_4() => dword(0x10937AC)

// $1093A2C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_8() => dword(0x1093A2C)

// $1093DFC: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_36() => dword(0x1093DFC)

// $1093E1C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_8() => dword(0x1093E1C)

// $1093E5C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_20() => dword(0x1093E5C)

// $109422C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_4() => dword(0x109422C)

// $109438C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_27() => dword(0x109438C)

// $1094AEC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_18() => dword(0x1094AEC)

// $1094B6C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_8() => dword(0x1094B6C)

// $1094DEC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_3() => dword(0x1094DEC)

// $10952FC: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_35() => dword(0x10952FC)

// $109582C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_11() => dword(0x109582C)

// $10959DC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_24() => dword(0x10959DC)

// $1095CBC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_5() => dword(0x1095CBC)

// $109630C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_37() => dword(0x109630C)

// $109632C: [32-bit] Pt.1 C7 Continued: Enemy Status (Kaufman)
function pt_1_c7_continued_enemy_status_kaufman() => dword(0x109632C)

// $109636C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_21() => dword(0x109636C)

// $109673C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_5() => dword(0x109673C)

// $109689C: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_28() => dword(0x109689C)

// $1096FFC: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_19() => dword(0x1096FFC)

// $10972FC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_4() => dword(0x10972FC)

// $109780C: [32-bit] Pt.2 C5: Enemy Status
function pt_2_c5_enemy_status_36() => dword(0x109780C)

// $1097EEC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_25() => dword(0x1097EEC)

// $109849C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_9() => dword(0x109849C)

// $109881C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_38() => dword(0x109881C)

// $109887C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_22() => dword(0x109887C)

// $109897C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_9() => dword(0x109897C)

// $1098B4C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_9() => dword(0x1098B4C)

// $1098C4C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_6() => dword(0x1098C4C)

// $1098DAC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_29() => dword(0x1098DAC)

// $109950C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_20() => dword(0x109950C)

// $109980C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_5() => dword(0x109980C)

// $1099940: [32-bit float] New York Minute Time: Part II - Chapter 5
function new_york_minute_time_part_ii_chapter_5() => float(0x1099940)

// $109A35C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_12() => dword(0x109A35C)

// $109A3FC: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_26() => dword(0x109A3FC)

// $109A9AC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_10() => dword(0x109A9AC)

// $109AD2C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_39() => dword(0x109AD2C)

// $109AD8C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_23() => dword(0x109AD8C)

// $109B05C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_10() => dword(0x109B05C)

// $109B15C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_7() => dword(0x109B15C)

// $109B2BC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_30() => dword(0x109B2BC)

// $109B2FC: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_17() => dword(0x109B2FC)

// $109BA1C: [32-bit] Pt.3 C3: Enemy Status
function pt_3_c3_enemy_status_21() => dword(0x109BA1C)

// $109BD1C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_6() => dword(0x109BD1C)

// $109C67C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_10() => dword(0x109C67C)

// $109C86C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_13() => dword(0x109C86C)

// $109C90C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_27() => dword(0x109C90C)

// $109CEBC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_11() => dword(0x109CEBC)

// $109D23C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_40() => dword(0x109D23C)

// $109D29C: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_24() => dword(0x109D29C)

// $109D56C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_11() => dword(0x109D56C)

// $109D66C: [32-bit] Pt.2 C2: Enemy Status
//           └───> Pt.3 C4: Enemy Status
function pt_2_c2_enemy_status_10() => dword(0x109D66C)

// $109D7CC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_31() => dword(0x109D7CC)

// $109EB5C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_7() => dword(0x109EB5C)

// $109EB8C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_11() => dword(0x109EB8C)

// $109ED7C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_14() => dword(0x109ED7C)

// $109F3CC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_12() => dword(0x109F3CC)

// $109F74C: [32-bit] Pt.2 C6: Enemy Status
function pt_2_c6_enemy_status_41() => dword(0x109F74C)

// $109F7AC: [32-bit] Pt.3 C7 Continued: Enemy Status
function pt_3_c7_continued_enemy_status_25() => dword(0x109F7AC)

// $109FA7C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_12() => dword(0x109FA7C)

// $109FB7C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_11() => dword(0x109FB7C)

// $109FCDC: [32-bit] Pt.2 C1: Enemy Status
function pt_2_c1_enemy_status_32() => dword(0x109FCDC)

// $10A117C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_8() => dword(0x10A117C)

// $10A128C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_15() => dword(0x10A128C)

// $10A147C: [32-bit] Pt.3 C8 Continued: Enemy Status
function pt_3_c8_continued_enemy_status_12() => dword(0x10A147C)

// $10A18DC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_13() => dword(0x10A18DC)

// $10A1BDC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_6() => dword(0x10A1BDC)

// $10A1CC0: [32-bit float] New York Minute Time: Part III - Chapter 7 Continued
function new_york_minute_time_part_iii_chapter_7_continued() => float(0x10A1CC0)

// $10A1E10: [32-bit float] New York Minute Time: Part II - Chapter 1
function new_york_minute_time_part_ii_chapter_1() => float(0x10A1E10)

// $10A1F8C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_13() => dword(0x10A1F8C)

// $10A208C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_12() => dword(0x10A208C)

// $10A2570: [32-bit float] New York Minute Time: Part III - Chapter 3
function new_york_minute_time_part_iii_chapter_3() => float(0x10A2570)

// $10A379C: [32-bit] Pt.1 C7: Enemy Status
function pt_1_c7_enemy_status_16() => dword(0x10A379C)

// $10A381C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_8() => dword(0x10A381C)

// $10A383C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_28() => dword(0x10A383C)

// $10A3DEC: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_14() => dword(0x10A3DEC)

// $10A40EC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_7() => dword(0x10A40EC)

// $10A459C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_13() => dword(0x10A459C)

// $10A4A9C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_9() => dword(0x10A4A9C)

// $10A582C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_18() => dword(0x10A582C)

// $10A58D0: [32-bit float] New York Minute Time: Part I - Chapter 7
function new_york_minute_time_part_i_chapter_7() => float(0x10A58D0)

// $10A5AC0: [32-bit float] New York Minute Time: Part III - Chapter 8 Continued
function new_york_minute_time_part_iii_chapter_8_continued() => float(0x10A5AC0)

// $10A5D2C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_9() => dword(0x10A5D2C)

// $10A5D4C: [32-bit] Pt.1 C2: Enemy Status
function pt_1_c2_enemy_status_29() => dword(0x10A5D4C)

// $10A62A0: [32-bit float] New York Minute Time: Part II - Chapter 6
function new_york_minute_time_part_ii_chapter_6() => float(0x10A62A0)

// $10A640C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_15() => dword(0x10A640C)

// $10A65FC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_8() => dword(0x10A65FC)

// $10A6AAC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_14() => dword(0x10A6AAC)

// $10A6ABC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_14() => dword(0x10A6ABC)

// $10A6FAC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_10() => dword(0x10A6FAC)

// $10A7D3C: [32-bit] Pt.1 C5: Enemy Status
function pt_1_c5_enemy_status_19() => dword(0x10A7D3C)

// $10A7F2C: [32-bit float] Pt.1 C2: Mike the Cowboy Health
//           350.0 = Full
//           0.0 = Dead
function pt_1_c2_mike_the_cowboy_health() => float(0x10A7F2C)

// $10A823C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_10() => dword(0x10A823C)

// $10A825C: [32-bit] Pt.1 C2: Enemy Status (Mike the Cowboy)
function pt_1_c2_enemy_status_mike_the_cowboy() => dword(0x10A825C)

// $10A891C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_16() => dword(0x10A891C)

// $10A8B0C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_9() => dword(0x10A8B0C)

// $10A8FBC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_15() => dword(0x10A8FBC)

// $10A8FCC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_15() => dword(0x10A8FCC)

// $10A94BC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_11() => dword(0x10A94BC)

// $10A9E70: [32-bit float] New York Minute Time: Part I - Chapter 5
function new_york_minute_time_part_i_chapter_5() => float(0x10A9E70)

// $10AA6E0: [32-bit float] New York Minute Time: Part I - Chapter 2
function new_york_minute_time_part_i_chapter_2() => float(0x10AA6E0)

// $10AA74C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_11() => dword(0x10AA74C)

// $10AAE2C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_17() => dword(0x10AAE2C)

// $10AB01C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_10() => dword(0x10AB01C)

// $10AB4CC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_16() => dword(0x10AB4CC)

// $10AB4DC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_16() => dword(0x10AB4DC)

// $10AB9CC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_12() => dword(0x10AB9CC)

// $10ACD6C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_12() => dword(0x10ACD6C)

// $10AD33C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_18() => dword(0x10AD33C)

// $10AD52C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_11() => dword(0x10AD52C)

// $10AD9DC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_17() => dword(0x10AD9DC)

// $10ADEDC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_13() => dword(0x10ADEDC)

// $10AF27C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_13() => dword(0x10AF27C)

// $10AF84C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_19() => dword(0x10AF84C)

// $10AFEEC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_18() => dword(0x10AFEEC)

// $10AFEFC: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_17() => dword(0x10AFEFC)

// $10B03EC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_14() => dword(0x10B03EC)

// $10B178C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_14() => dword(0x10B178C)

// $10B1D5C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_20() => dword(0x10B1D5C)

// $10B23FC: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_19() => dword(0x10B23FC)

// $10B240C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_18() => dword(0x10B240C)

// $10B28FC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_15() => dword(0x10B28FC)

// $10B3C9C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_15() => dword(0x10B3C9C)

// $10B426C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_21() => dword(0x10B426C)

// $10B4480: [32-bit float] New York Minute Time: Part I - Chapter 4
function new_york_minute_time_part_i_chapter_4() => float(0x10B4480)

// $10B490C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_20() => dword(0x10B490C)

// $10B491C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_19() => dword(0x10B491C)

// $10B4E0C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_16() => dword(0x10B4E0C)

// $10B61AC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_16() => dword(0x10B61AC)

// $10B677C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_22() => dword(0x10B677C)

// $10B6ACC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_12() => dword(0x10B6ACC)

// $10B6E1C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_21() => dword(0x10B6E1C)

// $10B6E2C: [32-bit] Pt.1 C7 Continued: Enemy Status
function pt_1_c7_continued_enemy_status_20() => dword(0x10B6E2C)

// $10B731C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_17() => dword(0x10B731C)

// $10B86BC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_17() => dword(0x10B86BC)

// $10B8C8C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_23() => dword(0x10B8C8C)

// $10B8F60: [32-bit float] New York Minute Time: Part I - Chapter 7 Continued
function new_york_minute_time_part_i_chapter_7_continued() => float(0x10B8F60)

// $10B8FDC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_13() => dword(0x10B8FDC)

// $10B932C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_22() => dword(0x10B932C)

// $10B982C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_18() => dword(0x10B982C)

// $10BABCC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_18() => dword(0x10BABCC)

// $10BB19C: [32-bit] Pt.3 C1: Enemy Status
function pt_3_c1_enemy_status_24() => dword(0x10BB19C)

// $10BB4EC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_14() => dword(0x10BB4EC)

// $10BBD3C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_19() => dword(0x10BBD3C)

// $10BD0DC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_19() => dword(0x10BD0DC)

// $10BD2D0: [32-bit float] New York Minute Time: Part III - Chapter 1
function new_york_minute_time_part_iii_chapter_1() => float(0x10BD2D0)

// $10BD9FC: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_15() => dword(0x10BD9FC)

// $10BDD4C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_23() => dword(0x10BDD4C)

// $10BE24C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_20() => dword(0x10BE24C)

// $10BF5EC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_20() => dword(0x10BF5EC)

// $10BFF0C: [32-bit] Pt.1 C1: Enemy Status
function pt_1_c1_enemy_status_16() => dword(0x10BFF0C)

// $10C025C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_24() => dword(0x10C025C)

// $10C075C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_21() => dword(0x10C075C)

// $10C2040: [32-bit float] New York Minute Time: Part I - Chapter 1
function new_york_minute_time_part_i_chapter_1() => float(0x10C2040)

// $10C276C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_25() => dword(0x10C276C)

// $10C2C6C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_22() => dword(0x10C2C6C)

// $10C447C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_21() => dword(0x10C447C)

// $10C4C7C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_26() => dword(0x10C4C7C)

// $10C698C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_22() => dword(0x10C698C)

// $10C718C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_27() => dword(0x10C718C)

// $10C768C: [32-bit] Pt.3 C2: Enemy Status (Mike the Cowboy)
function pt_3_c2_enemy_status_mike_the_cowboy() => dword(0x10C768C)

// $10C8E9C: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_23() => dword(0x10C8E9C)

// $10C969C: [32-bit] Pt.2 C2: Enemy Status
function pt_2_c2_enemy_status_28() => dword(0x10C969C)

// $10C9EEC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_23() => dword(0x10C9EEC)

// $10CB3AC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_24() => dword(0x10CB3AC)

// $10CB7D0: [32-bit float] New York Minute Time: Part II - Chapter 2
function new_york_minute_time_part_ii_chapter_2() => float(0x10CB7D0)

// $10CC3FC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_24() => dword(0x10CC3FC)

// $10CD8BC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_25() => dword(0x10CD8BC)

// $10CE90C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_25() => dword(0x10CE90C)

// $10CFDCC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_26() => dword(0x10CFDCC)

// $10D0E1C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_26() => dword(0x10D0E1C)

// $10D22DC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_27() => dword(0x10D22DC)

// $10D332C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_27() => dword(0x10D332C)

// $10D47EC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_28() => dword(0x10D47EC)

// $10D583C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_28() => dword(0x10D583C)

// $10D6CFC: [32-bit] Pt.3 C4: Enemy Status
function pt_3_c4_enemy_status_29() => dword(0x10D6CFC)

// $10D7D4C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_29() => dword(0x10D7D4C)

// $10D8E30: [32-bit float] New York Minute Time: Part III - Chapter 4
function new_york_minute_time_part_iii_chapter_4() => float(0x10D8E30)

// $10DA25C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_30() => dword(0x10DA25C)

// $10DC76C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_31() => dword(0x10DC76C)

// $10DEC7C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_32() => dword(0x10DEC7C)

// $10E118C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_33() => dword(0x10E118C)

// $10E369C: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_34() => dword(0x10E369C)

// $10E5BAC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_35() => dword(0x10E5BAC)

// $10E80BC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_36() => dword(0x10E80BC)

// $10EA5CC: [32-bit] Pt.3 C2: Enemy Status
function pt_3_c2_enemy_status_37() => dword(0x10EA5CC)

// $10EC700: [32-bit float] New York Minute Time: Part III - Chapter 2
function new_york_minute_time_part_iii_chapter_2() => float(0x10EC700)

// $149F6BC: [32-bit] Pt.1 C7: Memoriam Secret Discovered Flag
//           0x00 = False
//           0x01 = True
function pt_1_c7_memoriam_secret_discovered_flag() => dword(0x149F6BC)

WeaponLookup = {
    0x00: "Unarmed",
    0x01: "9mm Pistol",
    0x02: "Dual 9mm Pistols",
    0x03: "Desert Eagle",
    0x04: "Dual Desert Eagles",
    0x05: "Sawed-Off Shotgun",
    0x06: "Pump-Action Shotgun",
    0x07: "Striker Shotgun",
    0x08: "Ingram MAC-10",
    0x09: "Dual Ingram MAC-10s",
    0x0a: "MP5",
    0x0b: "Kalashnikov",
    0x0c: "M4 Carbine",
    0x0d: "Sniper Rifle",
    0x0e: "Dragunov",
}

achievement(
    title = "The Darkness Inside", points = 3, type="progression",
    description = "Complete Part I: Prologue on Detective difficulty",
    id = 546096, badge = "620791", published = "9/23/2025 8:09:30 PM", modified = "9/23/2025 8:37:23 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x0A && chapter_id() == 0x08 &&
              prev(progression_events()) == 0x1034BC0 && progression_events() == 0x00 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Elevator Doors", points = 5, type="progression",
    description = "Complete Part I: Chapter 1 on Detective difficulty",
    id = 546097, badge = "620792", published = "9/23/2025 8:09:30 PM", modified = "9/23/2025 8:37:23 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x00 && prev(chapter_id()) == 0x19 &&
              chapter_id() == 0x2A &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance I", points = 10,
    description = "Complete Part I: Chapter 1 in one session without using painkillers on any difficulty",
    id = 546098, badge = "620793", published = "9/23/2025 8:09:30 PM", modified = "9/23/2025 8:37:24 PM",
    trigger = trigger_when((once(once(once(prev(current_player_location()) == 0x04 &&
                  current_player_location() == 0x08) && prev(current_player_location()) == 0x10 &&
                  current_player_location() == 0x0F) && prev(current_player_location()) == 0x06 &&
                  current_player_location() == 0x07) && difficulty() != 0x04 && current_player_location() == 0x00 &&
                  prev(chapter_id()) == 0x19 && chapter_id() == 0x2A)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x30345F57) || dword_be(0x5FC0F4) != 0x61726568 ||
                  dword_be(0x5FC0F8) != 0x6F757365
              ) &&
              (always_false() || (never((chapter_id() == 0x19 && current_player_location() == 0x04 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "A Criminal Mastermind", points = 5, type="progression",
    description = "Complete Part I: Chapter 2 on Detective difficulty",
    id = 546099, badge = "620794", published = "9/23/2025 8:09:31 PM", modified = "9/23/2025 8:37:24 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x03 && prev(chapter_id()) == 0x2A &&
              chapter_id() == 0x06 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance II", points = 10,
    description = "Complete Part I: Chapter 2 in one session without using painkillers on any difficulty",
    id = 546100, badge = "620795", published = "9/23/2025 8:09:31 PM", modified = "9/23/2025 8:37:24 PM",
    trigger = trigger_when((once(once(once(once(prev(progression_events()) != 0x1007260 &&
                  progression_events() == 0x1007260) && prev(current_player_location()) == 0x0D &&
                  current_player_location() == 0x0C) && prev(current_player_location()) == 0x0C &&
                  current_player_location() == 0x02) && prev(current_player_location()) == 0x02 &&
                  current_player_location() == 0x0A) && difficulty() != 0x04 && current_player_location() == 0x03 &&
                  prev(chapter_id()) == 0x2A && chapter_id() == 0x06)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x30355F46) || dword_be(0x5FC0F4) != 0x69727374 ||
                  dword_be(0x5FC0F8) != 0x5F566F64 || dword_be(0x5FC0FC) != 0x6B610000
              ) &&
              (always_false() || (never((chapter_id() == 0x2A && current_player_location() <= 0x01 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "The Good, the Bad, and the Cowboy", points = 5,
    description = "Complete Part I: Chapter 2 with Mike the Cowboy alive and following you at all times without commanding him to wait, in one session on any difficulty",
    id = 546101, badge = "620796", published = "9/23/2025 8:09:31 PM", modified = "9/28/2025 4:24:02 PM",
    trigger = once(_25_bytes_ascii_location_id() == 0x30355F46 && prev(progression_events()) != 0x1007260 &&
                  progression_events() == 0x1007260
              ) &&
              trigger_when((once(once(prev(current_player_location()) == 0x0D && current_player_location() == 0x0C) &&
                  prev(current_player_location()) == 0x0C && current_player_location() == 0x02) && difficulty() != 0x04 &&
                  current_player_location() == 0x03 && prev(chapter_id()) == 0x2A && chapter_id() == 0x06)
              ) &&
              unless((prev(pt_1_c2_mike_the_cowboy_health()) <= 350.0 &&
                  prev(pt_1_c2_mike_the_cowboy_health()) >= 1.0 && pt_1_c2_mike_the_cowboy_health() == 0.0)
              ) && unless(pt_1_c2_enemy_status_mike_the_cowboy() == 0x01) &&
              disable_when(prev(dword(player_data() + 0x928)) == 0x254) &&
              unless(_25_bytes_ascii_location_id() != 0x30355F46) &&
              (always_false() || (never((chapter_id() == 0x2A && current_player_location() <= 0x01 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "The Depths of My Brain", points = 5, type="progression",
    description = "Complete Part I: Chapter 3 on Detective difficulty",
    id = 546102, badge = "620797", published = "9/23/2025 8:09:31 PM", modified = "9/23/2025 8:37:24 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x09 && prev(chapter_id()) == 0x06 &&
              chapter_id() == 0x16 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "No 'Us' in This", points = 5, type="progression",
    description = "Complete Part I: Chapter 4 on Detective difficulty",
    id = 546103, badge = "620798", published = "9/23/2025 8:09:32 PM", modified = "9/23/2025 8:37:25 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x0D && prev(chapter_id()) == 0x0D &&
              chapter_id() == 0x1C &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance III", points = 10,
    description = "Complete Part I: Chapter 4 in one session without using painkillers on any difficulty",
    id = 546104, badge = "620799", published = "9/23/2025 8:09:32 PM", modified = "9/23/2025 8:37:25 PM",
    trigger = trigger_when((once(once(once(prev(progression_events()) != 0x1022820 &&
                  progression_events() == 0x1022820) && prev(chapter_id()) == 0x16 && chapter_id() == 0x0D) &&
                  prev(current_player_location()) == 0x0A && current_player_location() == 0x0B) && difficulty() != 0x04 &&
                  current_player_location() == 0x0D && prev(chapter_id()) == 0x0D && chapter_id() == 0x1C)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(cutscene_related()) == 0x00 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x30375F4D) || dword_be(0x5FC0F4) != 0x6178735F ||
                  dword_be(0x5FC0F8) != 0x41706172 || dword_be(0x5FC0FC) != 0x746D656E || dword_be(0x5FC100) != 0x745F7370
              ) &&
              (always_false() || (never((chapter_id() == 0x16 && current_player_location() == 0x13 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Home Is Where the Boom Is", points = 2, type="missable",
    description = "Observe the Cleaners one-time-only demolition show through the sniper's hideout in Part I: Chapter 4",
    id = 546105, badge = "620800", published = "9/23/2025 8:09:32 PM", modified = "9/23/2025 8:37:25 PM",
    trigger = chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D && current_player_location() == 0x0C &&
              prev(progression_events()) == 0x1021E80 && progression_events() == 0x00
)

achievement(
    title = "Like a Plumber on a Ledge", points = 2, type="missable",
    description = "Trigger the hidden ledge secret outside Max's apartment in Part I: Chapter 4 Continued, and complete it without falling",
    id = 546106, badge = "620801", published = "9/23/2025 8:09:32 PM", modified = "9/23/2025 8:37:25 PM",
    trigger = repeated(3,
                  chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(dword(player_data() + 0x928)) != 0x254 && current_player_location() == 0x00 &&
                  dword(player_data() + 0x928) == 0x254
              ) &&
              trigger_when(once(once(prev(background_audio_volume_scale()) != 0.0 &&
                  background_audio_volume_scale() == 0.0) &&
                  float(dword(dword(player_data() + 0x15C) + 0x20) + 0xD0) <= -22.0 &&
                  float(dword(dword(player_data() + 0x15C) + 0x20) + 0xD0) >= -24.0 &&
                  float(dword(dword(player_data() + 0x15C) + 0x20) + 0xD8) <= -7.0 &&
                  float(dword(dword(player_data() + 0x15C) + 0x20) + 0xD8) >= -13.0)
              ) &&
              (always_false() || (never((chapter_id() != 0x0D && _25_bytes_ascii_location_id() != 0x30375F4D)) &&
                never((player_health_dword() == 0x00) || current_player_location() == 0x06)))
)

achievement(
    title = "A Sign of Her Passage", points = 5, type="progression",
    description = "Complete Part I: Chapter 5 on Detective difficulty",
    id = 546107, badge = "620802", published = "9/23/2025 8:09:33 PM", modified = "9/23/2025 8:37:26 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x07 && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x01 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance IV", points = 10,
    description = "Complete Part I: Chapter 5 in one session without using painkillers on any difficulty",
    id = 546108, badge = "620803", published = "9/23/2025 8:09:33 PM", modified = "9/23/2025 8:37:26 PM",
    trigger = trigger_when((once(once(once(prev(current_player_location()) == 0x08 &&
                  current_player_location() == 0x01) && prev(current_player_location()) == 0x0F &&
                  current_player_location() == 0x07) && prev(progression_events()) != 0x1017510 &&
                  progression_events() == 0x1017510) && difficulty() != 0x04 && current_player_location() == 0x07 &&
                  prev(chapter_id()) == 0x1C && chapter_id() == 0x01)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x30375F4D) || dword_be(0x5FC0F4) != 0x6178735F ||
                  dword_be(0x5FC0F8) != 0x41706172 || dword_be(0x5FC0FC) != 0x746D656E || dword_be(0x5FC100) != 0x745F4200
              ) &&
              (always_false() || (never((chapter_id() == 0x1C && current_player_location() == 0x06 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "A Linear Sequence of Scares", points = 5, type="progression",
    description = "Complete Part I: Chapter 6 on Detective difficulty",
    id = 546109, badge = "620804", published = "9/23/2025 8:09:33 PM", modified = "9/23/2025 8:37:26 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x06 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x14 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "The Million Dollar Question", points = 5, type="progression",
    description = "Complete Part I: Chapter 7 on Detective difficulty",
    id = 546110, badge = "620805", published = "9/23/2025 8:09:33 PM", modified = "9/23/2025 8:37:26 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x00 && prev(chapter_id()) == 0x1D &&
              chapter_id() == 0x15 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance V", points = 10,
    description = "Complete Part I: Chapter 7 in one session without using painkillers on any difficulty",
    id = 546111, badge = "620806", published = "9/23/2025 8:09:33 PM", modified = "9/23/2025 8:37:27 PM",
    trigger = trigger_when((once(once(once(once(once(once(prev(progression_events()) != 0x1012C80 &&
                  progression_events() == 0x1012C80) && chapter_id() == 0x14 && prev(current_player_location()) == 0x09 &&
                  current_player_location() == 0x05) && prev(chapter_id()) == 0x14 && chapter_id() == 0x1D) &&
                  prev(current_player_location()) == 0x08 && current_player_location() == 0x0B) &&
                  prev(current_player_location()) == 0x05 && current_player_location() == 0x04) &&
                  prev(progression_events()) != 0x100E460 && progression_events() == 0x100E460) && difficulty() != 0x04 &&
                  current_player_location() == 0x00 && prev(chapter_id()) == 0x1D && chapter_id() == 0x15)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x30395F55) || dword_be(0x5FC0F4) != 0x70706572 ||
                  dword_be(0x5FC0F8) != 0x5F456173 || dword_be(0x5FC0FC) != 0x745F5369 || dword_be(0x5FC100) != 0x64655F73
              ) &&
              (always_false() || (never((chapter_id() == 0x14 && current_player_location() == 0x03 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Payne's Encore", points = 2, type="missable",
    description = "Play a familiar melody on the piano in the Upper East Side building in Part I: Chapter 7",
    id = 546112, badge = "620807", published = "9/23/2025 8:09:34 PM", modified = "9/23/2025 8:37:27 PM",
    trigger = (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  current_player_location() == 0x05 && prev(pt_1_c7_interacted_with_piano_flag()) == 0x01 &&
                  pt_1_c7_interacted_with_piano_flag() == 0x00
              )
)

achievement(
    title = "A Quiet Room", points = 2, type="missable",
    description = "Discover the hidden room in Part I: Chapter 7 Continued",
    id = 546113, badge = "620808", published = "9/23/2025 8:09:35 PM", modified = "9/23/2025 8:37:27 PM",
    trigger = chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
              (current_player_location() == 0x02 || current_player_location() == 0x03) &&
              prev(pt_1_c7_memoriam_secret_discovered_flag()) == 0x00 &&
              pt_1_c7_memoriam_secret_discovered_flag() == 0x01
)

achievement(
    title = "Retro Ride", points = 2, type="missable",
    description = "Watch the secret sequence on the plasma TV in Part I: Chapter 7 Continued",
    id = 546114, badge = "620809", published = "9/23/2025 8:09:35 PM", modified = "9/26/2025 11:10:14 PM",
    trigger = chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
              (current_player_location() == 0x03 || current_player_location() == 0x05) &&
              (pt_1_c7_continued_interacted_with_plasma_tv_flag() == 0x01 ||
                  pt_1_c7_continued_interacted_with_plasma_tv_flag() == 0x00
              ) && prev(progression_events()) == 0x1010420 && progression_events() == 0x00
)

achievement(
    title = "A Binary Choice", points = 3, type="progression",
    description = "Complete Part II: Prologue on Detective difficulty",
    id = 546115, badge = "620810", published = "9/23/2025 8:09:35 PM", modified = "9/23/2025 8:37:28 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x01 && prev(chapter_id()) == 0x15 &&
              chapter_id() == 0x26 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Max Pain", points = 1, type="missable",
    description = "Annoy the officers in the Recreation Room in Part II: Prologue",
    id = 546116, badge = "620811", published = "9/23/2025 8:09:35 PM", modified = "9/23/2025 8:37:28 PM",
    trigger = chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x31305F50 &&
              tally(2,
                  once(current_player_location() == 0x09 && prev(pt_2_p0_interacting_with_air_conditioner_flag()) == 0x00 &&
                  pt_2_p0_interacting_with_air_conditioner_flag() == 0x01),
                  once(current_player_location() == 0x09 && prev(pt_2_p0_tv_status_2()) == 0x01 &&
                  pt_2_p0_tv_status_2() == 0x100)
              ) &&
              (always_false() || (never(_25_bytes_ascii_location_id() != 0x31305F50)))
)

achievement(
    title = "Payneful Endurance VI", points = 5,
    description = "Complete Part II: Prologue in one session without using Painkillers on any difficulty",
    id = 546117, badge = "620812", published = "9/23/2025 8:09:35 PM", modified = "9/23/2025 8:37:29 PM",
    trigger = trigger_when((once(prev(progression_events()) != 0xFFD370 && progression_events() == 0xFFD370) &&
                  difficulty() != 0x04 && current_player_location() == 0x01 && prev(chapter_id()) == 0x15 &&
                  chapter_id() == 0x26)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31305F50) || dword_be(0x5FC0F4) != 0x6F6C6963 ||
                  dword_be(0x5FC0F8) != 0x655F5374 || dword_be(0x5FC0FC) != 0x6174696F || dword_be(0x5FC100) != 0x6E000000
              ) &&
              (always_false() || (never((chapter_id() == 0x15 && current_player_location() == 0x02 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "The Things That I Want", points = 5, type="progression",
    description = "Complete Part II: Chapter 1 on Detective difficulty",
    id = 546118, badge = "620813", published = "9/23/2025 8:09:36 PM", modified = "9/23/2025 8:37:29 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0xFFFFFFFF && chapter_id() == 0x26 &&
              prev(_25_bytes_ascii_location_id()) == 0x31315F53 && prev(dword_be(0x5FC0F4)) == 0x65636F6E &&
              prev(dword_be(0x5FC0F8)) == 0x645F4164 && prev(dword_be(0x5FC0FC)) == 0x64726573 &&
              prev(dword_be(0x5FC100)) == 0x735F556E && prev(dword_be(0x5FC104)) == 0x6B6E6F77 &&
              prev(dword_be(0x5FC108)) == 0x6E000000 && _25_bytes_ascii_location_id() == 0x31325F43 &&
              dword_be(0x5FC0F4) == 0x6F6E6465 && dword_be(0x5FC0F8) == 0x6D6E6564 && dword_be(0x5FC0FC) == 0x5F427569 &&
              dword_be(0x5FC100) == 0x6C64696E && dword_be(0x5FC104) == 0x675F5350 && dword_be(0x5FC108) == 0x31000000 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance VII", points = 10,
    description = "Complete Part II: Chapter 1 in one session without using painkillers on any difficulty",
    id = 546119, badge = "620814", published = "9/23/2025 8:09:37 PM", modified = "9/23/2025 8:37:29 PM",
    trigger = trigger_when((once(once(once(once(once(once(prev(current_player_location()) == 0x02 &&
                  current_player_location() == 0x0E) && prev(current_player_location()) != 0x06 &&
                  current_player_location() == 0x06) && prev(current_player_location()) == 0x06 &&
                  current_player_location() == 0x07) && prev(progression_events()) != 0xFF7D50 &&
                  progression_events() == 0xFF7D50) && prev(current_player_location()) == 0x01 &&
                  current_player_location() == 0x08) && prev(current_player_location()) != 0x03 &&
                  current_player_location() == 0x03) && difficulty() != 0x04 && chapter_id() == 0x26 &&
                  prev(_25_bytes_ascii_location_id()) == 0x31315F53 && prev(dword_be(0x5FC0F4)) == 0x65636F6E &&
                  prev(dword_be(0x5FC0F8)) == 0x645F4164 && prev(dword_be(0x5FC0FC)) == 0x64726573 &&
                  prev(dword_be(0x5FC100)) == 0x735F556E && prev(dword_be(0x5FC104)) == 0x6B6E6F77 &&
                  prev(dword_be(0x5FC108)) == 0x6E000000 && _25_bytes_ascii_location_id() == 0x31325F43)
              ) && trigger_when(dword_be(0x5FC0F4) == 0x6F6E6465) && trigger_when(dword_be(0x5FC0F8) == 0x6D6E6564) &&
              trigger_when(dword_be(0x5FC0FC) == 0x5F427569) && trigger_when(dword_be(0x5FC100) == 0x6C64696E) &&
              trigger_when(dword_be(0x5FC104) == 0x675F5350) && trigger_when(dword_be(0x5FC108) == 0x31000000) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) && unless((ui_state() != 0x13 && _25_bytes_ascii_location_id() != 0x31315F53)) &&
              unless(chapter_id() != 0x26) &&
              (always_false() || (never((chapter_id() == 0x26 && current_player_location() == 0x04 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "In the Middle of Something", points = 5, type="progression",
    description = "Complete Part II: Chapter 2 on Detective difficulty",
    id = 546120, badge = "620815", published = "9/23/2025 8:09:37 PM", modified = "9/23/2025 8:37:29 PM",
    trigger = difficulty() == 0x01 && (current_player_location() == 0x02 || current_player_location() == 0x03) &&
              prev(chapter_id()) == 0x0C && chapter_id() == 0x14 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance VIII", points = 10,
    description = "Complete Part II: Chapter 2 in one session without using painkillers on any difficulty",
    id = 546121, badge = "620816", published = "9/23/2025 8:09:37 PM", modified = "9/23/2025 8:37:31 PM",
    trigger = trigger_when(((once(once(once(once(once(once(once(prev(current_player_location()) == 0x0C &&
                  current_player_location() == 0x18) && prev(current_player_location()) == 0x11 &&
                  current_player_location() == 0x09) && prev(current_player_location()) == 0x08 &&
                  current_player_location() == 0x0E) && prev(current_player_location()) == 0x0D &&
                  current_player_location() == 0x0A) && prev(chapter_id()) == 0x26 && chapter_id() == 0x0C) &&
                  prev(current_player_location()) == 0x00 && current_player_location() == 0x07) &&
                  prev(current_player_location()) == 0x0F && current_player_location() == 0x03) && difficulty() != 0x04 &&
                  current_player_location() == 0x02) || current_player_location() == 0x03) && prev(chapter_id()) == 0x0C &&
                  chapter_id() == 0x14
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31325F43) || dword_be(0x5FC0F4) != 0x6F6E6465 ||
                  dword_be(0x5FC0F8) != 0x6D6E6564 || dword_be(0x5FC0FC) != 0x5F427569 ||
                  dword_be(0x5FC100) != 0x6C64696E || dword_be(0x5FC104) != 0x675F5350
              ) &&
              (always_false() || (never((chapter_id() == 0x26 && current_player_location() == 0x00 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Blowing Up", points = 5, type="progression",
    description = "Complete Part II: Chapter 3 on Detective difficulty",
    id = 546122, badge = "620817", published = "9/23/2025 8:09:38 PM", modified = "9/23/2025 8:37:31 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x03 && prev(chapter_id()) == 0x14 &&
              chapter_id() == 0x22 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance IX", points = 10,
    description = "Complete Part II: Chapter 3 in one session without using painkillers on any difficulty",
    id = 546123, badge = "620818", published = "9/23/2025 8:09:38 PM", modified = "9/23/2025 8:37:31 PM",
    trigger = trigger_when((once(once(once(once(prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x0B) && prev(current_player_location()) == 0x0A &&
                  current_player_location() == 0x00) && prev(current_player_location()) == 0x06 &&
                  current_player_location() == 0x01) && prev(progression_events()) != 0x10111D0 &&
                  progression_events() == 0x10111D0) && difficulty() != 0x04 && current_player_location() == 0x03 &&
                  prev(chapter_id()) == 0x14 && chapter_id() == 0x22)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31325F43) || dword_be(0x5FC0F4) != 0x6F6E6465 ||
                  dword_be(0x5FC0F8) != 0x6D6E6564 || dword_be(0x5FC0FC) != 0x5F427569 ||
                  dword_be(0x5FC100) != 0x6C64696E || dword_be(0x5FC104) != 0x675F4200
              ) &&
              (always_false() || (never((chapter_id() == 0x14 && current_player_location() == 0x02 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Routing Her Synapses", points = 5, type="progression",
    description = "Complete Part II: Chapter 4 on Detective difficulty",
    id = 546124, badge = "620819", published = "9/23/2025 8:09:38 PM", modified = "9/23/2025 8:37:31 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x01 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x28 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance X", points = 10,
    description = "Complete Part II: Chapter 4 in one session without using painkillers on any difficulty",
    id = 546125, badge = "620820", published = "9/23/2025 8:09:38 PM", modified = "9/23/2025 8:37:32 PM",
    trigger = trigger_when((once(once(once(prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x08) && prev(current_player_location()) == 0x02 &&
                  current_player_location() == 0x05) && prev(current_player_location()) == 0x03 &&
                  current_player_location() == 0x04) && difficulty() != 0x04 && current_player_location() == 0x01 &&
                  prev(chapter_id()) == 0x22 && chapter_id() == 0x28)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31335F43) || dword_be(0x5FC0F4) != 0x6F6E7374 ||
                  dword_be(0x5FC0F8) != 0x72756374 || dword_be(0x5FC0FC) != 0x696F6E5F ||
                  dword_be(0x5FC100) != 0x53697465 || dword_be(0x5FC104) != 0x00
              ) &&
              (always_false() || (never((chapter_id() == 0x22 && current_player_location() == 0x00 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Out of the Window", points = 5, type="progression",
    description = "Complete Part II: Chapter 5 on Detective difficulty",
    id = 546126, badge = "620821", published = "9/23/2025 8:09:39 PM", modified = "9/23/2025 8:37:32 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x06 && prev(chapter_id()) == 0x28 &&
              chapter_id() == 0x31 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XI", points = 10,
    description = "Complete Part II: Chapter 5 in one session without using painkillers on any difficulty",
    id = 546127, badge = "620822", published = "9/23/2025 8:09:39 PM", modified = "9/23/2025 8:37:32 PM",
    trigger = trigger_when((once(once(once(once(once(prev(current_player_location()) == 0x09 &&
                  current_player_location() == 0x01) && prev(progression_events()) != 0xFF8320 &&
                  progression_events() == 0xFF8320) && prev(progression_events()) != 0xFF7E40 &&
                  progression_events() == 0xFF7E40) && prev(current_player_location()) == 0x07 &&
                  current_player_location() == 0x03) && prev(current_player_location()) == 0x0C &&
                  current_player_location() == 0x00) && difficulty() != 0x04 && current_player_location() == 0x06 &&
                  prev(chapter_id()) == 0x28 && chapter_id() == 0x31)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31335F43) || dword_be(0x5FC0F4) != 0x6F6E7374 ||
                  dword_be(0x5FC0F8) != 0x72756374 || dword_be(0x5FC0FC) != 0x696F6E5F ||
                  dword_be(0x5FC100) != 0x53697465 || dword_be(0x5FC104) != 0x5F420000
              ) &&
              (always_false() || (never((chapter_id() == 0x28 && current_player_location() == 0x05 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "The Genius of the Hole", points = 5, type="progression",
    description = "Complete Part II: Chapter 6 on Detective difficulty",
    id = 546128, badge = "620823", published = "9/23/2025 8:09:39 PM", modified = "9/23/2025 8:37:32 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x00 && prev(chapter_id()) == 0x31 &&
              chapter_id() == 0x0F &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XII", points = 10,
    description = "Complete Part II: Chapter 6 in one session without using painkillers on any difficulty",
    id = 546129, badge = "620824", published = "9/23/2025 8:09:39 PM", modified = "9/23/2025 8:37:33 PM",
    trigger = trigger_when((once(once(once(prev(current_player_location()) == 0x03 &&
                  current_player_location() == 0x04) && prev(current_player_location()) == 0x02 &&
                  current_player_location() == 0x0D) && prev(current_player_location()) == 0x06 &&
                  current_player_location() == 0x00) && difficulty() != 0x04 && current_player_location() == 0x00 &&
                  prev(chapter_id()) == 0x31 && chapter_id() == 0x0F)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31335F43) || dword_be(0x5FC0F4) != 0x6F6E7374 ||
                  dword_be(0x5FC0F8) != 0x72756374 || dword_be(0x5FC0FC) != 0x696F6E5F ||
                  dword_be(0x5FC100) != 0x53697465 || dword_be(0x5FC104) != 0x5F430000
              ) &&
              (always_false() || (never((chapter_id() == 0x31 && prev(progression_events()) == 0xFF1B00 && progression_events() == 0x00))))
)

achievement(
    title = "Waking Up from the American Dream", points = 3, type="progression",
    description = "Complete Part III: Prologue on Detective difficulty",
    id = 546130, badge = "620825", published = "9/23/2025 8:09:40 PM", modified = "9/23/2025 8:37:33 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x03 && prev(chapter_id()) == 0x0F &&
              chapter_id() == 0x1C &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Too Stubborn to Die", points = 5, type="progression",
    description = "Complete Part III: Chapter 1 on Detective difficulty",
    id = 546131, badge = "620826", published = "9/23/2025 8:09:41 PM", modified = "9/23/2025 8:37:33 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x0D && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x29 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XIII", points = 10,
    description = "Complete Part III: Chapter 1 in one session without using painkillers on any difficulty",
    id = 546132, badge = "620827", published = "9/23/2025 8:09:41 PM", modified = "9/23/2025 8:37:33 PM",
    trigger = trigger_when((once(once(once(once(once(prev(current_player_location()) == 0x19 &&
                  current_player_location() == 0x11) && prev(current_player_location()) == 0x09 &&
                  current_player_location() == 0x15) && prev(current_player_location()) == 0x05 &&
                  current_player_location() == 0x16) && prev(current_player_location()) == 0x10 &&
                  current_player_location() == 0x0D) && prev(progression_events()) != 0x1029A00 &&
                  progression_events() == 0x1029A00) && difficulty() != 0x04 && current_player_location() == 0x0D &&
                  prev(chapter_id()) == 0x1C && chapter_id() == 0x29)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31355F53) || dword_be(0x5FC0F4) != 0x65636F6E ||
                  dword_be(0x5FC0F8) != 0x645F486F || dword_be(0x5FC0FC) != 0x73706974 || dword_be(0x5FC100) != 0x616C0000
              ) &&
              (always_false() || (never((chapter_id() == 0x1C && current_player_location() == 0x0C &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "On a Crash Course", points = 5, type="progression",
    description = "Complete Part III: Chapter 2 on Detective difficulty",
    id = 546133, badge = "620828", published = "9/23/2025 8:09:41 PM", modified = "9/23/2025 8:37:35 PM",
    trigger = difficulty() == 0x01 && _25_bytes_ascii_location_id() == 0x31365F53 && dword_be(0x5FC0F4) == 0x65636F6E &&
              dword_be(0x5FC0F8) == 0x645F566F && dword_be(0x5FC0FC) == 0x646B6100 && current_player_location() == 0x0A &&
              prev(chapter_id()) == 0x29 && chapter_id() == 0x22 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XIV", points = 10,
    description = "Complete Part III: Chapter 2 in one session without using painkillers on any difficulty",
    id = 546134, badge = "620829", published = "9/23/2025 8:09:42 PM", modified = "9/23/2025 8:37:35 PM",
    trigger = trigger_when((once(once(once(once(prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x03) && prev(current_player_location()) == 0x0F &&
                  current_player_location() == 0x0E) && prev(current_player_location()) == 0x0B &&
                  current_player_location() == 0x01) && prev(progression_events()) != 0x103E4E0 &&
                  progression_events() == 0x103E4E0) && difficulty() != 0x04 && current_player_location() == 0x0A &&
                  prev(chapter_id()) == 0x29 && chapter_id() == 0x22)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x31365F53) || dword_be(0x5FC0F4) != 0x65636F6E ||
                  dword_be(0x5FC0F8) != 0x645F566F || dword_be(0x5FC0FC) != 0x646B6100
              ) &&
              (always_false() || (never((chapter_id() == 0x29 && current_player_location() == 0x05 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "A Mob War", points = 5, type="progression",
    description = "Complete Part III: Chapter 3 on Detective difficulty",
    id = 546135, badge = "620830", published = "9/23/2025 8:09:42 PM", modified = "9/23/2025 8:37:35 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x0B && prev(chapter_id()) == 0x16 &&
              chapter_id() == 0x29 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XV", points = 10,
    description = "Complete Part III: Chapter 3 in one session without using painkillers on any difficulty",
    id = 546136, badge = "620831", published = "9/23/2025 8:09:42 PM", modified = "9/23/2025 8:37:35 PM",
    trigger = trigger_when((once(once(once(once(once(prev(current_player_location()) == 0x17 &&
                  current_player_location() == 0x20) && prev(current_player_location()) == 0x05 &&
                  current_player_location() == 0x24) && prev(chapter_id()) == 0x22 && chapter_id() == 0x16) &&
                  prev(current_player_location()) == 0x0F && current_player_location() == 0x00) &&
                  prev(current_player_location()) == 0x01 && current_player_location() == 0x08) && difficulty() != 0x04 &&
                  current_player_location() == 0x0B && prev(chapter_id()) == 0x16 && chapter_id() == 0x29)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) && unless(_25_bytes_ascii_location_id() != 0x31375F43) &&
              (always_false() || (never((chapter_id() == 0x22 && current_player_location() == 0x09 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "Dearest of All My Friends", points = 5, type="progression",
    description = "Complete Part III: Chapter 4 on Detective difficulty",
    id = 546137, badge = "620832", published = "9/23/2025 8:09:42 PM", modified = "9/23/2025 8:37:36 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x08 && prev(chapter_id()) == 0x29 &&
              chapter_id() == 0x01 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XVI", points = 10,
    description = "Complete Part III: Chapter 4 in one session without using painkillers on any difficulty",
    id = 546138, badge = "620833", published = "9/23/2025 8:09:42 PM", modified = "9/23/2025 8:37:36 PM",
    trigger = trigger_when((once(once(once(once(once(once(once(prev(current_player_location()) == 0x04 &&
                  current_player_location() == 0x07) && prev(current_player_location()) == 0x0C &&
                  current_player_location() == 0x01) && prev(current_player_location()) == 0x0F &&
                  current_player_location() == 0x02) && prev(current_player_location()) == 0x0D &&
                  current_player_location() == 0x03) && prev(current_player_location()) == 0x11 &&
                  current_player_location() == 0x12) && prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x08) && prev(progression_events()) != 0x1025060 &&
                  progression_events() == 0x1025060) && difficulty() != 0x04 && current_player_location() == 0x08 &&
                  prev(chapter_id()) == 0x29 && chapter_id() == 0x01)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) && unless(_25_bytes_ascii_location_id() != 0x31385F47) &&
              (always_false() || (never((chapter_id() == 0x29 && current_player_location() == 0x05 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "A Losing Game", points = 5, type="progression",
    description = "Complete Part III: Chapter 5 on Detective difficulty",
    id = 546139, badge = "620834", published = "9/23/2025 8:09:43 PM", modified = "9/23/2025 8:37:36 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x07 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x0A &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Fireproof Mona", points = 5,
    description = "Complete Part III: Chapter 5 in one session without taking damage on any difficulty",
    id = 546140, badge = "620835", published = "9/23/2025 8:09:43 PM", modified = "9/23/2025 8:37:36 PM",
    trigger = trigger_when((once(once(once(once(once(prev(current_player_location()) == 0x0A &&
                  current_player_location() == 0x05) && prev(current_player_location()) == 0x06 &&
                  current_player_location() == 0x04) && prev(current_player_location()) == 0x08 &&
                  current_player_location() == 0x01) && prev(progression_events()) != 0xFF58F0 &&
                  progression_events() == 0xFF58F0) && prev(progression_events()) != 0x100E980 &&
                  progression_events() == 0x100E980) && difficulty() != 0x04 && current_player_location() == 0x07 &&
                  prev(chapter_id()) == 0x01 && chapter_id() == 0x0A)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 1.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() < prev(player_health())
              ) && unless(_25_bytes_ascii_location_id() != 0x31395F54) &&
              (always_false() || (never((chapter_id() == 0x01 && current_player_location() == 0x02 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "There Are No Happy Endings", points = 5, type="progression",
    description = "Complete Part III: Chapter 6 on Detective difficulty",
    id = 546141, badge = "620836", published = "9/23/2025 8:09:44 PM", modified = "9/23/2025 8:37:36 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x07 && prev(chapter_id()) == 0x0A &&
              chapter_id() == 0x20 &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Love Hurts", points = 5, type="progression",
    description = "Complete Part III: Chapter 7 on Detective difficulty",
    id = 546142, badge = "620837", published = "9/23/2025 8:09:45 PM", modified = "9/23/2025 8:37:38 PM",
    trigger = difficulty() == 0x01 && current_player_location() == 0x06 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x0D &&
              disable_when(hardboiled_mode_unlock_flag() == 0x01 || dead_on_arrival_mode_unlock_flag() == 0x01 ||
                  new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 || jump_to_chapter_menu_unlock_flag() == 0x01
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XVII", points = 10,
    description = "Complete Part III: Chapter 7 in one session without using painkillers on any difficulty",
    id = 546143, badge = "620838", published = "9/23/2025 8:09:45 PM", modified = "9/23/2025 8:37:38 PM",
    trigger = trigger_when((once(once(once(once(once(once(prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x08) && prev(current_player_location()) == 0x0A &&
                  current_player_location() == 0x07) && prev(progression_events()) != 0xFFB5B0 &&
                  progression_events() == 0xFFB5B0) && prev(chapter_id()) == 0x20 && chapter_id() == 0x22) &&
                  prev(current_player_location()) == 0x08 && current_player_location() == 0x0C) &&
                  prev(current_player_location()) == 0x01 && current_player_location() == 0x03) && difficulty() != 0x04 &&
                  current_player_location() == 0x06 && prev(chapter_id()) == 0x22 && chapter_id() == 0x0D)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x32315F54) || dword_be(0x5FC0F4) != 0x68655F4D ||
                  dword_be(0x5FC0F8) != 0x616E6F72 || dword_be(0x5FC0FC) != 0x5F53706C
              ) &&
              (always_false() || (never((chapter_id() == 0x20 && current_player_location() == 0x00 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "That Old Familiar Feeling", points = 25, type="win_condition",
    description = "Complete Part III: Chapter 8 on Detective difficulty",
    id = 546144, badge = "620839", published = "9/23/2025 8:09:45 PM", modified = "9/23/2025 8:37:38 PM",
    trigger = difficulty() == 0x01 && _25_bytes_ascii_location_id() == 0x32315F54 && dword_be(0x5FC0F4) == 0x68655F4D &&
              dword_be(0x5FC0F8) == 0x616E6F72 && dword_be(0x5FC0FC) == 0x5F425F73 && dword_be(0x5FC100) == 0x706C6974 &&
              dword_be(0x5FC104) == 0x32000000 && chapter_id() == 0x15 && current_player_location() == 0x00 &&
              hardboiled_mode_unlock() == 0x01 && prev(progression_events()) == 0x1002BA0 &&
              progression_events() == 0x1004890 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Payneful Endurance XVIII", points = 10,
    description = "Complete Part III: Chapter 8 in one session without using painkillers on any difficulty",
    id = 546145, badge = "620840", published = "9/23/2025 8:09:45 PM", modified = "9/23/2025 8:37:39 PM",
    trigger = trigger_when((once(once(once(once(once(once(once(prev(current_player_location()) == 0x00 &&
                  current_player_location() == 0x06) && prev(current_player_location()) == 0x07 &&
                  current_player_location() == 0x02) && prev(chapter_id()) == 0x0D && chapter_id() == 0x15) &&
                  prev(current_player_location()) == 0x01 && current_player_location() == 0x02) &&
                  prev(progression_events()) != 0x1006A30 && progression_events() == 0x1006A30) &&
                  prev(progression_events()) != 0x100BD90 && progression_events() == 0x100BD90) &&
                  prev(progression_events()) != 0x1004D50 && progression_events() == 0x1004D50) && difficulty() != 0x04 &&
                  current_player_location() == 0x00 && prev(progression_events()) != 0x1004890 &&
                  progression_events() == 0x1004890)
              ) &&
              disable_when((prev(player_health()) <= 250.0) && prev(player_health()) >= 38.0 &&
                  prev(game_paused_flag()) != 0x01 && player_health() > prev(player_health())
              ) &&
              unless((_25_bytes_ascii_location_id() != 0x32315F54) || dword_be(0x5FC0F4) != 0x68655F4D ||
                  dword_be(0x5FC0F8) != 0x616E6F72 || dword_be(0x5FC0FC) != 0x5F425F73
              ) &&
              (always_false() || (never((chapter_id() == 0x0D && current_player_location() == 0x03 &&
                    prev(chapters_intro_active_flag()) == 0x01 && chapters_intro_active_flag() == 0x00)
                )))
)

achievement(
    title = "The Darkness Deepens", points = 3,
    description = "Complete Part I: Prologue on Hard-Boiled difficulty",
    id = 546146, badge = "620841", published = "9/23/2025 8:09:46 PM", modified = "9/23/2025 8:37:39 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x0A && chapter_id() == 0x08 &&
              prev(progression_events()) == 0x1034BC0 && progression_events() == 0x00 &&
              disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Elevator Shaft", points = 5,
    description = "Complete Part I: Chapter 1 on Hard-Boiled difficulty",
    id = 546147, badge = "620842", published = "9/23/2025 8:09:46 PM", modified = "9/23/2025 8:37:39 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x00 && prev(chapter_id()) == 0x19 &&
              chapter_id() == 0x2A && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Criminal Obsession", points = 5,
    description = "Complete Part I: Chapter 2 on Hard-Boiled difficulty",
    id = 546148, badge = "620843", published = "9/23/2025 8:09:46 PM", modified = "9/23/2025 8:37:39 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x03 && prev(chapter_id()) == 0x2A &&
              chapter_id() == 0x06 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "The Depths of My Nightmare", points = 5,
    description = "Complete Part I: Chapter 3 on Hard-Boiled difficulty",
    id = 546149, badge = "620844", published = "9/23/2025 8:09:46 PM", modified = "9/23/2025 8:37:39 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x09 && prev(chapter_id()) == 0x06 &&
              chapter_id() == 0x16 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "No 'Me' in This", points = 5,
    description = "Complete Part I: Chapter 4 on Hard-Boiled difficulty",
    id = 546150, badge = "620845", published = "9/23/2025 8:09:47 PM", modified = "9/23/2025 8:37:40 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x0D && prev(chapter_id()) == 0x0D &&
              chapter_id() == 0x1C && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Trail of Blood", points = 5,
    description = "Complete Part I: Chapter 5 on Hard-Boiled difficulty",
    id = 546151, badge = "620846", published = "9/23/2025 8:09:47 PM", modified = "9/23/2025 8:37:40 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x07 && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x01 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Twisted Sequence of Fears", points = 5,
    description = "Complete Part I: Chapter 6 on Hard-Boiled difficulty",
    id = 546152, badge = "620847", published = "9/23/2025 8:09:47 PM", modified = "9/23/2025 8:37:40 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x06 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x14 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "The Priceless Question", points = 5,
    description = "Complete Part I: Chapter 7 on Hard-Boiled difficulty",
    id = 546153, badge = "620848", published = "9/23/2025 8:09:48 PM", modified = "9/23/2025 8:37:41 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x00 && prev(chapter_id()) == 0x1D &&
              chapter_id() == 0x15 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Deadly Choice", points = 3,
    description = "Complete Part II: Prologue on Hard-Boiled difficulty",
    id = 546154, badge = "620849", published = "9/23/2025 8:09:48 PM", modified = "9/23/2025 8:37:41 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x01 && prev(chapter_id()) == 0x15 &&
              chapter_id() == 0x26 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "The Things That I Crave", points = 5,
    description = "Complete Part II: Chapter 1 on Hard-Boiled difficulty",
    id = 546155, badge = "620850", published = "9/23/2025 8:09:48 PM", modified = "9/23/2025 8:37:42 PM",
    trigger = _25_bytes_ascii_location_id() == 0x31315F53 && dword_be(0x5FC0F4) == 0x65636F6E &&
              dword_be(0x5FC0F8) == 0x645F4164 && dword_be(0x5FC0FC) == 0x64726573 && dword_be(0x5FC100) == 0x735F556E &&
              dword_be(0x5FC104) == 0x6B6E6F77 && dword_be(0x5FC108) == 0x6E000000 && difficulty() == 0x02 &&
              chapter_id() == 0x26 && prev(progression_events()) != 0xFF7D50 &&
              (once(progression_events() == 0xFF7D50) && current_player_location() == 0x03 && prev(ui_state()) != 0x13) &&
              ui_state() == 0x13 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "In the Middle of Chaos", points = 5,
    description = "Complete Part II: Chapter 2 on Hard-Boiled difficulty",
    id = 546156, badge = "620851", published = "9/23/2025 8:09:49 PM", modified = "10/5/2025 8:39:15 PM",
    trigger = difficulty() == 0x02 && (current_player_location() == 0x02 || current_player_location() == 0x03) &&
              prev(chapter_id()) == 0x0C && chapter_id() == 0x14 &&
              disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Blowing Apart", points = 5,
    description = "Complete Part II: Chapter 3 on Hard-Boiled difficulty",
    id = 546157, badge = "620852", published = "9/23/2025 8:09:49 PM", modified = "9/23/2025 8:37:42 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x03 && prev(chapter_id()) == 0x14 &&
              chapter_id() == 0x22 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Severing Her Synapses", points = 5,
    description = "Complete Part II: Chapter 4 on Hard-Boiled difficulty",
    id = 546158, badge = "620853", published = "9/23/2025 8:09:49 PM", modified = "9/23/2025 8:37:42 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x01 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x28 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Out of the Abyss", points = 5,
    description = "Complete Part II: Chapter 5 on Hard-Boiled difficulty",
    id = 546159, badge = "620854", published = "9/23/2025 8:09:49 PM", modified = "9/23/2025 8:37:43 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x06 && prev(chapter_id()) == 0x28 &&
              chapter_id() == 0x31 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "The Madness of the Hole", points = 5,
    description = "Complete Part II: Chapter 6 on Hard-Boiled difficulty",
    id = 546160, badge = "620855", published = "9/23/2025 8:09:50 PM", modified = "9/23/2025 8:37:43 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x00 && prev(chapter_id()) == 0x31 &&
              chapter_id() == 0x0F && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Awakening from the Nightmare", points = 3,
    description = "Complete Part III: Prologue on Hard-Boiled difficulty",
    id = 546161, badge = "620856", published = "9/23/2025 8:09:51 PM", modified = "9/23/2025 8:37:43 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x03 && prev(chapter_id()) == 0x0F &&
              chapter_id() == 0x1C && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Too Damned to Die", points = 5,
    description = "Complete Part III: Chapter 1 on Hard-Boiled difficulty",
    id = 546162, badge = "620857", published = "9/23/2025 8:09:51 PM", modified = "9/23/2025 8:37:45 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x0D && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x29 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "On a Collision Course", points = 5,
    description = "Complete Part III: Chapter 2 on Hard-Boiled difficulty",
    id = 546163, badge = "620858", published = "9/23/2025 8:09:52 PM", modified = "9/23/2025 8:37:45 PM",
    trigger = difficulty() == 0x02 && _25_bytes_ascii_location_id() == 0x31365F53 && dword_be(0x5FC0F4) == 0x65636F6E &&
              dword_be(0x5FC0F8) == 0x645F566F && dword_be(0x5FC0FC) == 0x646B6100 && current_player_location() == 0x0A &&
              prev(chapter_id()) == 0x29 && chapter_id() == 0x22 &&
              disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Mob Inferno", points = 5,
    description = "Complete Part III: Chapter 3 on Hard-Boiled difficulty",
    id = 546164, badge = "620859", published = "9/23/2025 8:09:52 PM", modified = "9/23/2025 8:37:45 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x0B && prev(chapter_id()) == 0x16 &&
              chapter_id() == 0x29 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Darkest of All My Friends", points = 5,
    description = "Complete Part III: Chapter 4 on Hard-Boiled difficulty",
    id = 546165, badge = "620860", published = "9/23/2025 8:09:52 PM", modified = "9/23/2025 8:37:45 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x08 && prev(chapter_id()) == 0x29 &&
              chapter_id() == 0x01 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "A Rigged Game", points = 5,
    description = "Complete Part III: Chapter 5 on Hard-Boiled difficulty",
    id = 546166, badge = "620861", published = "9/23/2025 8:09:52 PM", modified = "9/23/2025 8:37:46 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x07 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x0A && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "There Are No Happy Escapes", points = 5,
    description = "Complete Part III: Chapter 6 on Hard-Boiled difficulty",
    id = 546167, badge = "620862", published = "9/23/2025 8:09:53 PM", modified = "9/23/2025 8:37:46 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x07 && prev(chapter_id()) == 0x0A &&
              chapter_id() == 0x20 && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "Love Burns", points = 5,
    description = "Complete Part III: Chapter 7 on Hard-Boiled difficulty",
    id = 546168, badge = "620863", published = "9/23/2025 8:09:53 PM", modified = "9/23/2025 8:37:46 PM",
    trigger = difficulty() == 0x02 && current_player_location() == 0x06 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x0D && disable_when(dead_on_arrival_mode_unlock_flag() == 0x01) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "That Cold Familiar Feeling", points = 25,
    description = "Complete Part III: Chapter 8 on Hard-Boiled difficulty",
    id = 546169, badge = "620864", published = "9/23/2025 8:09:53 PM", modified = "9/23/2025 8:37:46 PM",
    trigger = difficulty() == 0x02 && _25_bytes_ascii_location_id() == 0x32315F54 && dword_be(0x5FC0F4) == 0x68655F4D &&
              dword_be(0x5FC0F8) == 0x616E6F72 && dword_be(0x5FC0FC) == 0x5F425F73 && dword_be(0x5FC100) == 0x706C6974 &&
              dword_be(0x5FC104) == 0x32000000 && chapter_id() == 0x15 && current_player_location() == 0x00 &&
              hardboiled_mode_unlock() == 0x01 && prev(progression_events()) == 0x1002BA0 &&
              progression_events() == 0x1004890 && prev(dead_on_arrival_mode_unlock_flag()) == 0x00 &&
              dead_on_arrival_mode_unlock_flag() == 0x01
)

achievement(
    title = "The Darkness Devours", points = 3,
    description = "Complete Part I: Prologue on Dead on Arrival difficulty",
    id = 546170, badge = "620865", published = "9/23/2025 8:09:53 PM", modified = "9/23/2025 8:37:47 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x0A && chapter_id() == 0x08 &&
              prev(progression_events()) == 0x1034BC0 && progression_events() == 0x00 &&
              hardboiled_mode_unlock_flag() == 0x01 && dead_on_arrival_mode_unlock_flag() == 0x01 &&
              new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 && jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Elevator Tomb", points = 5,
    description = "Complete Part I: Chapter 1 on Dead on Arrival difficulty",
    id = 546171, badge = "620866", published = "9/23/2025 8:09:54 PM", modified = "9/23/2025 8:37:47 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x00 && prev(chapter_id()) == 0x19 &&
              chapter_id() == 0x2A && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Criminal Damnation", points = 5,
    description = "Complete Part I: Chapter 2 on Dead on Arrival difficulty",
    id = 546172, badge = "620867", published = "9/23/2025 8:09:54 PM", modified = "9/23/2025 8:37:47 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x03 && prev(chapter_id()) == 0x2A &&
              chapter_id() == 0x06 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "The Depths of Oblivion", points = 5,
    description = "Complete Part I: Chapter 3 on Dead on Arrival difficulty",
    id = 546173, badge = "620868", published = "9/23/2025 8:09:54 PM", modified = "9/23/2025 8:37:47 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x09 && prev(chapter_id()) == 0x06 &&
              chapter_id() == 0x16 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "No One in This", points = 5,
    description = "Complete Part I: Chapter 4 on Dead on Arrival difficulty",
    id = 546174, badge = "620869", published = "9/23/2025 8:09:54 PM", modified = "9/23/2025 8:37:48 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x0D && prev(chapter_id()) == 0x0D &&
              chapter_id() == 0x1C && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Trail of Corpses", points = 5,
    description = "Complete Part I: Chapter 5 on Dead on Arrival difficulty",
    id = 546175, badge = "620870", published = "9/23/2025 8:09:55 PM", modified = "9/23/2025 8:37:48 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x07 && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x01 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Relentless Sequence of Horrors", points = 5,
    description = "Complete Part I: Chapter 6 on Dead on Arrival difficulty",
    id = 546176, badge = "620871", published = "9/23/2025 8:09:55 PM", modified = "9/23/2025 8:37:48 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x06 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x14 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "The Last Question", points = 5,
    description = "Complete Part I: Chapter 7 on Dead on Arrival difficulty",
    id = 546177, badge = "620872", published = "9/23/2025 8:09:56 PM", modified = "9/23/2025 8:37:49 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x00 && prev(chapter_id()) == 0x1D &&
              chapter_id() == 0x15 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Fatal Choice", points = 3,
    description = "Complete Part II: Prologue on Dead on Arrival difficulty",
    id = 546178, badge = "620873", published = "9/23/2025 8:09:57 PM", modified = "9/23/2025 8:37:50 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x01 && prev(chapter_id()) == 0x15 &&
              chapter_id() == 0x26 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "The Things That Destroy Me", points = 5,
    description = "Complete Part II: Chapter 1 on Dead on Arrival difficulty",
    id = 546179, badge = "620874", published = "9/23/2025 8:09:57 PM", modified = "9/23/2025 8:37:50 PM",
    trigger = _25_bytes_ascii_location_id() == 0x31315F53 && dword_be(0x5FC0F4) == 0x65636F6E &&
              dword_be(0x5FC0F8) == 0x645F4164 && dword_be(0x5FC0FC) == 0x64726573 && dword_be(0x5FC100) == 0x735F556E &&
              dword_be(0x5FC104) == 0x6B6E6F77 && dword_be(0x5FC108) == 0x6E000000 && difficulty() == 0x03 &&
              chapter_id() == 0x26 && prev(progression_events()) != 0xFF7D50 &&
              (once(progression_events() == 0xFF7D50) && current_player_location() == 0x03 && prev(ui_state()) != 0x13) &&
              ui_state() == 0x13 && hardboiled_mode_unlock_flag() == 0x01 && dead_on_arrival_mode_unlock_flag() == 0x01 &&
              new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 && jump_to_chapter_menu_unlock_flag() == 0x01 &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

achievement(
    title = "In the Middle of Despair", points = 5,
    description = "Complete Part II: Chapter 2 on Dead on Arrival difficulty",
    id = 546180, badge = "620875", published = "9/23/2025 8:09:57 PM", modified = "9/23/2025 8:37:50 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x02 && prev(chapter_id()) == 0x0C &&
              chapter_id() == 0x14 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Blown to Nothing", points = 5,
    description = "Complete Part II: Chapter 3 on Dead on Arrival difficulty",
    id = 546181, badge = "620876", published = "9/23/2025 8:09:57 PM", modified = "9/23/2025 8:37:50 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x03 && prev(chapter_id()) == 0x14 &&
              chapter_id() == 0x22 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Shattered Synapses", points = 5,
    description = "Complete Part II: Chapter 4 on Dead on Arrival difficulty",
    id = 546182, badge = "620877", published = "9/23/2025 8:09:58 PM", modified = "9/23/2025 8:37:51 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x01 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x28 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Out of Existence", points = 5,
    description = "Complete Part II: Chapter 5 on Dead on Arrival difficulty",
    id = 546183, badge = "620878", published = "9/23/2025 8:09:58 PM", modified = "9/23/2025 8:37:51 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x06 && prev(chapter_id()) == 0x28 &&
              chapter_id() == 0x31 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "The Abyss of the Hole", points = 5,
    description = "Complete Part II: Chapter 6 on Dead on Arrival difficulty",
    id = 546184, badge = "620879", published = "9/23/2025 8:09:58 PM", modified = "9/23/2025 8:37:51 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x00 && prev(chapter_id()) == 0x31 &&
              chapter_id() == 0x0F && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Dreaming in the Void", points = 3,
    description = "Complete Part III: Prologue on Dead on Arrival difficulty",
    id = 546185, badge = "620880", published = "9/23/2025 8:09:58 PM", modified = "9/23/2025 8:37:51 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x03 && prev(chapter_id()) == 0x0F &&
              chapter_id() == 0x1C && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Too Cursed to Die", points = 5,
    description = "Complete Part III: Chapter 1 on Dead on Arrival difficulty",
    id = 546186, badge = "620881", published = "9/23/2025 8:09:58 PM", modified = "9/23/2025 8:37:52 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x0D && prev(chapter_id()) == 0x1C &&
              chapter_id() == 0x29 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "On a Death Course", points = 5,
    description = "Complete Part III: Chapter 2 on Dead on Arrival difficulty",
    id = 546187, badge = "620882", published = "9/23/2025 8:09:59 PM", modified = "9/23/2025 8:37:52 PM",
    trigger = difficulty() == 0x03 && _25_bytes_ascii_location_id() == 0x31365F53 && dword_be(0x5FC0F4) == 0x65636F6E &&
              dword_be(0x5FC0F8) == 0x645F566F && dword_be(0x5FC0FC) == 0x646B6100 && current_player_location() == 0x0A &&
              prev(chapter_id()) == 0x29 && chapter_id() == 0x22 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Mob Slaughter", points = 5,
    description = "Complete Part III: Chapter 3 on Dead on Arrival difficulty",
    id = 546188, badge = "620883", published = "9/23/2025 8:09:59 PM", modified = "9/23/2025 8:37:52 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x0B && prev(chapter_id()) == 0x16 &&
              chapter_id() == 0x29 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Dearest of All My Enemies", points = 5,
    description = "Complete Part III: Chapter 4 on Dead on Arrival difficulty",
    id = 546189, badge = "620884", published = "9/23/2025 8:10:00 PM", modified = "9/23/2025 8:37:53 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x08 && prev(chapter_id()) == 0x29 &&
              chapter_id() == 0x01 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "A Game of Corpses", points = 5,
    description = "Complete Part III: Chapter 5 on Dead on Arrival difficulty",
    id = 546190, badge = "620885", published = "9/23/2025 8:10:00 PM", modified = "9/23/2025 8:37:54 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x07 && prev(chapter_id()) == 0x01 &&
              chapter_id() == 0x0A && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "There Are No Endings", points = 5,
    description = "Complete Part III: Chapter 6 on Dead on Arrival difficulty",
    id = 546191, badge = "620886", published = "9/23/2025 8:10:01 PM", modified = "9/23/2025 8:37:54 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x07 && prev(chapter_id()) == 0x0A &&
              chapter_id() == 0x20 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Love Kills", points = 5,
    description = "Complete Part III: Chapter 7 on Dead on Arrival difficulty",
    id = 546192, badge = "620887", published = "9/23/2025 8:10:01 PM", modified = "9/23/2025 8:37:54 PM",
    trigger = difficulty() == 0x03 && current_player_location() == 0x06 && prev(chapter_id()) == 0x22 &&
              chapter_id() == 0x0D && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "That Eternal Familiar Feeling", points = 25,
    description = "Complete Part III: Chapter 8 on Dead on Arrival difficulty",
    id = 546193, badge = "620888", published = "9/23/2025 8:10:01 PM", modified = "9/23/2025 8:37:54 PM",
    trigger = difficulty() == 0x03 && _25_bytes_ascii_location_id() == 0x32315F54 && dword_be(0x5FC0F4) == 0x68655F4D &&
              dword_be(0x5FC0F8) == 0x616E6F72 && dword_be(0x5FC0FC) == 0x5F425F73 && dword_be(0x5FC100) == 0x706C6974 &&
              dword_be(0x5FC104) == 0x32000000 && chapter_id() == 0x15 && current_player_location() == 0x00 &&
              hardboiled_mode_unlock() == 0x01 && prev(progression_events()) == 0x1002BA0 &&
              progression_events() == 0x1004890 && hardboiled_mode_unlock_flag() == 0x01 &&
              dead_on_arrival_mode_unlock_flag() == 0x01 && new_york_minute_dead_man_walking_modes_unlock_flag() == 0x01 &&
              jump_to_chapter_menu_unlock_flag() == 0x01
)

achievement(
    title = "Payneful Minute I", points = 4,
    description = "Complete Part I: Prologue in under 20 seconds in New York Minute mode",
    id = 546194, badge = "620889", published = "9/23/2025 8:10:01 PM", modified = "9/23/2025 8:37:55 PM",
    trigger = (new_york_minute_time_part_i_prologue() > 5.0 && chapter_id() == 0x08 &&
                  _25_bytes_ascii_location_id() == 0x30335F46 &&
                  prev(new_york_minute_part_i_prologue_record_submitted()) != 0x41A00000 &&
                  new_york_minute_part_i_prologue_record_submitted() <= 0x41A00000
              )
)

achievement(
    title = "Payneful Minute II", points = 4,
    description = "Complete Part I: Chapter 1 in under 1 minute 45 seconds in New York Minute mode",
    id = 546195, badge = "620890", published = "9/23/2025 8:10:02 PM", modified = "9/23/2025 8:37:55 PM",
    trigger = (new_york_minute_time_part_i_chapter_1() > 5.0 && chapter_id() == 0x19 &&
                  _25_bytes_ascii_location_id() == 0x30345F57 &&
                  prev(new_york_minute_part_i_chapter_1_record_submitted()) != 0x42D20000 &&
                  new_york_minute_part_i_chapter_1_record_submitted() <= 0x42D20000
              )
)

achievement(
    title = "Payneful Minute III", points = 4,
    description = "Complete Part I: Chapter 2 in under 1 minute in New York Minute mode",
    id = 546196, badge = "620891", published = "9/23/2025 8:10:02 PM", modified = "9/23/2025 8:37:57 PM",
    trigger = (new_york_minute_time_part_i_chapter_2() > 5.0 && chapter_id() == 0x2A &&
                  _25_bytes_ascii_location_id() == 0x30355F46 &&
                  prev(new_york_minute_part_i_chapter_2_record_submitted()) != 0x42700000 &&
                  new_york_minute_part_i_chapter_2_record_submitted() <= 0x42700000
              )
)

achievement(
    title = "Payneful Minute IV", points = 4,
    description = "Complete Part I: Chapter 3 in under 1 minute in New York Minute mode",
    id = 546197, badge = "620892", published = "9/23/2025 8:10:02 PM", modified = "9/23/2025 8:37:57 PM",
    trigger = (new_york_minute_time_part_i_chapter_3() > 5.0 && chapter_id() == 0x06 &&
                  _25_bytes_ascii_location_id() == 0x30365F46 &&
                  prev(new_york_minute_part_i_chapter_3_record_submitted()) != 0x42700000 &&
                  new_york_minute_part_i_chapter_3_record_submitted() <= 0x42700000
              )
)

achievement(
    title = "Payneful Minute V", points = 4,
    description = "Complete Part I: Chapter 4 in under 1 minute in New York Minute mode",
    id = 546198, badge = "620893", published = "9/23/2025 8:10:03 PM", modified = "9/23/2025 8:37:57 PM",
    trigger = (new_york_minute_time_part_i_chapter_4() > 5.0 && chapter_id() == 0x16 &&
                  _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(new_york_minute_part_i_chapter_4_record_submitted()) != 0x42700000 &&
                  new_york_minute_part_i_chapter_4_record_submitted() <= 0x42700000
              )
)

achievement(
    title = "Payneful Minute VI", points = 4,
    description = "Complete Part I: Chapter 4 Continued in under 1 minute 25 seconds in New York Minute mode",
    id = 546199, badge = "620893", published = "9/23/2025 8:10:03 PM", modified = "9/23/2025 8:37:57 PM",
    trigger = (new_york_minute_time_part_i_chapter_4_continued() > 5.0 && chapter_id() == 0x0D &&
                  _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(new_york_minute_part_i_chapter_4_continued_record_submitted()) != 0x42AA0000 &&
                  new_york_minute_part_i_chapter_4_continued_record_submitted() <= 0x42AA0000
              )
)

achievement(
    title = "Payneful Minute VII", points = 4,
    description = "Complete Part I: Chapter 5 in under 1 minute 45 seconds in New York Minute mode",
    id = 546200, badge = "620894", published = "9/23/2025 8:10:03 PM", modified = "9/23/2025 8:37:58 PM",
    trigger = (new_york_minute_time_part_i_chapter_5() > 5.0 && chapter_id() == 0x1C &&
                  _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(new_york_minute_part_i_chapter_5_record_submitted()) != 0x42D20000 &&
                  new_york_minute_part_i_chapter_5_record_submitted() <= 0x42D20000
              )
)

achievement(
    title = "Payneful Minute VIII", points = 4,
    description = "Complete Part I: Chapter 6 in under 1 minute 55 seconds in New York Minute mode",
    id = 546201, badge = "620895", published = "9/23/2025 8:10:03 PM", modified = "9/23/2025 8:37:58 PM",
    trigger = (new_york_minute_time_part_i_chapter_6() > 5.0 && chapter_id() == 0x01 &&
                  _25_bytes_ascii_location_id() == 0x30385F46 &&
                  prev(new_york_minute_part_i_chapter_6_record_submitted()) != 0x42E60000 &&
                  new_york_minute_part_i_chapter_6_record_submitted() <= 0x42E60000
              )
)

achievement(
    title = "Payneful Minute IX", points = 4,
    description = "Complete Part I: Chapter 7 in under 40 seconds in New York Minute mode",
    id = 546202, badge = "620896", published = "9/23/2025 8:10:05 PM", modified = "9/23/2025 8:37:58 PM",
    trigger = (new_york_minute_time_part_i_chapter_7() > 5.0 && chapter_id() == 0x14 &&
                  _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(new_york_minute_part_i_chapter_7_record_submitted()) != 0x42200000 &&
                  new_york_minute_part_i_chapter_7_record_submitted() <= 0x42200000
              )
)

achievement(
    title = "Payneful Minute X", points = 4,
    description = "Complete Part I: Chapter 7 Continued in under 1 minute in New York Minute mode",
    id = 546203, badge = "620896", published = "9/23/2025 8:10:05 PM", modified = "9/23/2025 8:37:58 PM",
    trigger = (new_york_minute_time_part_i_chapter_7_continued() > 5.0 && chapter_id() == 0x1D &&
                  _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(new_york_minute_part_i_chapter_7_continued_record_submitted()) != 0x42700000 &&
                  new_york_minute_part_i_chapter_7_continued_record_submitted() <= 0x42700000
              )
)

achievement(
    title = "Payneful Minute XI", points = 4,
    description = "Complete Part II: Prologue in under 1 minute 45 seconds in New York Minute mode",
    id = 546204, badge = "620897", published = "9/23/2025 8:10:06 PM", modified = "9/23/2025 8:37:58 PM",
    trigger = (new_york_minute_time_part_ii_prologue() > 5.0 && chapter_id() == 0x15 &&
                  _25_bytes_ascii_location_id() == 0x31305F50 &&
                  prev(new_york_minute_part_ii_prolouge_record_submitted()) != 0x42D20000 &&
                  new_york_minute_part_ii_prolouge_record_submitted() <= 0x42D20000
              )
)

achievement(
    title = "Payneful Minute XII", points = 4,
    description = "Complete Part II: Chapter 1 in under 40 seconds in New York Minute mode",
    id = 546205, badge = "620898", published = "9/23/2025 8:10:06 PM", modified = "9/23/2025 8:37:59 PM",
    trigger = (new_york_minute_time_part_ii_chapter_1() > 5.0 && chapter_id() == 0x26 &&
                  _25_bytes_ascii_location_id() == 0x31315F53 &&
                  prev(new_york_minute_part_ii_chapter_1_record_submitted()) != 0x42200000 &&
                  new_york_minute_part_ii_chapter_1_record_submitted() <= 0x42200000
              )
)

achievement(
    title = "Payneful Minute XIII", points = 4,
    description = "Complete Part II: Chapter 2 in under 1 minute 20 seconds in New York Minute mode",
    id = 546206, badge = "620899", published = "9/23/2025 8:10:06 PM", modified = "9/23/2025 8:37:59 PM",
    trigger = (new_york_minute_time_part_ii_chapter_2() > 5.0 && chapter_id() == 0x26 &&
                  _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(new_york_minute_part_ii_chapter_2_record_submitted()) != 0x42A00000 &&
                  new_york_minute_part_ii_chapter_2_record_submitted() <= 0x42A00000
              )
)

achievement(
    title = "Payneful Minute XIV", points = 4,
    description = "Complete Part II: Chapter 2 Continued in under 50 seconds in New York Minute mode",
    id = 546207, badge = "620899", published = "9/23/2025 8:10:06 PM", modified = "9/23/2025 8:37:59 PM",
    trigger = (new_york_minute_time_part_ii_chapter_2_continued() > 5.0 && chapter_id() == 0x0C &&
                  _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(new_york_minute_part_ii_chapter_2_continued_record_submitted()) != 0x42480000 &&
                  new_york_minute_part_ii_chapter_2_continued_record_submitted() <= 0x42480000
              )
)

achievement(
    title = "Payneful Minute XV", points = 4,
    description = "Complete Part II: Chapter 3 in under 1 minute 15 seconds in New York Minute mode",
    id = 546208, badge = "620900", published = "9/23/2025 8:10:07 PM", modified = "9/23/2025 8:37:59 PM",
    trigger = (new_york_minute_time_part_ii_chapter_3() > 5.0 && chapter_id() == 0x14 &&
                  _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(new_york_minute_part_ii_chapter_3_record_submitted()) != 0x42960000 &&
                  new_york_minute_part_ii_chapter_3_record_submitted() <= 0x42960000
              )
)

achievement(
    title = "Payneful Minute XVI", points = 4,
    description = "Complete Part II: Chapter 4 in under 1 minute 30 seconds in New York Minute mode",
    id = 546209, badge = "620901", published = "9/23/2025 8:10:07 PM", modified = "9/23/2025 8:38:00 PM",
    trigger = (new_york_minute_time_part_ii_chapter_4() > 5.0 && chapter_id() == 0x22 &&
                  _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(new_york_minute_part_ii_chapter_4_record_submitted()) != 0x42B40000 &&
                  new_york_minute_part_ii_chapter_4_record_submitted() <= 0x42B40000
              )
)

achievement(
    title = "Payneful Minute XVII", points = 4,
    description = "Complete Part II: Chapter 5 in under 2 minutes 45 seconds in New York Minute mode",
    id = 546210, badge = "620902", published = "9/23/2025 8:10:07 PM", modified = "9/23/2025 8:38:00 PM",
    trigger = (new_york_minute_time_part_ii_chapter_5() > 5.0 && chapter_id() == 0x28 &&
                  _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(new_york_minute_part_ii_chapter_5_record_submitted()) != 0x43250000 &&
                  new_york_minute_part_ii_chapter_5_record_submitted() <= 0x43250000
              )
)

achievement(
    title = "Payneful Minute XVIII", points = 4,
    description = "Complete Part II: Chapter 6 in under 3 minutes in New York Minute mode",
    id = 546211, badge = "620903", published = "9/23/2025 8:10:07 PM", modified = "9/23/2025 8:38:00 PM",
    trigger = (new_york_minute_time_part_ii_chapter_6() > 5.0 && chapter_id() == 0x31 &&
                  _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(new_york_minute_part_ii_chapter_6_record_submitted()) != 0x43340000 &&
                  new_york_minute_part_ii_chapter_6_record_submitted() <= 0x43340000
              )
)

achievement(
    title = "Payneful Minute XIX", points = 4,
    description = "Complete Part III: Prologue in under 1 minute 10 seconds in New York Minute mode",
    id = 546212, badge = "620904", published = "9/23/2025 8:10:07 PM", modified = "9/23/2025 8:38:01 PM",
    trigger = (new_york_minute_time_part_iii_prologue() > 5.0 && chapter_id() == 0x0F &&
                  _25_bytes_ascii_location_id() == 0x31345F53 &&
                  prev(new_york_minute_part_iii_prologue_record_submitted()) != 0x428C0000 &&
                  new_york_minute_part_iii_prologue_record_submitted() <= 0x428C0000
              )
)

achievement(
    title = "Payneful Minute XX", points = 4,
    description = "Complete Part III: Chapter 1 in under 1 minute 10 seconds in New York Minute mode",
    id = 546213, badge = "620905", published = "9/23/2025 8:10:08 PM", modified = "9/23/2025 8:38:02 PM",
    trigger = (new_york_minute_time_part_iii_chapter_1() > 5.0 && chapter_id() == 0x1C &&
                  _25_bytes_ascii_location_id() == 0x31355F53 &&
                  prev(new_york_minute_part_iii_chapter_1_record_submitted()) != 0x428C0000 &&
                  new_york_minute_part_iii_chapter_1_record_submitted() <= 0x428C0000
              )
)

achievement(
    title = "Payneful Minute XXI", points = 4,
    description = "Complete Part III: Chapter 2 in under 1 minute 25 seconds in New York Minute mode",
    id = 546214, badge = "620906", published = "9/23/2025 8:10:09 PM", modified = "9/23/2025 8:38:02 PM",
    trigger = (new_york_minute_time_part_iii_chapter_2() > 5.0 && chapter_id() == 0x29 &&
                  _25_bytes_ascii_location_id() == 0x31365F53 &&
                  prev(new_york_minute_part_iii_chapter_2_record_submitted()) != 0x42AA0000 &&
                  new_york_minute_part_iii_chapter_2_record_submitted() <= 0x42AA0000
              )
)

achievement(
    title = "Payneful Minute XXII", points = 4,
    description = "Complete Part III: Chapter 3 in under 30 seconds in New York Minute mode",
    id = 546215, badge = "620907", published = "9/23/2025 8:10:09 PM", modified = "9/23/2025 8:38:02 PM",
    trigger = (new_york_minute_time_part_iii_chapter_3() > 5.0 && chapter_id() == 0x22 &&
                  _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(new_york_minute_part_iii_chapter_3_record_submitted()) != 0x41F00000 &&
                  new_york_minute_part_iii_chapter_3_record_submitted() <= 0x41F00000
              )
)

achievement(
    title = "Payneful Minute XXIII", points = 4,
    description = "Complete Part III: Chapter 3 Continued in under 30 seconds in New York Minute mode",
    id = 546216, badge = "620907", published = "9/23/2025 8:10:09 PM", modified = "9/23/2025 8:38:02 PM",
    trigger = (new_york_minute_time_part_iii_chapter_3_continued() > 5.0 && chapter_id() == 0x16 &&
                  _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(new_york_minute_part_iii_chapter_3_continued_record_submitted()) != 0x41F00000 &&
                  new_york_minute_part_iii_chapter_3_continued_record_submitted() <= 0x41F00000
              )
)

achievement(
    title = "Payneful Minute XXIV", points = 4,
    description = "Complete Part III: Chapter 4 in under 6 minutes 15 seconds in New York Minute mode",
    id = 546217, badge = "620908", published = "9/23/2025 8:10:10 PM", modified = "9/23/2025 8:38:03 PM",
    trigger = (new_york_minute_time_part_iii_chapter_4() > 5.0 && chapter_id() == 0x29 &&
                  _25_bytes_ascii_location_id() == 0x31385F47 &&
                  prev(new_york_minute_part_iii_chapter_4_record_submitted()) != 0x43BB8000 &&
                  new_york_minute_part_iii_chapter_4_record_submitted() <= 0x43BB8000
              )
)

achievement(
    title = "Payneful Minute XXV", points = 4,
    description = "Complete Part III: Chapter 5 in under 1 minute 25 seconds in New York Minute mode",
    id = 546218, badge = "620909", published = "9/23/2025 8:10:10 PM", modified = "9/23/2025 8:38:03 PM",
    trigger = (new_york_minute_time_part_iii_chapter_5() > 5.0 && chapter_id() == 0x01 &&
                  _25_bytes_ascii_location_id() == 0x31395F54 &&
                  prev(new_york_minute_part_iii_chapter_5_record_submitted()) != 0x42AA0000 &&
                  new_york_minute_part_iii_chapter_5_record_submitted() <= 0x42AA0000
              )
)

achievement(
    title = "Payneful Minute XXVI", points = 4,
    description = "Complete Part III: Chapter 6 in under 1 minute in New York Minute mode",
    id = 546219, badge = "620910", published = "9/23/2025 8:10:10 PM", modified = "9/23/2025 8:38:03 PM",
    trigger = (new_york_minute_time_part_iii_chapter_6() > 5.0 && chapter_id() == 0x0A &&
                  _25_bytes_ascii_location_id() == 0x32305F54 &&
                  prev(new_york_minute_part_iii_chapter_6_record_submitted()) != 0x42700000 &&
                  new_york_minute_part_iii_chapter_6_record_submitted() <= 0x42700000
              )
)

achievement(
    title = "Payneful Minute XXVII", points = 4,
    description = "Complete Part III: Chapter 7 in under 1 minute 25 seconds in New York Minute mode",
    id = 546220, badge = "620911", published = "9/23/2025 8:10:10 PM", modified = "9/23/2025 8:38:03 PM",
    trigger = (new_york_minute_time_part_iii_chapter_7() > 5.0 && chapter_id() == 0x20 &&
                  _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(new_york_minute_part_iii_chapter_7_record_submitted()) != 0x42AA0000 &&
                  new_york_minute_part_iii_chapter_7_record_submitted() <= 0x42AA0000
              )
)

achievement(
    title = "Payneful Minute XXVIII", points = 4,
    description = "Complete Part III: Chapter 7 Continued  in under 25 seconds in New York Minute mode",
    id = 546221, badge = "620911", published = "9/23/2025 8:10:11 PM", modified = "9/23/2025 8:38:04 PM",
    trigger = (new_york_minute_time_part_iii_chapter_7_continued() > 5.0 && chapter_id() == 0x22 &&
                  _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(new_york_minute_part_iii_chapter_7_continued_record_submitted()) != 0x41C80000 &&
                  new_york_minute_part_iii_chapter_7_continued_record_submitted() <= 0x41C80000
              )
)

achievement(
    title = "Payneful Minute XXIX", points = 4,
    description = "Complete Part III: Chapter 8 in under 40 seconds in New York Minute mode",
    id = 546222, badge = "620912", published = "9/23/2025 8:10:11 PM", modified = "9/23/2025 8:38:04 PM",
    trigger = (new_york_minute_time_part_iii_chapter_8() > 5.0 && chapter_id() == 0x0D &&
                  _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(new_york_minute_part_iii_chapter_8_record_submitted()) != 0x42200000 &&
                  new_york_minute_part_iii_chapter_8_record_submitted() <= 0x42200000
              )
)

achievement(
    title = "Payneful Minute XXX", points = 4,
    description = "Complete Part III: Chapter 8 Continued in under 2 minutes in New York Minute mode",
    id = 546223, badge = "620912", published = "9/23/2025 8:10:11 PM", modified = "9/23/2025 8:38:05 PM",
    trigger = (new_york_minute_time_part_iii_chapter_8_continued() > 5.0 && chapter_id() == 0x15 &&
                  _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(new_york_minute_part_iii_chapter_8_continued_record_submitted()) != 0x42F00000 &&
                  new_york_minute_part_iii_chapter_8_continued_record_submitted() <= 0x42F00000
              )
)

achievement(
    title = "Overtime at the Yard", points = 10,
    description = "Survive at least 5 minutes in Manor Yard on Dead Man Walking mode",
    id = 546224, badge = "620913", published = "9/23/2025 8:10:11 PM", modified = "9/23/2025 8:38:06 PM",
    trigger = game_state() != 0x01 &&
              (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                  dead_man_walking_manor_yard_time() > 5.0 && prev(dead_man_walking_manor_yard_time()) <= 300.0 &&
                  dead_man_walking_manor_yard_time() > 300.0
              )
)

achievement(
    title = "Built to Last", points = 10,
    description = "Survive at least 5 minutes in Construction Site on Dead Man Walking mode",
    id = 546225, badge = "620914", published = "9/23/2025 8:10:13 PM", modified = "9/23/2025 8:38:06 PM",
    trigger = game_state() != 0x01 &&
              (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                  dead_man_walking_construction_site_time() > 5.0 &&
                  prev(dead_man_walking_construction_site_time()) <= 300.0 &&
                  dead_man_walking_construction_site_time() > 300.0
              )
)

achievement(
    title = "Leaf and Live", points = 10,
    description = "Survive at least 5 minutes in Manor Garden on Dead Man Walking mode",
    id = 546226, badge = "620915", published = "9/23/2025 8:10:13 PM", modified = "9/23/2025 8:38:06 PM",
    trigger = game_state() != 0x01 &&
              (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                  dead_man_walking_manor_garden_time() > 5.0 && prev(dead_man_walking_manor_garden_time()) <= 300.0 &&
                  dead_man_walking_manor_garden_time() > 300.0
              )
)

achievement(
    title = "Lot Survivor", points = 10,
    description = "Survive at least 5 minutes in Used Car Lot on Dead Man Walking mode",
    id = 546227, badge = "620916", published = "9/23/2025 8:10:13 PM", modified = "9/23/2025 8:38:06 PM",
    trigger = game_state() != 0x01 &&
              (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                  dead_man_walking_used_car_lot_time() > 5.0 && prev(dead_man_walking_used_car_lot_time()) <= 300.0 &&
                  dead_man_walking_used_car_lot_time() > 300.0
              )
)

achievement(
    title = "Above It All", points = 10,
    description = "Survive at least 5 minutes in Scaffolding on Dead Man Walking mode",
    id = 546228, badge = "620917", published = "9/23/2025 8:10:14 PM", modified = "9/23/2025 8:38:07 PM",
    trigger = game_state() != 0x01 &&
              (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                  dead_man_walking_scaffolding_time() > 5.0 && prev(dead_man_walking_scaffolding_time()) <= 300.0 &&
                  dead_man_walking_scaffolding_time() > 300.0
              )
)

achievement(
    title = "The Longest Slow-Mo", points = 10,
    description = "Kill 50 enemies consecutively in a single Bullet Time in Dead Man Walking mode",
    id = 546229, badge = "620918", published = "9/23/2025 8:10:14 PM", modified = "9/23/2025 8:38:07 PM",
    trigger = never((game_state() != 0x00 || bullet_time_active_flag() == 0x00)) &&
              ((measured(tally(50,
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_1_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_1_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_2_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_2_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_3_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_3_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_7_8() >
                    prev(dead_man_walking_construction_site_kill_counter_7_8())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_5_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_5_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_6_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_6_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_7_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_7_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_8_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_8_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_9_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_9_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_10_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_10_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_11_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_11_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_12_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_12_13())),
                    (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_yard_kill_counter_13_13() >
                    prev(dead_man_walking_manor_yard_kill_counter_13_13())))
                )) ||
               (measured(tally(50,
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_1_8() >
                    prev(dead_man_walking_construction_site_kill_counter_1_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_2_8() >
                    prev(dead_man_walking_construction_site_kill_counter_2_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_3_8() >
                    prev(dead_man_walking_construction_site_kill_counter_3_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_4_8() >
                    prev(dead_man_walking_construction_site_kill_counter_4_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_5_8() >
                    prev(dead_man_walking_construction_site_kill_counter_5_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_6_8() >
                    prev(dead_man_walking_construction_site_kill_counter_6_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_7_8() >
                    prev(dead_man_walking_construction_site_kill_counter_7_8())),
                    (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_construction_site_kill_counter_8_8() >
                    prev(dead_man_walking_construction_site_kill_counter_8_8())))
                )) ||
               (measured(tally(50,
                    (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_garden_kill_counter_1_5() >
                    prev(dead_man_walking_manor_garden_kill_counter_1_5())),
                    (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_garden_kill_counter_2_5() >
                    prev(dead_man_walking_manor_garden_kill_counter_2_5())),
                    (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_garden_kill_counter_3_5() >
                    prev(dead_man_walking_manor_garden_kill_counter_3_5())),
                    (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_garden_kill_counter_4_5() >
                    prev(dead_man_walking_manor_garden_kill_counter_4_5())),
                    (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_manor_garden_kill_counter_5_5() >
                    prev(dead_man_walking_manor_garden_kill_counter_5_5())))
                )) ||
               (measured(tally(50,
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_1_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_1_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_2_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_2_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_3_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_3_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_4_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_4_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_5_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_5_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_6_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_6_7())),
                    (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_used_car_lot_kill_counter_7_7() >
                    prev(dead_man_walking_used_car_lot_kill_counter_7_7())))
                )) ||
               (measured(tally(50,
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_1_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_1_6())),
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_2_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_2_6())),
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_3_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_3_6())),
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_4_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_4_6())),
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_5_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_5_6())),
                    (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                    bullet_time_active_flag() == 0x01 &&
                    dead_man_walking_scaffolding_kill_counter_6_6() >
                    prev(dead_man_walking_scaffolding_kill_counter_6_6())))
                )))
)

achievement(
    title = "Evasive Execution", points = 5,
    description = "Kill 4 enemies in a single shootdodge",
    id = 546230, badge = "620919", published = "9/23/2025 8:10:14 PM", modified = "9/23/2025 8:38:07 PM",
    trigger = never(dword(player_data() + 0x928) != 0x1F) &&
              ((measured(tally(4, (prev(pt_1_c1_enemy_status_flag()) == 0x00 && pt_1_c1_enemy_status_flag() == 0x01),
                    (prev(pt_1_c1_enemy_status()) == 0x00 && pt_1_c1_enemy_status() == 0x01),
                    (prev(pt_1_c1_enemy_status_2()) == 0x00 && pt_1_c1_enemy_status_2() == 0x01),
                    (prev(pt_1_c1_enemy_status_3()) == 0x00 && pt_1_c1_enemy_status_3() == 0x01),
                    (prev(pt_1_c1_enemy_status_4()) == 0x00 && pt_1_c1_enemy_status_4() == 0x01),
                    (prev(pt_1_c1_enemy_status_5()) == 0x00 && pt_1_c1_enemy_status_5() == 0x01),
                    (prev(pt_1_c1_enemy_status_6()) == 0x00 && pt_1_c1_enemy_status_6() == 0x01),
                    (prev(pt_1_c1_enemy_status_7()) == 0x00 && pt_1_c1_enemy_status_7() == 0x01),
                    (prev(pt_1_c1_enemy_status_8()) == 0x00 && pt_1_c1_enemy_status_8() == 0x01),
                    (prev(pt_1_c1_enemy_status_9()) == 0x00 && pt_1_c1_enemy_status_9() == 0x01),
                    (prev(pt_1_c1_enemy_status_10()) == 0x00 && pt_1_c1_enemy_status_10() == 0x01),
                    (prev(pt_1_c1_enemy_status_11()) == 0x00 && pt_1_c1_enemy_status_11() == 0x01),
                    (prev(pt_1_c1_enemy_status_12()) == 0x00 && pt_1_c1_enemy_status_12() == 0x01),
                    (prev(pt_1_c1_enemy_status_13()) == 0x00 && pt_1_c1_enemy_status_13() == 0x01),
                    (prev(pt_1_c1_enemy_status_14()) == 0x00 && pt_1_c1_enemy_status_14() == 0x01),
                    (prev(pt_1_c1_enemy_status_15()) == 0x00 && pt_1_c1_enemy_status_15() == 0x01),
                    (prev(pt_1_c1_enemy_status_16()) == 0x00 && pt_1_c1_enemy_status_16() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x30345F57)) ||
               (measured(tally(4, (prev(pt_1_c2_enemy_status_flag()) == 0x00 && pt_1_c2_enemy_status_flag() == 0x01),
                    (prev(pt_1_c2_enemy_status()) == 0x00 && pt_1_c2_enemy_status() == 0x01),
                    (prev(pt_1_c2_enemy_status_2()) == 0x00 && pt_1_c2_enemy_status_2() == 0x01),
                    (prev(pt_1_c2_enemy_status_3()) == 0x00 && pt_1_c2_enemy_status_3() == 0x01),
                    (prev(pt_1_c2_enemy_status_4()) == 0x00 && pt_1_c2_enemy_status_4() == 0x01),
                    (prev(pt_1_c2_enemy_status_5()) == 0x00 && pt_1_c2_enemy_status_5() == 0x01),
                    (prev(pt_1_c2_enemy_status_6()) == 0x00 && pt_1_c2_enemy_status_6() == 0x01),
                    (prev(pt_1_c2_enemy_status_7()) == 0x00 && pt_1_c2_enemy_status_7() == 0x01),
                    (prev(pt_1_c2_enemy_status_8()) == 0x00 && pt_1_c2_enemy_status_8() == 0x01),
                    (prev(pt_1_c2_enemy_status_9()) == 0x00 && pt_1_c2_enemy_status_9() == 0x01),
                    (prev(pt_1_c2_enemy_status_10()) == 0x00 && pt_1_c2_enemy_status_10() == 0x01),
                    (prev(pt_1_c2_enemy_status_11()) == 0x00 && pt_1_c2_enemy_status_11() == 0x01),
                    (prev(pt_1_c2_enemy_status_12()) == 0x00 && pt_1_c2_enemy_status_12() == 0x01),
                    (prev(pt_1_c2_enemy_status_13()) == 0x00 && pt_1_c2_enemy_status_13() == 0x01),
                    (prev(pt_1_c2_enemy_status_14()) == 0x00 && pt_1_c2_enemy_status_14() == 0x01),
                    (prev(pt_1_c2_enemy_status_15()) == 0x00 && pt_1_c2_enemy_status_15() == 0x01),
                    (prev(pt_1_c2_enemy_status_16()) == 0x00 && pt_1_c2_enemy_status_16() == 0x01),
                    (prev(pt_1_c2_enemy_status_17()) == 0x00 && pt_1_c2_enemy_status_17() == 0x01),
                    (prev(pt_1_c2_enemy_status_18()) == 0x00 && pt_1_c2_enemy_status_18() == 0x01),
                    (prev(pt_1_c2_enemy_status_19()) == 0x00 && pt_1_c2_enemy_status_19() == 0x01),
                    (prev(pt_1_c2_enemy_status_20()) == 0x00 && pt_1_c2_enemy_status_20() == 0x01),
                    (prev(pt_1_c2_enemy_status_21()) == 0x00 && pt_1_c2_enemy_status_21() == 0x01),
                    (prev(pt_1_c2_enemy_status_22()) == 0x00 && pt_1_c2_enemy_status_22() == 0x01),
                    (prev(pt_1_c2_enemy_status_23()) == 0x00 && pt_1_c2_enemy_status_23() == 0x01),
                    (prev(pt_1_c2_enemy_status_24()) == 0x00 && pt_1_c2_enemy_status_24() == 0x01),
                    (prev(pt_1_c2_enemy_status_25()) == 0x00 && pt_1_c2_enemy_status_25() == 0x01),
                    (prev(pt_1_c2_enemy_status_26()) == 0x00 && pt_1_c2_enemy_status_26() == 0x01),
                    (prev(pt_1_c2_enemy_status_27()) == 0x00 && pt_1_c2_enemy_status_27() == 0x01),
                    (prev(pt_1_c2_enemy_status_28()) == 0x00 && pt_1_c2_enemy_status_28() == 0x01),
                    (prev(pt_1_c2_enemy_status_29()) == 0x00 && pt_1_c2_enemy_status_29() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x30355F46)) ||
               (measured(tally(4, (prev(pt_1_c4_enemy_status_flag()) == 0x00 && pt_1_c4_enemy_status_flag() == 0x01),
                    (prev(pt_1_c4_enemy_status()) == 0x00 && pt_1_c4_enemy_status() == 0x01),
                    (prev(pt_1_c4_enemy_status_2()) == 0x00 && pt_1_c4_enemy_status_2() == 0x01),
                    (prev(pt_1_c4_enemy_status_3()) == 0x00 && pt_1_c4_enemy_status_3() == 0x01),
                    (prev(pt_1_c4_enemy_status_4()) == 0x00 && pt_1_c4_enemy_status_4() == 0x01),
                    (prev(pt_1_c4_enemy_status_flag_2()) == 0x00 && pt_1_c4_enemy_status_flag_2() == 0x01),
                    (prev(pt_1_c4_enemy_status_5()) == 0x00 && pt_1_c4_enemy_status_5() == 0x01),
                    (prev(pt_1_c4_enemy_status_6()) == 0x00 && pt_1_c4_enemy_status_6() == 0x01),
                    (prev(pt_1_c4_enemy_status_7()) == 0x00 && pt_1_c4_enemy_status_7() == 0x01),
                    (prev(pt_1_c4_enemy_status_8()) == 0x00 && pt_1_c4_enemy_status_8() == 0x01),
                    (prev(pt_1_c4_enemy_status_9()) == 0x00 && pt_1_c4_enemy_status_9() == 0x01),
                    (prev(pt_1_c4_enemy_status_10()) == 0x00 && pt_1_c4_enemy_status_10() == 0x01))
                ) && unless((chapter_id() != 0x16 || _25_bytes_ascii_location_id() != 0x30375F4D))) ||
               (measured(tally(4,
                    (prev(pt_1_c4_continued_enemy_status_flag()) == 0x00 && pt_1_c4_continued_enemy_status_flag() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status()) == 0x00 && pt_1_c4_continued_enemy_status() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_2()) == 0x00 && pt_1_c4_continued_enemy_status_2() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_3()) == 0x00 && pt_1_c4_continued_enemy_status_3() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_4()) == 0x00 && pt_1_c4_continued_enemy_status_4() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_5()) == 0x00 && pt_1_c4_continued_enemy_status_5() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_6()) == 0x00 && pt_1_c4_continued_enemy_status_6() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_7()) == 0x00 && pt_1_c4_continued_enemy_status_7() == 0x01),
                    (prev(pt_1_c4_continued_enemy_status_8()) == 0x00 && pt_1_c4_continued_enemy_status_8() == 0x01))
                ) && unless((chapter_id() != 0x0D || _25_bytes_ascii_location_id() != 0x30375F4D))) ||
               (measured(tally(4, (prev(pt_1_c5_enemy_status()) == 0x00 && pt_1_c5_enemy_status() == 0x01),
                    (prev(pt_1_c5_enemy_status_2()) == 0x00 && pt_1_c5_enemy_status_2() == 0x01),
                    (prev(pt_1_c5_enemy_status_3()) == 0x00 && pt_1_c5_enemy_status_3() == 0x01),
                    (prev(pt_1_c5_enemy_status_4()) == 0x00 && pt_1_c5_enemy_status_4() == 0x01),
                    (prev(pt_1_c5_enemy_status_5()) == 0x00 && pt_1_c5_enemy_status_5() == 0x01),
                    (prev(pt_1_c5_enemy_status_6()) == 0x00 && pt_1_c5_enemy_status_6() == 0x01),
                    (prev(pt_1_c5_enemy_status_7()) == 0x00 && pt_1_c5_enemy_status_7() == 0x01),
                    (prev(pt_1_c5_enemy_status_8()) == 0x00 && pt_1_c5_enemy_status_8() == 0x01),
                    (prev(pt_1_c5_enemy_status_9()) == 0x00 && pt_1_c5_enemy_status_9() == 0x01),
                    (prev(pt_1_c5_enemy_status_10()) == 0x00 && pt_1_c5_enemy_status_10() == 0x01),
                    (prev(pt_1_c5_enemy_status_11()) == 0x00 && pt_1_c5_enemy_status_11() == 0x01),
                    (prev(pt_1_c5_enemy_status_12()) == 0x00 && pt_1_c5_enemy_status_12() == 0x01),
                    (prev(pt_1_c5_enemy_status_13()) == 0x00 && pt_1_c5_enemy_status_13() == 0x01),
                    (prev(pt_1_c5_enemy_status_14()) == 0x00 && pt_1_c5_enemy_status_14() == 0x01),
                    (prev(pt_1_c5_enemy_status_15()) == 0x00 && pt_1_c5_enemy_status_15() == 0x01),
                    (prev(pt_1_c5_enemy_status_16()) == 0x00 && pt_1_c5_enemy_status_16() == 0x01),
                    (prev(pt_1_c5_enemy_status_17()) == 0x00 && pt_1_c5_enemy_status_17() == 0x01),
                    (prev(pt_1_c5_enemy_status_18()) == 0x00 && pt_1_c5_enemy_status_18() == 0x01),
                    (prev(pt_1_c5_enemy_status_19()) == 0x00 && pt_1_c5_enemy_status_19() == 0x01))
                ) && unless((chapter_id() != 0x1C || _25_bytes_ascii_location_id() != 0x30375F4D))) ||
               (measured(tally(4, (prev(pt_1_c7_enemy_status_flag()) == 0x00 && pt_1_c7_enemy_status_flag() == 0x01),
                    (prev(pt_1_c7_enemy_status()) == 0x00 && pt_1_c7_enemy_status() == 0x01),
                    (prev(pt_1_c7_enemy_status_2()) == 0x00 && pt_1_c7_enemy_status_2() == 0x01),
                    (prev(pt_1_c7_enemy_status_3()) == 0x00 && pt_1_c7_enemy_status_3() == 0x01),
                    (prev(pt_1_c7_enemy_status_4()) == 0x00 && pt_1_c7_enemy_status_4() == 0x01),
                    (prev(pt_1_c7_enemy_status_5()) == 0x00 && pt_1_c7_enemy_status_5() == 0x01),
                    (prev(pt_1_c7_enemy_status_6()) == 0x00 && pt_1_c7_enemy_status_6() == 0x01),
                    (prev(pt_1_c7_enemy_status_7()) == 0x00 && pt_1_c7_enemy_status_7() == 0x01),
                    (prev(pt_1_c7_enemy_status_8()) == 0x00 && pt_1_c7_enemy_status_8() == 0x01),
                    (prev(pt_1_c7_enemy_status_9()) == 0x00 && pt_1_c7_enemy_status_9() == 0x01),
                    (prev(pt_1_c7_enemy_status_10()) == 0x00 && pt_1_c7_enemy_status_10() == 0x01),
                    (prev(pt_1_c7_enemy_status_11()) == 0x00 && pt_1_c7_enemy_status_11() == 0x01),
                    (prev(pt_1_c7_enemy_status_12()) == 0x00 && pt_1_c7_enemy_status_12() == 0x01),
                    (prev(pt_1_c7_enemy_status_13()) == 0x00 && pt_1_c7_enemy_status_13() == 0x01),
                    (prev(pt_1_c7_enemy_status_14()) == 0x00 && pt_1_c7_enemy_status_14() == 0x01),
                    (prev(pt_1_c7_enemy_status_15()) == 0x00 && pt_1_c7_enemy_status_15() == 0x01),
                    (prev(pt_1_c7_enemy_status_16()) == 0x00 && pt_1_c7_enemy_status_16() == 0x01))
                ) && unless((chapter_id() != 0x14 || _25_bytes_ascii_location_id() != 0x30395F55))) ||
               (measured(tally(4,
                    (prev(pt_1_c7_continued_enemy_status_flag()) == 0x00 && pt_1_c7_continued_enemy_status_flag() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status()) == 0x00 && pt_1_c7_continued_enemy_status() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_2()) == 0x00 && pt_1_c7_continued_enemy_status_2() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_3()) == 0x00 && pt_1_c7_continued_enemy_status_3() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_4()) == 0x00 && pt_1_c7_continued_enemy_status_4() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_5()) == 0x00 && pt_1_c7_continued_enemy_status_5() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_6()) == 0x00 && pt_1_c7_continued_enemy_status_6() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_7()) == 0x00 && pt_1_c7_continued_enemy_status_7() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_8()) == 0x00 && pt_1_c7_continued_enemy_status_8() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_kaufman()) == 0x00 &&
                    pt_1_c7_continued_enemy_status_kaufman() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_9()) == 0x00 && pt_1_c7_continued_enemy_status_9() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_10()) == 0x00 && pt_1_c7_continued_enemy_status_10() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_11()) == 0x00 && pt_1_c7_continued_enemy_status_11() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_12()) == 0x00 && pt_1_c7_continued_enemy_status_12() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_13()) == 0x00 && pt_1_c7_continued_enemy_status_13() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_14()) == 0x00 && pt_1_c7_continued_enemy_status_14() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_15()) == 0x00 && pt_1_c7_continued_enemy_status_15() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_16()) == 0x00 && pt_1_c7_continued_enemy_status_16() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_17()) == 0x00 && pt_1_c7_continued_enemy_status_17() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_18()) == 0x00 && pt_1_c7_continued_enemy_status_18() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_19()) == 0x00 && pt_1_c7_continued_enemy_status_19() == 0x01),
                    (prev(pt_1_c7_continued_enemy_status_20()) == 0x00 && pt_1_c7_continued_enemy_status_20() == 0x01))
                ) && unless((chapter_id() != 0x1D || _25_bytes_ascii_location_id() != 0x30395F55))) ||
               (measured(tally(4, (prev(pt_2_p0_enemy_status_flag()) == 0x00 && pt_2_p0_enemy_status_flag() == 0x01),
                    (prev(pt_2_p0_enemy_status()) == 0x00 && pt_2_p0_enemy_status() == 0x01),
                    (prev(pt_2_p0_enemy_status_2()) == 0x00 && pt_2_p0_enemy_status_2() == 0x01),
                    (prev(pt_2_p0_enemy_status_3()) == 0x00 && pt_2_p0_enemy_status_3() == 0x01),
                    (prev(pt_2_p0_enemy_status_4()) == 0x00 && pt_2_p0_enemy_status_4() == 0x01),
                    (prev(pt_2_p0_enemy_status_5()) == 0x00 && pt_2_p0_enemy_status_5() == 0x01),
                    (prev(pt_2_p0_enemy_status_6()) == 0x00 && pt_2_p0_enemy_status_6() == 0x01),
                    (prev(pt_2_p0_enemy_status_7()) == 0x00 && pt_2_p0_enemy_status_7() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x31305F50)) ||
               (measured(tally(4, (prev(pt_2_c1_enemy_status_flag()) == 0x00 && pt_2_c1_enemy_status_flag() == 0x01),
                    (prev(pt_2_c1_enemy_status()) == 0x00 && pt_2_c1_enemy_status() == 0x01),
                    (prev(pt_2_c1_enemy_status_2()) == 0x00 && pt_2_c1_enemy_status_2() == 0x01),
                    (prev(pt_2_c1_enemy_status_3()) == 0x00 && pt_2_c1_enemy_status_3() == 0x01),
                    (prev(pt_2_c1_enemy_status_4()) == 0x00 && pt_2_c1_enemy_status_4() == 0x01),
                    (prev(pt_2_c1_enemy_status_5()) == 0x00 && pt_2_c1_enemy_status_5() == 0x01),
                    (prev(pt_2_c1_enemy_status_6()) == 0x00 && pt_2_c1_enemy_status_6() == 0x01),
                    (prev(pt_2_c1_enemy_status_7()) == 0x00 && pt_2_c1_enemy_status_7() == 0x01),
                    (prev(pt_2_c1_enemy_status_8()) == 0x00 && pt_2_c1_enemy_status_8() == 0x01),
                    (prev(pt_2_c1_enemy_status_9()) == 0x00 && pt_2_c1_enemy_status_9() == 0x01),
                    (prev(pt_2_c1_enemy_status_10()) == 0x00 && pt_2_c1_enemy_status_10() == 0x01),
                    (prev(pt_2_c1_enemy_status_11()) == 0x00 && pt_2_c1_enemy_status_11() == 0x01),
                    (prev(pt_2_c1_enemy_status_12()) == 0x00 && pt_2_c1_enemy_status_12() == 0x01),
                    (prev(pt_2_c1_enemy_status_13()) == 0x00 && pt_2_c1_enemy_status_13() == 0x01),
                    (prev(pt_2_c1_enemy_status_14()) == 0x00 && pt_2_c1_enemy_status_14() == 0x01),
                    (prev(pt_2_c1_enemy_status_15()) == 0x00 && pt_2_c1_enemy_status_15() == 0x01),
                    (prev(pt_2_c1_enemy_status_16()) == 0x00 && pt_2_c1_enemy_status_16() == 0x01),
                    (prev(pt_2_c1_enemy_status_17()) == 0x00 && pt_2_c1_enemy_status_17() == 0x01),
                    (prev(pt_2_c1_enemy_status_18()) == 0x00 && pt_2_c1_enemy_status_18() == 0x01),
                    (prev(pt_2_c1_enemy_status_19()) == 0x00 && pt_2_c1_enemy_status_19() == 0x01),
                    (prev(pt_2_c1_enemy_status_20()) == 0x00 && pt_2_c1_enemy_status_20() == 0x01),
                    (prev(pt_2_c1_enemy_status_21()) == 0x00 && pt_2_c1_enemy_status_21() == 0x01),
                    (prev(pt_2_c1_enemy_status_22()) == 0x00 && pt_2_c1_enemy_status_22() == 0x01),
                    (prev(pt_2_c1_enemy_status_23()) == 0x00 && pt_2_c1_enemy_status_23() == 0x01),
                    (prev(pt_2_c1_enemy_status_24()) == 0x00 && pt_2_c1_enemy_status_24() == 0x01),
                    (prev(pt_2_c1_enemy_status_25()) == 0x00 && pt_2_c1_enemy_status_25() == 0x01),
                    (prev(pt_2_c1_enemy_status_26()) == 0x00 && pt_2_c1_enemy_status_26() == 0x01),
                    (prev(pt_2_c1_enemy_status_27()) == 0x00 && pt_2_c1_enemy_status_27() == 0x01),
                    (prev(pt_2_c1_enemy_status_28()) == 0x00 && pt_2_c1_enemy_status_28() == 0x01),
                    (prev(pt_2_c1_enemy_status_29()) == 0x00 && pt_2_c1_enemy_status_29() == 0x01),
                    (prev(pt_2_c1_enemy_status_30()) == 0x00 && pt_2_c1_enemy_status_30() == 0x01),
                    (prev(pt_2_c1_enemy_status_31()) == 0x00 && pt_2_c1_enemy_status_31() == 0x01),
                    (prev(pt_2_c1_enemy_status_32()) == 0x00 && pt_2_c1_enemy_status_32() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x31315F53)) ||
               (measured(tally(4, (prev(pt_2_c2_enemy_status_flag()) == 0x00 && pt_2_c2_enemy_status_flag() == 0x01),
                    (prev(pt_2_c2_enemy_status()) == 0x00 && pt_2_c2_enemy_status() == 0x01),
                    (prev(pt_2_c2_enemy_status_2()) == 0x00 && pt_2_c2_enemy_status_2() == 0x01),
                    (prev(pt_2_c2_enemy_status_3()) == 0x00 && pt_2_c2_enemy_status_3() == 0x01),
                    (prev(pt_2_c2_enemy_status_4()) == 0x00 && pt_2_c2_enemy_status_4() == 0x01),
                    (prev(pt_2_c2_enemy_status_5()) == 0x00 && pt_2_c2_enemy_status_5() == 0x01),
                    (prev(pt_2_c2_enemy_status_6()) == 0x00 && pt_2_c2_enemy_status_6() == 0x01),
                    (prev(pt_2_c2_enemy_status_7()) == 0x00 && pt_2_c2_enemy_status_7() == 0x01),
                    (prev(pt_2_c2_enemy_status_8()) == 0x00 && pt_2_c2_enemy_status_8() == 0x01),
                    (prev(pt_2_c2_enemy_status_9()) == 0x00 && pt_2_c2_enemy_status_9() == 0x01),
                    (prev(pt_2_c2_enemy_status_10()) == 0x00 && pt_2_c2_enemy_status_10() == 0x01),
                    (prev(pt_2_c2_enemy_status_11()) == 0x00 && pt_2_c2_enemy_status_11() == 0x01),
                    (prev(pt_2_c2_enemy_status_12()) == 0x00 && pt_2_c2_enemy_status_12() == 0x01),
                    (prev(pt_2_c2_enemy_status_13()) == 0x00 && pt_2_c2_enemy_status_13() == 0x01),
                    (prev(pt_2_c2_enemy_status_14()) == 0x00 && pt_2_c2_enemy_status_14() == 0x01),
                    (prev(pt_2_c2_enemy_status_15()) == 0x00 && pt_2_c2_enemy_status_15() == 0x01),
                    (prev(pt_2_c2_enemy_status_16()) == 0x00 && pt_2_c2_enemy_status_16() == 0x01),
                    (prev(pt_2_c2_enemy_status_17()) == 0x00 && pt_2_c2_enemy_status_17() == 0x01),
                    (prev(pt_2_c2_enemy_status_18()) == 0x00 && pt_2_c2_enemy_status_18() == 0x01),
                    (prev(pt_2_c2_enemy_status_19()) == 0x00 && pt_2_c2_enemy_status_19() == 0x01),
                    (prev(pt_2_c2_enemy_status_20()) == 0x00 && pt_2_c2_enemy_status_20() == 0x01),
                    (prev(pt_2_c2_enemy_status_21()) == 0x00 && pt_2_c2_enemy_status_21() == 0x01),
                    (prev(pt_2_c2_enemy_status_22()) == 0x00 && pt_2_c2_enemy_status_22() == 0x01),
                    (prev(pt_2_c2_enemy_status_23()) == 0x00 && pt_2_c2_enemy_status_23() == 0x01),
                    (prev(pt_2_c2_enemy_status_24()) == 0x00 && pt_2_c2_enemy_status_24() == 0x01),
                    (prev(pt_2_c2_enemy_status_25()) == 0x00 && pt_2_c2_enemy_status_25() == 0x01),
                    (prev(pt_2_c2_enemy_status_26()) == 0x00 && pt_2_c2_enemy_status_26() == 0x01),
                    (prev(pt_2_c2_enemy_status_27()) == 0x00 && pt_2_c2_enemy_status_27() == 0x01),
                    (prev(pt_2_c2_enemy_status_28()) == 0x00 && pt_2_c2_enemy_status_28() == 0x01))
                ) && unless((chapter_id() != 0x26 || _25_bytes_ascii_location_id() != 0x31325F43))) ||
               (measured(tally(4,
                    (prev(pt_2_c2_continued_enemy_status_flag()) == 0x00 && pt_2_c2_continued_enemy_status_flag() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status()) == 0x00 && pt_2_c2_continued_enemy_status() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_2()) == 0x00 && pt_2_c2_continued_enemy_status_2() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_3()) == 0x00 && pt_2_c2_continued_enemy_status_3() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_4()) == 0x00 && pt_2_c2_continued_enemy_status_4() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_5()) == 0x00 && pt_2_c2_continued_enemy_status_5() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_6()) == 0x00 && pt_2_c2_continued_enemy_status_6() == 0x01),
                    (prev(pt_2_c2_continued_enemy_status_7()) == 0x00 && pt_2_c2_continued_enemy_status_7() == 0x01))
                ) && unless((chapter_id() != 0x0C || _25_bytes_ascii_location_id() != 0x31325F43))) ||
               (measured(tally(4, (prev(pt_2_c3_enemy_status_flag()) == 0x00 && pt_2_c3_enemy_status_flag() == 0x01),
                    (prev(pt_2_c3_enemy_status()) == 0x00 && pt_2_c3_enemy_status() == 0x01),
                    (prev(pt_2_c3_enemy_status_2()) == 0x00 && pt_2_c3_enemy_status_2() == 0x01),
                    (prev(pt_2_c3_enemy_status_3()) == 0x00 && pt_2_c3_enemy_status_3() == 0x01),
                    (prev(pt_2_c3_enemy_status_4()) == 0x00 && pt_2_c3_enemy_status_4() == 0x01),
                    (prev(pt_2_c3_enemy_status_5()) == 0x00 && pt_2_c3_enemy_status_5() == 0x01),
                    (prev(pt_2_c3_enemy_status_6()) == 0x00 && pt_2_c3_enemy_status_6() == 0x01),
                    (prev(pt_2_c3_enemy_status_7()) == 0x00 && pt_2_c3_enemy_status_7() == 0x01),
                    (prev(pt_2_c3_enemy_status_8()) == 0x00 && pt_2_c3_enemy_status_8() == 0x01),
                    (prev(pt_2_c3_enemy_status_9()) == 0x00 && pt_2_c3_enemy_status_9() == 0x01),
                    (prev(pt_2_c3_enemy_status_10()) == 0x00 && pt_2_c3_enemy_status_10() == 0x01),
                    (prev(pt_2_c3_enemy_status_11()) == 0x00 && pt_2_c3_enemy_status_11() == 0x01))
                ) && unless((chapter_id() != 0x14 || _25_bytes_ascii_location_id() != 0x31325F43))) ||
               (measured(tally(4, (prev(pt_2_c4_enemy_status_flag()) == 0x00 && pt_2_c4_enemy_status_flag() == 0x01),
                    (prev(pt_2_c4_enemy_status()) == 0x00 && pt_2_c4_enemy_status() == 0x01),
                    (prev(pt_2_c4_enemy_status_2()) == 0x00 && pt_2_c4_enemy_status_2() == 0x01),
                    (prev(pt_2_c4_enemy_status_3()) == 0x00 && pt_2_c4_enemy_status_3() == 0x01),
                    (prev(pt_2_c4_enemy_status_4()) == 0x00 && pt_2_c4_enemy_status_4() == 0x01),
                    (prev(pt_2_c4_enemy_status_5()) == 0x00 && pt_2_c4_enemy_status_5() == 0x01),
                    (prev(pt_2_c4_enemy_status_6()) == 0x00 && pt_2_c4_enemy_status_6() == 0x01),
                    (prev(pt_2_c4_enemy_status_7()) == 0x00 && pt_2_c4_enemy_status_7() == 0x01),
                    (prev(pt_2_c4_enemy_status_8()) == 0x00 && pt_2_c4_enemy_status_8() == 0x01),
                    (prev(pt_2_c4_enemy_status_9()) == 0x00 && pt_2_c4_enemy_status_9() == 0x01),
                    (prev(pt_2_c4_enemy_status_10()) == 0x00 && pt_2_c4_enemy_status_10() == 0x01),
                    (prev(pt_2_c4_enemy_status_11()) == 0x00 && pt_2_c4_enemy_status_11() == 0x01),
                    (prev(pt_2_c4_enemy_status_12()) == 0x00 && pt_2_c4_enemy_status_12() == 0x01),
                    (prev(pt_2_c4_enemy_status_13()) == 0x00 && pt_2_c4_enemy_status_13() == 0x01),
                    (prev(pt_2_c4_enemy_status_14()) == 0x00 && pt_2_c4_enemy_status_14() == 0x01),
                    (prev(pt_2_c4_enemy_status_15()) == 0x00 && pt_2_c4_enemy_status_15() == 0x01),
                    (prev(pt_2_c4_enemy_status_16()) == 0x00 && pt_2_c4_enemy_status_16() == 0x01),
                    (prev(pt_2_c4_enemy_status_17()) == 0x00 && pt_2_c4_enemy_status_17() == 0x01),
                    (prev(pt_2_c4_enemy_status_18()) == 0x00 && pt_2_c4_enemy_status_18() == 0x01),
                    (prev(pt_2_c4_enemy_status_19()) == 0x00 && pt_2_c4_enemy_status_19() == 0x01),
                    (prev(pt_2_c4_enemy_status_20()) == 0x00 && pt_2_c4_enemy_status_20() == 0x01),
                    (prev(pt_2_c4_enemy_status_21()) == 0x00 && pt_2_c4_enemy_status_21() == 0x01),
                    (prev(pt_2_c4_enemy_status_22()) == 0x00 && pt_2_c4_enemy_status_22() == 0x01),
                    (prev(pt_2_c4_enemy_status_23()) == 0x00 && pt_2_c4_enemy_status_23() == 0x01),
                    (prev(pt_2_c4_enemy_status_24()) == 0x00 && pt_2_c4_enemy_status_24() == 0x01),
                    (prev(pt_2_c4_enemy_status_25()) == 0x00 && pt_2_c4_enemy_status_25() == 0x01),
                    (prev(pt_2_c4_enemy_status_26()) == 0x00 && pt_2_c4_enemy_status_26() == 0x01),
                    (prev(pt_2_c4_enemy_status_27()) == 0x00 && pt_2_c4_enemy_status_27() == 0x01),
                    (prev(pt_2_c4_enemy_status_28()) == 0x00 && pt_2_c4_enemy_status_28() == 0x01),
                    (prev(pt_2_c4_enemy_status_29()) == 0x00 && pt_2_c4_enemy_status_29() == 0x01),
                    (prev(pt_2_c4_enemy_status_30()) == 0x00 && pt_2_c4_enemy_status_30() == 0x01),
                    (prev(pt_2_c4_enemy_status_31()) == 0x00 && pt_2_c4_enemy_status_31() == 0x01),
                    (prev(pt_2_c4_enemy_status_32()) == 0x00 && pt_2_c4_enemy_status_32() == 0x01))
                ) && unless((chapter_id() != 0x22 || _25_bytes_ascii_location_id() != 0x31335F43))) ||
               (measured(tally(4, (prev(pt_2_c5_enemy_status_flag()) == 0x00 && pt_2_c5_enemy_status_flag() == 0x01),
                    (prev(pt_2_c5_enemy_status()) == 0x00 && pt_2_c5_enemy_status() == 0x01),
                    (prev(pt_2_c5_enemy_status_2()) == 0x00 && pt_2_c5_enemy_status_2() == 0x01),
                    (prev(pt_2_c5_enemy_status_3()) == 0x00 && pt_2_c5_enemy_status_3() == 0x01),
                    (prev(pt_2_c5_enemy_status_4()) == 0x00 && pt_2_c5_enemy_status_4() == 0x01),
                    (prev(pt_2_c5_enemy_status_5()) == 0x00 && pt_2_c5_enemy_status_5() == 0x01),
                    (prev(pt_2_c5_enemy_status_6()) == 0x00 && pt_2_c5_enemy_status_6() == 0x01),
                    (prev(pt_2_c5_enemy_status_7()) == 0x00 && pt_2_c5_enemy_status_7() == 0x01),
                    (prev(pt_2_c5_enemy_status_8()) == 0x00 && pt_2_c5_enemy_status_8() == 0x01),
                    (prev(pt_2_c5_enemy_status_9()) == 0x00 && pt_2_c5_enemy_status_9() == 0x01),
                    (prev(pt_2_c5_enemy_status_10()) == 0x00 && pt_2_c5_enemy_status_10() == 0x01),
                    (prev(pt_2_c5_enemy_status_11()) == 0x00 && pt_2_c5_enemy_status_11() == 0x01),
                    (prev(pt_2_c5_enemy_status_12()) == 0x00 && pt_2_c5_enemy_status_12() == 0x01),
                    (prev(pt_2_c5_enemy_status_13()) == 0x00 && pt_2_c5_enemy_status_13() == 0x01),
                    (prev(pt_2_c5_enemy_status_14()) == 0x00 && pt_2_c5_enemy_status_14() == 0x01),
                    (prev(pt_2_c5_enemy_status_15()) == 0x00 && pt_2_c5_enemy_status_15() == 0x01),
                    (prev(pt_2_c5_enemy_status_16()) == 0x00 && pt_2_c5_enemy_status_16() == 0x01),
                    (prev(pt_2_c5_enemy_status_17()) == 0x00 && pt_2_c5_enemy_status_17() == 0x01),
                    (prev(pt_2_c5_enemy_status_18()) == 0x00 && pt_2_c5_enemy_status_18() == 0x01),
                    (prev(pt_2_c5_enemy_status_19()) == 0x00 && pt_2_c5_enemy_status_19() == 0x01),
                    (prev(pt_2_c5_enemy_status_20()) == 0x00 && pt_2_c5_enemy_status_20() == 0x01),
                    (prev(pt_2_c5_enemy_status_21()) == 0x00 && pt_2_c5_enemy_status_21() == 0x01),
                    (prev(pt_2_c5_enemy_status_22()) == 0x00 && pt_2_c5_enemy_status_22() == 0x01),
                    (prev(pt_2_c5_enemy_status_23()) == 0x00 && pt_2_c5_enemy_status_23() == 0x01),
                    (prev(pt_2_c5_enemy_status_24()) == 0x00 && pt_2_c5_enemy_status_24() == 0x01),
                    (prev(pt_2_c5_enemy_status_25()) == 0x00 && pt_2_c5_enemy_status_25() == 0x01),
                    (prev(pt_2_c5_enemy_status_26()) == 0x00 && pt_2_c5_enemy_status_26() == 0x01),
                    (prev(pt_2_c5_enemy_status_27()) == 0x00 && pt_2_c5_enemy_status_27() == 0x01),
                    (prev(pt_2_c5_enemy_status_28()) == 0x00 && pt_2_c5_enemy_status_28() == 0x01),
                    (prev(pt_2_c5_enemy_status_29()) == 0x00 && pt_2_c5_enemy_status_29() == 0x01),
                    (prev(pt_2_c5_enemy_status_30()) == 0x00 && pt_2_c5_enemy_status_30() == 0x01),
                    (prev(pt_2_c5_enemy_status_31()) == 0x00 && pt_2_c5_enemy_status_31() == 0x01),
                    (prev(pt_2_c5_enemy_status_32()) == 0x00 && pt_2_c5_enemy_status_32() == 0x01),
                    (prev(pt_2_c5_enemy_status_33()) == 0x00 && pt_2_c5_enemy_status_33() == 0x01),
                    (prev(pt_2_c5_enemy_status_34()) == 0x00 && pt_2_c5_enemy_status_34() == 0x01),
                    (prev(pt_2_c5_enemy_status_35()) == 0x00 && pt_2_c5_enemy_status_35() == 0x01),
                    (prev(pt_2_c5_enemy_status_36()) == 0x00 && pt_2_c5_enemy_status_36() == 0x01))
                ) && unless(chapter_id() != 0x28)) ||
               (measured(tally(4, (prev(pt_2_c6_enemy_status_flag()) == 0x00 && pt_2_c6_enemy_status_flag() == 0x01),
                    (prev(pt_2_c6_enemy_status()) == 0x00 && pt_2_c6_enemy_status() == 0x01),
                    (prev(pt_2_c6_enemy_status_2()) == 0x00 && pt_2_c6_enemy_status_2() == 0x01),
                    (prev(pt_2_c6_enemy_status_3()) == 0x00 && pt_2_c6_enemy_status_3() == 0x01),
                    (prev(pt_2_c6_enemy_status_4()) == 0x00 && pt_2_c6_enemy_status_4() == 0x01),
                    (prev(pt_2_c6_enemy_status_5()) == 0x00 && pt_2_c6_enemy_status_5() == 0x01),
                    (prev(pt_2_c6_enemy_status_6()) == 0x00 && pt_2_c6_enemy_status_6() == 0x01),
                    (prev(pt_2_c6_enemy_status_7()) == 0x00 && pt_2_c6_enemy_status_7() == 0x01),
                    (prev(pt_2_c6_enemy_status_8()) == 0x00 && pt_2_c6_enemy_status_8() == 0x01),
                    (prev(pt_2_c6_enemy_status_9()) == 0x00 && pt_2_c6_enemy_status_9() == 0x01),
                    (prev(pt_2_c6_enemy_status_10()) == 0x00 && pt_2_c6_enemy_status_10() == 0x01),
                    (prev(pt_2_c6_enemy_status_11()) == 0x00 && pt_2_c6_enemy_status_11() == 0x01),
                    (prev(pt_2_c6_enemy_status_12()) == 0x00 && pt_2_c6_enemy_status_12() == 0x01),
                    (prev(pt_2_c6_enemy_status_13()) == 0x00 && pt_2_c6_enemy_status_13() == 0x01),
                    (prev(pt_2_c6_enemy_status_14()) == 0x00 && pt_2_c6_enemy_status_14() == 0x01),
                    (prev(pt_2_c6_enemy_status_15()) == 0x00 && pt_2_c6_enemy_status_15() == 0x01),
                    (prev(pt_2_c6_enemy_status_16()) == 0x00 && pt_2_c6_enemy_status_16() == 0x01),
                    (prev(pt_2_c6_enemy_status_17()) == 0x00 && pt_2_c6_enemy_status_17() == 0x01),
                    (prev(pt_2_c6_enemy_status_18()) == 0x00 && pt_2_c6_enemy_status_18() == 0x01),
                    (prev(pt_2_c6_enemy_status_19()) == 0x00 && pt_2_c6_enemy_status_19() == 0x01),
                    (prev(pt_2_c6_enemy_status_20()) == 0x00 && pt_2_c6_enemy_status_20() == 0x01),
                    (prev(pt_2_c6_enemy_status_21()) == 0x00 && pt_2_c6_enemy_status_21() == 0x01),
                    (prev(pt_2_c6_enemy_status_22()) == 0x00 && pt_2_c6_enemy_status_22() == 0x01),
                    (prev(pt_2_c6_enemy_status_23()) == 0x00 && pt_2_c6_enemy_status_23() == 0x01),
                    (prev(pt_2_c6_enemy_status_24()) == 0x00 && pt_2_c6_enemy_status_24() == 0x01),
                    (prev(pt_2_c6_enemy_status_25()) == 0x00 && pt_2_c6_enemy_status_25() == 0x01),
                    (prev(pt_2_c6_enemy_status_26()) == 0x00 && pt_2_c6_enemy_status_26() == 0x01),
                    (prev(pt_2_c6_enemy_status_27()) == 0x00 && pt_2_c6_enemy_status_27() == 0x01),
                    (prev(pt_2_c6_enemy_status_28()) == 0x00 && pt_2_c6_enemy_status_28() == 0x01),
                    (prev(pt_2_c6_enemy_status_29()) == 0x00 && pt_2_c6_enemy_status_29() == 0x01),
                    (prev(pt_2_c6_enemy_status_30()) == 0x00 && pt_2_c6_enemy_status_30() == 0x01),
                    (prev(pt_2_c6_enemy_status_31()) == 0x00 && pt_2_c6_enemy_status_31() == 0x01),
                    (prev(pt_2_c6_enemy_status_32()) == 0x00 && pt_2_c6_enemy_status_32() == 0x01),
                    (prev(pt_2_c6_enemy_status_33()) == 0x00 && pt_2_c6_enemy_status_33() == 0x01),
                    (prev(pt_2_c6_enemy_status_34()) == 0x00 && pt_2_c6_enemy_status_34() == 0x01),
                    (prev(pt_2_c6_enemy_status_35()) == 0x00 && pt_2_c6_enemy_status_35() == 0x01),
                    (prev(pt_2_c6_enemy_status_36()) == 0x00 && pt_2_c6_enemy_status_36() == 0x01),
                    (prev(pt_2_c6_enemy_status_37()) == 0x00 && pt_2_c6_enemy_status_37() == 0x01),
                    (prev(pt_2_c6_enemy_status_38()) == 0x00 && pt_2_c6_enemy_status_38() == 0x01),
                    (prev(pt_2_c6_enemy_status_39()) == 0x00 && pt_2_c6_enemy_status_39() == 0x01),
                    (prev(pt_2_c6_enemy_status_40()) == 0x00 && pt_2_c6_enemy_status_40() == 0x01),
                    (prev(pt_2_c6_enemy_status_41()) == 0x00 && pt_2_c6_enemy_status_41() == 0x01))
                ) && unless(chapter_id() != 0x31)) ||
               (measured(tally(4, (prev(pt_3_c1_enemy_status()) == 0x00 && pt_3_c1_enemy_status() == 0x01),
                    (prev(pt_3_c1_enemy_status_2()) == 0x00 && pt_3_c1_enemy_status_2() == 0x01),
                    (prev(pt_3_c1_enemy_status_3()) == 0x00 && pt_3_c1_enemy_status_3() == 0x01),
                    (prev(pt_3_c1_enemy_status_4()) == 0x00 && pt_3_c1_enemy_status_4() == 0x01),
                    (prev(pt_3_c1_enemy_status_5()) == 0x00 && pt_3_c1_enemy_status_5() == 0x01),
                    (prev(pt_3_c1_enemy_status_6()) == 0x00 && pt_3_c1_enemy_status_6() == 0x01),
                    (prev(pt_3_c1_enemy_status_7()) == 0x00 && pt_3_c1_enemy_status_7() == 0x01),
                    (prev(pt_3_c1_enemy_status_8()) == 0x00 && pt_3_c1_enemy_status_8() == 0x01),
                    (prev(pt_3_c1_enemy_status_9()) == 0x00 && pt_3_c1_enemy_status_9() == 0x01),
                    (prev(pt_3_c1_enemy_status_10()) == 0x00 && pt_3_c1_enemy_status_10() == 0x01),
                    (prev(pt_3_c1_enemy_status_11()) == 0x00 && pt_3_c1_enemy_status_11() == 0x01),
                    (prev(pt_3_c1_enemy_status_12()) == 0x00 && pt_3_c1_enemy_status_12() == 0x01),
                    (prev(pt_3_c1_enemy_status_13()) == 0x00 && pt_3_c1_enemy_status_13() == 0x01),
                    (prev(pt_3_c1_enemy_status_14()) == 0x00 && pt_3_c1_enemy_status_14() == 0x01),
                    (prev(pt_3_c1_enemy_status_15()) == 0x00 && pt_3_c1_enemy_status_15() == 0x01),
                    (prev(pt_3_c1_enemy_status_16()) == 0x00 && pt_3_c1_enemy_status_16() == 0x01),
                    (prev(pt_3_c1_enemy_status_17()) == 0x00 && pt_3_c1_enemy_status_17() == 0x01),
                    (prev(pt_3_c1_enemy_status_18()) == 0x00 && pt_3_c1_enemy_status_18() == 0x01),
                    (prev(pt_3_c1_enemy_status_19()) == 0x00 && pt_3_c1_enemy_status_19() == 0x01),
                    (prev(pt_3_c1_enemy_status_20()) == 0x00 && pt_3_c1_enemy_status_20() == 0x01),
                    (prev(pt_3_c1_enemy_status_21()) == 0x00 && pt_3_c1_enemy_status_21() == 0x01),
                    (prev(pt_3_c1_enemy_status_22()) == 0x00 && pt_3_c1_enemy_status_22() == 0x01),
                    (prev(pt_3_c1_enemy_status_23()) == 0x00 && pt_3_c1_enemy_status_23() == 0x01),
                    (prev(pt_3_c1_enemy_status_24()) == 0x00 && pt_3_c1_enemy_status_24() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x31355F53)) ||
               (measured(tally(4, (prev(pt_3_c2_enemy_status_flag()) == 0x00 && pt_3_c2_enemy_status_flag() == 0x01),
                    (prev(pt_3_c2_enemy_status()) == 0x00 && pt_3_c2_enemy_status() == 0x01),
                    (prev(pt_3_c2_enemy_status_2()) == 0x00 && pt_3_c2_enemy_status_2() == 0x01),
                    (prev(pt_3_c2_enemy_status_3()) == 0x00 && pt_3_c2_enemy_status_3() == 0x01),
                    (prev(pt_3_c2_enemy_status_4()) == 0x00 && pt_3_c2_enemy_status_4() == 0x01),
                    (prev(pt_3_c2_enemy_status_5()) == 0x00 && pt_3_c2_enemy_status_5() == 0x01),
                    (prev(pt_3_c2_enemy_status_6()) == 0x00 && pt_3_c2_enemy_status_6() == 0x01),
                    (prev(pt_3_c2_enemy_status_7()) == 0x00 && pt_3_c2_enemy_status_7() == 0x01),
                    (prev(pt_3_c2_enemy_status_8()) == 0x00 && pt_3_c2_enemy_status_8() == 0x01),
                    (prev(pt_3_c2_enemy_status_9()) == 0x00 && pt_3_c2_enemy_status_9() == 0x01),
                    (prev(pt_3_c2_enemy_status_10()) == 0x00 && pt_3_c2_enemy_status_10() == 0x01),
                    (prev(pt_3_c2_enemy_status_11()) == 0x00 && pt_3_c2_enemy_status_11() == 0x01),
                    (prev(pt_3_c2_enemy_status_12()) == 0x00 && pt_3_c2_enemy_status_12() == 0x01),
                    (prev(pt_3_c2_enemy_status_13()) == 0x00 && pt_3_c2_enemy_status_13() == 0x01),
                    (prev(pt_3_c2_enemy_status_14()) == 0x00 && pt_3_c2_enemy_status_14() == 0x01),
                    (prev(pt_3_c2_enemy_status_15()) == 0x00 && pt_3_c2_enemy_status_15() == 0x01),
                    (prev(pt_3_c2_enemy_status_16()) == 0x00 && pt_3_c2_enemy_status_16() == 0x01),
                    (prev(pt_3_c2_enemy_status_17()) == 0x00 && pt_3_c2_enemy_status_17() == 0x01),
                    (prev(pt_3_c2_enemy_status_18()) == 0x00 && pt_3_c2_enemy_status_18() == 0x01),
                    (prev(pt_3_c2_enemy_status_19()) == 0x00 && pt_3_c2_enemy_status_19() == 0x01),
                    (prev(pt_3_c2_enemy_status_20()) == 0x00 && pt_3_c2_enemy_status_20() == 0x01),
                    (prev(pt_3_c2_enemy_status_21()) == 0x00 && pt_3_c2_enemy_status_21() == 0x01),
                    (prev(pt_3_c2_enemy_status_22()) == 0x00 && pt_3_c2_enemy_status_22() == 0x01),
                    (prev(pt_3_c2_enemy_status_mike_the_cowboy()) == 0x00 &&
                    pt_3_c2_enemy_status_mike_the_cowboy() == 0x01),
                    (prev(pt_3_c2_enemy_status_23()) == 0x00 && pt_3_c2_enemy_status_23() == 0x01),
                    (prev(pt_3_c2_enemy_status_24()) == 0x00 && pt_3_c2_enemy_status_24() == 0x01),
                    (prev(pt_3_c2_enemy_status_25()) == 0x00 && pt_3_c2_enemy_status_25() == 0x01),
                    (prev(pt_3_c2_enemy_status_26()) == 0x00 && pt_3_c2_enemy_status_26() == 0x01),
                    (prev(pt_3_c2_enemy_status_27()) == 0x00 && pt_3_c2_enemy_status_27() == 0x01),
                    (prev(pt_3_c2_enemy_status_28()) == 0x00 && pt_3_c2_enemy_status_28() == 0x01),
                    (prev(pt_3_c2_enemy_status_29()) == 0x00 && pt_3_c2_enemy_status_29() == 0x01),
                    (prev(pt_3_c2_enemy_status_30()) == 0x00 && pt_3_c2_enemy_status_30() == 0x01),
                    (prev(pt_3_c2_enemy_status_31()) == 0x00 && pt_3_c2_enemy_status_31() == 0x01),
                    (prev(pt_3_c2_enemy_status_32()) == 0x00 && pt_3_c2_enemy_status_32() == 0x01),
                    (prev(pt_3_c2_enemy_status_33()) == 0x00 && pt_3_c2_enemy_status_33() == 0x01),
                    (prev(pt_3_c2_enemy_status_34()) == 0x00 && pt_3_c2_enemy_status_34() == 0x01),
                    (prev(pt_3_c2_enemy_status_35()) == 0x00 && pt_3_c2_enemy_status_35() == 0x01),
                    (prev(pt_3_c2_enemy_status_36()) == 0x00 && pt_3_c2_enemy_status_36() == 0x01),
                    (prev(pt_3_c2_enemy_status_37()) == 0x00 && pt_3_c2_enemy_status_37() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x31365F53)) ||
               (measured(tally(4, (prev(pt_3_c3_enemy_status()) == 0x00 && pt_3_c3_enemy_status() == 0x01),
                    (prev(pt_3_c3_enemy_status_2()) == 0x00 && pt_3_c3_enemy_status_2() == 0x01),
                    (prev(pt_3_c3_enemy_status_3()) == 0x00 && pt_3_c3_enemy_status_3() == 0x01),
                    (prev(pt_3_c3_enemy_status_4()) == 0x00 && pt_3_c3_enemy_status_4() == 0x01),
                    (prev(pt_3_c3_enemy_status_5()) == 0x00 && pt_3_c3_enemy_status_5() == 0x01),
                    (prev(pt_3_c3_enemy_status_6()) == 0x00 && pt_3_c3_enemy_status_6() == 0x01),
                    (prev(pt_3_c3_enemy_status_7()) == 0x00 && pt_3_c3_enemy_status_7() == 0x01),
                    (prev(pt_3_c3_enemy_status_8()) == 0x00 && pt_3_c3_enemy_status_8() == 0x01),
                    (prev(pt_3_c3_enemy_status_9()) == 0x00 && pt_3_c3_enemy_status_9() == 0x01),
                    (prev(pt_3_c3_enemy_status_10()) == 0x00 && pt_3_c3_enemy_status_10() == 0x01),
                    (prev(pt_3_c3_enemy_status_11()) == 0x00 && pt_3_c3_enemy_status_11() == 0x01),
                    (prev(pt_3_c3_enemy_status_12()) == 0x00 && pt_3_c3_enemy_status_12() == 0x01),
                    (prev(pt_3_c3_enemy_status_13()) == 0x00 && pt_3_c3_enemy_status_13() == 0x01),
                    (prev(pt_3_c3_enemy_status_14()) == 0x00 && pt_3_c3_enemy_status_14() == 0x01),
                    (prev(pt_3_c3_enemy_status_15()) == 0x00 && pt_3_c3_enemy_status_15() == 0x01),
                    (prev(pt_3_c3_enemy_status_16()) == 0x00 && pt_3_c3_enemy_status_16() == 0x01),
                    (prev(pt_3_c3_enemy_status_17()) == 0x00 && pt_3_c3_enemy_status_17() == 0x01),
                    (prev(pt_3_c3_enemy_status_18()) == 0x00 && pt_3_c3_enemy_status_18() == 0x01),
                    (prev(pt_3_c3_enemy_status_19()) == 0x00 && pt_3_c3_enemy_status_19() == 0x01),
                    (prev(pt_3_c3_enemy_status_20()) == 0x00 && pt_3_c3_enemy_status_20() == 0x01),
                    (prev(pt_3_c3_enemy_status_21()) == 0x00 && pt_3_c3_enemy_status_21() == 0x01))
                ) && unless((chapter_id() != 0x22 || _25_bytes_ascii_location_id() != 0x31375F43))) ||
               (measured(tally(4,
                    (prev(pt_3_c3_continued_enemy_status_flag()) == 0x00 && pt_3_c3_continued_enemy_status_flag() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status()) == 0x00 && pt_3_c3_continued_enemy_status() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_2()) == 0x00 && pt_3_c3_continued_enemy_status_2() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_3()) == 0x00 && pt_3_c3_continued_enemy_status_3() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_4()) == 0x00 && pt_3_c3_continued_enemy_status_4() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_5()) == 0x00 && pt_3_c3_continued_enemy_status_5() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_6()) == 0x00 && pt_3_c3_continued_enemy_status_6() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_7()) == 0x00 && pt_3_c3_continued_enemy_status_7() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_8()) == 0x00 && pt_3_c3_continued_enemy_status_8() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_9()) == 0x00 && pt_3_c3_continued_enemy_status_9() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_10()) == 0x00 && pt_3_c3_continued_enemy_status_10() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_11()) == 0x00 && pt_3_c3_continued_enemy_status_11() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_12()) == 0x00 && pt_3_c3_continued_enemy_status_12() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_13()) == 0x00 && pt_3_c3_continued_enemy_status_13() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_14()) == 0x00 && pt_3_c3_continued_enemy_status_14() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_15()) == 0x00 && pt_3_c3_continued_enemy_status_15() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_16()) == 0x00 && pt_3_c3_continued_enemy_status_16() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_17()) == 0x00 && pt_3_c3_continued_enemy_status_17() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_18()) == 0x00 && pt_3_c3_continued_enemy_status_18() == 0x01),
                    (prev(pt_3_c3_continued_enemy_status_19()) == 0x00 && pt_3_c3_continued_enemy_status_19() == 0x01))
                ) && unless((chapter_id() != 0x16 || _25_bytes_ascii_location_id() != 0x31375F43))) ||
               (measured(tally(4,
                    (prev(pt_1_c4_enemy_status_flag_2()) == 0x00 && pt_1_c4_enemy_status_flag_2() == 0x01),
                    (prev(pt_3_c4_enemy_status()) == 0x00 && pt_3_c4_enemy_status() == 0x01),
                    (prev(pt_3_c4_enemy_status_2()) == 0x00 && pt_3_c4_enemy_status_2() == 0x01),
                    (prev(pt_3_c4_enemy_status_3()) == 0x00 && pt_3_c4_enemy_status_3() == 0x01),
                    (prev(pt_2_c2_enemy_status_4()) == 0x00 && pt_2_c2_enemy_status_4() == 0x01),
                    (prev(pt_2_c2_enemy_status_5()) == 0x00 && pt_2_c2_enemy_status_5() == 0x01),
                    (prev(pt_2_c2_enemy_status_6()) == 0x00 && pt_2_c2_enemy_status_6() == 0x01),
                    (prev(pt_2_c2_enemy_status_7()) == 0x00 && pt_2_c2_enemy_status_7() == 0x01),
                    (prev(pt_2_c2_enemy_status_9()) == 0x00 && pt_2_c2_enemy_status_9() == 0x01),
                    (prev(pt_3_c4_enemy_status_4()) == 0x00 && pt_3_c4_enemy_status_4() == 0x01),
                    (prev(pt_3_c4_enemy_status_5()) == 0x00 && pt_3_c4_enemy_status_5() == 0x01),
                    (prev(pt_3_c4_enemy_status_6()) == 0x00 && pt_3_c4_enemy_status_6() == 0x01),
                    (prev(pt_3_c4_enemy_status_7()) == 0x00 && pt_3_c4_enemy_status_7() == 0x01),
                    (prev(pt_2_c2_enemy_status_10()) == 0x00 && pt_2_c2_enemy_status_10() == 0x01),
                    (prev(pt_3_c4_enemy_status_8()) == 0x00 && pt_3_c4_enemy_status_8() == 0x01),
                    (prev(pt_3_c4_enemy_status_9()) == 0x00 && pt_3_c4_enemy_status_9() == 0x01),
                    (prev(pt_3_c4_enemy_status_10()) == 0x00 && pt_3_c4_enemy_status_10() == 0x01),
                    (prev(pt_3_c4_enemy_status_11()) == 0x00 && pt_3_c4_enemy_status_11() == 0x01),
                    (prev(pt_3_c4_enemy_status_12()) == 0x00 && pt_3_c4_enemy_status_12() == 0x01),
                    (prev(pt_3_c4_enemy_status_13()) == 0x00 && pt_3_c4_enemy_status_13() == 0x01),
                    (prev(pt_3_c4_enemy_status_14()) == 0x00 && pt_3_c4_enemy_status_14() == 0x01),
                    (prev(pt_3_c4_enemy_status_15()) == 0x00 && pt_3_c4_enemy_status_15() == 0x01),
                    (prev(pt_3_c4_enemy_status_16()) == 0x00 && pt_3_c4_enemy_status_16() == 0x01),
                    (prev(pt_3_c4_enemy_status_17()) == 0x00 && pt_3_c4_enemy_status_17() == 0x01),
                    (prev(pt_3_c4_enemy_status_18()) == 0x00 && pt_3_c4_enemy_status_18() == 0x01),
                    (prev(pt_3_c4_enemy_status_19()) == 0x00 && pt_3_c4_enemy_status_19() == 0x01),
                    (prev(pt_3_c4_enemy_status_20()) == 0x00 && pt_3_c4_enemy_status_20() == 0x01),
                    (prev(pt_3_c4_enemy_status_21()) == 0x00 && pt_3_c4_enemy_status_21() == 0x01),
                    (prev(pt_3_c4_enemy_status_22()) == 0x00 && pt_3_c4_enemy_status_22() == 0x01),
                    (prev(pt_3_c4_enemy_status_23()) == 0x00 && pt_3_c4_enemy_status_23() == 0x01),
                    (prev(pt_3_c4_enemy_status_24()) == 0x00 && pt_3_c4_enemy_status_24() == 0x01),
                    (prev(pt_3_c4_enemy_status_25()) == 0x00 && pt_3_c4_enemy_status_25() == 0x01),
                    (prev(pt_3_c4_enemy_status_26()) == 0x00 && pt_3_c4_enemy_status_26() == 0x01),
                    (prev(pt_3_c4_enemy_status_27()) == 0x00 && pt_3_c4_enemy_status_27() == 0x01),
                    (prev(pt_3_c4_enemy_status_28()) == 0x00 && pt_3_c4_enemy_status_28() == 0x01),
                    (prev(pt_3_c4_enemy_status_29()) == 0x00 && pt_3_c4_enemy_status_29() == 0x01))
                ) && unless(_25_bytes_ascii_location_id() != 0x31385F47)) ||
               (measured(tally(4, (prev(pt_3_c7_enemy_status_flag()) == 0x00 && pt_3_c7_enemy_status_flag() == 0x01),
                    (prev(pt_3_c7_enemy_status()) == 0x00 && pt_3_c7_enemy_status() == 0x01),
                    (prev(pt_3_c7_enemy_status_2()) == 0x00 && pt_3_c7_enemy_status_2() == 0x01),
                    (prev(pt_3_c7_enemy_status_3()) == 0x00 && pt_3_c7_enemy_status_3() == 0x01),
                    (prev(pt_3_c7_enemy_status_4()) == 0x00 && pt_3_c7_enemy_status_4() == 0x01),
                    (prev(pt_3_c7_enemy_status_5()) == 0x00 && pt_3_c7_enemy_status_5() == 0x01),
                    (prev(pt_3_c7_enemy_status_6()) == 0x00 && pt_3_c7_enemy_status_6() == 0x01),
                    (prev(pt_3_c7_enemy_status_7()) == 0x00 && pt_3_c7_enemy_status_7() == 0x01),
                    (prev(pt_3_c7_enemy_status_8()) == 0x00 && pt_3_c7_enemy_status_8() == 0x01),
                    (prev(pt_3_c7_enemy_status_9()) == 0x00 && pt_3_c7_enemy_status_9() == 0x01),
                    (prev(pt_3_c7_enemy_status_10()) == 0x00 && pt_3_c7_enemy_status_10() == 0x01),
                    (prev(pt_3_c7_enemy_status_11()) == 0x00 && pt_3_c7_enemy_status_11() == 0x01),
                    (prev(pt_3_c7_enemy_status_12()) == 0x00 && pt_3_c7_enemy_status_12() == 0x01),
                    (prev(pt_3_c7_enemy_status_13()) == 0x00 && pt_3_c7_enemy_status_13() == 0x01),
                    (prev(pt_3_c7_enemy_status_14()) == 0x00 && pt_3_c7_enemy_status_14() == 0x01),
                    (prev(pt_3_c7_enemy_status_15()) == 0x00 && pt_3_c7_enemy_status_15() == 0x01),
                    (prev(pt_3_c7_enemy_status_16()) == 0x00 && pt_3_c7_enemy_status_16() == 0x01),
                    (prev(pt_3_c7_enemy_status_17()) == 0x00 && pt_3_c7_enemy_status_17() == 0x01),
                    (prev(pt_3_c7_enemy_status_18()) == 0x00 && pt_3_c7_enemy_status_18() == 0x01),
                    (prev(pt_3_c7_enemy_status_19()) == 0x00 && pt_3_c7_enemy_status_19() == 0x01),
                    (prev(pt_3_c7_enemy_status_20()) == 0x00 && pt_3_c7_enemy_status_20() == 0x01),
                    (prev(pt_3_c7_enemy_status_21()) == 0x00 && pt_3_c7_enemy_status_21() == 0x01),
                    (prev(pt_3_c7_enemy_status_22()) == 0x00 && pt_3_c7_enemy_status_22() == 0x01),
                    (prev(pt_3_c7_enemy_status_23()) == 0x00 && pt_3_c7_enemy_status_23() == 0x01),
                    (prev(pt_3_c7_enemy_status_24()) == 0x00 && pt_3_c7_enemy_status_24() == 0x01),
                    (prev(pt_3_c7_enemy_status_25()) == 0x00 && pt_3_c7_enemy_status_25() == 0x01),
                    (prev(pt_3_c7_enemy_status_26()) == 0x00 && pt_3_c7_enemy_status_26() == 0x01),
                    (prev(pt_3_c7_enemy_status_27()) == 0x00 && pt_3_c7_enemy_status_27() == 0x01))
                ) && unless(chapter_id() != 0x20)) ||
               (measured(tally(4,
                    (prev(pt_3_c7_continued_enemy_status_flag()) == 0x00 && pt_3_c7_continued_enemy_status_flag() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status()) == 0x00 && pt_3_c7_continued_enemy_status() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_2()) == 0x00 && pt_3_c7_continued_enemy_status_2() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_3()) == 0x00 && pt_3_c7_continued_enemy_status_3() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_4()) == 0x00 && pt_3_c7_continued_enemy_status_4() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_5()) == 0x00 && pt_3_c7_continued_enemy_status_5() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_6()) == 0x00 && pt_3_c7_continued_enemy_status_6() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_7()) == 0x00 && pt_3_c7_continued_enemy_status_7() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_8()) == 0x00 && pt_3_c7_continued_enemy_status_8() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_9()) == 0x00 && pt_3_c7_continued_enemy_status_9() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_10()) == 0x00 && pt_3_c7_continued_enemy_status_10() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_11()) == 0x00 && pt_3_c7_continued_enemy_status_11() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_12()) == 0x00 && pt_3_c7_continued_enemy_status_12() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_13()) == 0x00 && pt_3_c7_continued_enemy_status_13() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_14()) == 0x00 && pt_3_c7_continued_enemy_status_14() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_15()) == 0x00 && pt_3_c7_continued_enemy_status_15() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_16()) == 0x00 && pt_3_c7_continued_enemy_status_16() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_17()) == 0x00 && pt_3_c7_continued_enemy_status_17() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_18()) == 0x00 && pt_3_c7_continued_enemy_status_18() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_19()) == 0x00 && pt_3_c7_continued_enemy_status_19() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_20()) == 0x00 && pt_3_c7_continued_enemy_status_20() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_21()) == 0x00 && pt_3_c7_continued_enemy_status_21() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_22()) == 0x00 && pt_3_c7_continued_enemy_status_22() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_23()) == 0x00 && pt_3_c7_continued_enemy_status_23() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_24()) == 0x00 && pt_3_c7_continued_enemy_status_24() == 0x01),
                    (prev(pt_3_c7_continued_enemy_status_25()) == 0x00 && pt_3_c7_continued_enemy_status_25() == 0x01))
                ) && unless((chapter_id() != 0x22 || _25_bytes_ascii_location_id() != 0x32315F54))) ||
               (measured(tally(4, (prev(pt_3_c8_enemy_status_flag()) == 0x00 && pt_3_c8_enemy_status_flag() == 0x01),
                    (prev(pt_3_c8_enemy_status()) == 0x00 && pt_3_c8_enemy_status() == 0x01),
                    (prev(pt_3_c8_enemy_status_2()) == 0x00 && pt_3_c8_enemy_status_2() == 0x01),
                    (prev(pt_3_c8_enemy_status_3()) == 0x00 && pt_3_c8_enemy_status_3() == 0x01),
                    (prev(pt_3_c8_enemy_status_4()) == 0x00 && pt_3_c8_enemy_status_4() == 0x01),
                    (prev(pt_3_c8_enemy_status_5()) == 0x00 && pt_3_c8_enemy_status_5() == 0x01),
                    (prev(pt_3_c8_enemy_status_6()) == 0x00 && pt_3_c8_enemy_status_6() == 0x01),
                    (prev(pt_3_c8_enemy_status_7()) == 0x00 && pt_3_c8_enemy_status_7() == 0x01),
                    (prev(pt_3_c8_enemy_status_8()) == 0x00 && pt_3_c8_enemy_status_8() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status()) == 0x00 && pt_3_c8_continued_enemy_status() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_2()) == 0x00 && pt_3_c8_continued_enemy_status_2() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_3()) == 0x00 && pt_3_c8_continued_enemy_status_3() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_4()) == 0x00 && pt_3_c8_continued_enemy_status_4() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_5()) == 0x00 && pt_3_c8_continued_enemy_status_5() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_6()) == 0x00 && pt_3_c8_continued_enemy_status_6() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_7()) == 0x00 && pt_3_c8_continued_enemy_status_7() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_8()) == 0x00 && pt_3_c8_continued_enemy_status_8() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_9()) == 0x00 && pt_3_c8_continued_enemy_status_9() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_10()) == 0x00 && pt_3_c8_continued_enemy_status_10() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_11()) == 0x00 && pt_3_c8_continued_enemy_status_11() == 0x01),
                    (prev(pt_3_c8_continued_enemy_status_12()) == 0x00 && pt_3_c8_continued_enemy_status_12() == 0x01))
                ) && unless((chapter_id() != 0x0D || _25_bytes_ascii_location_id() != 0x32315F54))))
)

achievement(
    title = "Straight Shooter", points = 10,
    description = "Kill 75 enemies with firearms in one session on any playthrough",
    id = 546231, badge = "620920", published = "9/23/2025 8:10:14 PM", modified = "9/23/2025 8:38:07 PM",
    trigger = unless(word(player_data() + 0x776) != 0x00) &&
              measured(tally(75,
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_flag()) == 0x00 &&
                  pt_1_c1_enemy_status_flag() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status()) == 0x00 &&
                  pt_1_c1_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_2()) == 0x00 &&
                  pt_1_c1_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_3()) == 0x00 &&
                  pt_1_c1_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_4()) == 0x00 &&
                  pt_1_c1_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_5()) == 0x00 &&
                  pt_1_c1_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_6()) == 0x00 &&
                  pt_1_c1_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_7()) == 0x00 &&
                  pt_1_c1_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_8()) == 0x00 &&
                  pt_1_c1_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_9()) == 0x00 &&
                  pt_1_c1_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_10()) == 0x00 &&
                  pt_1_c1_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_11()) == 0x00 &&
                  pt_1_c1_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_12()) == 0x00 &&
                  pt_1_c1_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_13()) == 0x00 &&
                  pt_1_c1_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_14()) == 0x00 &&
                  pt_1_c1_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_15()) == 0x00 &&
                  pt_1_c1_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30345F57 && prev(pt_1_c1_enemy_status_16()) == 0x00 &&
                  pt_1_c1_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_flag()) == 0x00 &&
                  pt_1_c2_enemy_status_flag() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status()) == 0x00 &&
                  pt_1_c2_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_2()) == 0x00 &&
                  pt_1_c2_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_3()) == 0x00 &&
                  pt_1_c2_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_4()) == 0x00 &&
                  pt_1_c2_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_5()) == 0x00 &&
                  pt_1_c2_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_6()) == 0x00 &&
                  pt_1_c2_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_7()) == 0x00 &&
                  pt_1_c2_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_8()) == 0x00 &&
                  pt_1_c2_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_9()) == 0x00 &&
                  pt_1_c2_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_10()) == 0x00 &&
                  pt_1_c2_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_11()) == 0x00 &&
                  pt_1_c2_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_12()) == 0x00 &&
                  pt_1_c2_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_13()) == 0x00 &&
                  pt_1_c2_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_14()) == 0x00 &&
                  pt_1_c2_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_15()) == 0x00 &&
                  pt_1_c2_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_16()) == 0x00 &&
                  pt_1_c2_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_17()) == 0x00 &&
                  pt_1_c2_enemy_status_17() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_18()) == 0x00 &&
                  pt_1_c2_enemy_status_18() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_19()) == 0x00 &&
                  pt_1_c2_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_20()) == 0x00 &&
                  pt_1_c2_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_21()) == 0x00 &&
                  pt_1_c2_enemy_status_21() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_22()) == 0x00 &&
                  pt_1_c2_enemy_status_22() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_23()) == 0x00 &&
                  pt_1_c2_enemy_status_23() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_24()) == 0x00 &&
                  pt_1_c2_enemy_status_24() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_25()) == 0x00 &&
                  pt_1_c2_enemy_status_25() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_26()) == 0x00 &&
                  pt_1_c2_enemy_status_26() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_27()) == 0x00 &&
                  pt_1_c2_enemy_status_27() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_28()) == 0x00 &&
                  pt_1_c2_enemy_status_28() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x30355F46 && prev(pt_1_c2_enemy_status_29()) == 0x00 &&
                  pt_1_c2_enemy_status_29() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_flag()) == 0x00 && pt_1_c4_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status()) == 0x00 && pt_1_c4_enemy_status() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_2()) == 0x00 && pt_1_c4_enemy_status_2() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_3()) == 0x00 && pt_1_c4_enemy_status_3() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_4()) == 0x00 && pt_1_c4_enemy_status_4() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_flag_2()) == 0x00 && pt_1_c4_enemy_status_flag_2() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_5()) == 0x00 && pt_1_c4_enemy_status_5() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_6()) == 0x00 && pt_1_c4_enemy_status_6() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_7()) == 0x00 && pt_1_c4_enemy_status_7() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_8()) == 0x00 && pt_1_c4_enemy_status_8() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_9()) == 0x00 && pt_1_c4_enemy_status_9() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_enemy_status_10()) == 0x00 && pt_1_c4_enemy_status_10() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_flag()) == 0x00 && pt_1_c4_continued_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status()) == 0x00 && pt_1_c4_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_2()) == 0x00 && pt_1_c4_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_3()) == 0x00 && pt_1_c4_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_4()) == 0x00 && pt_1_c4_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_5()) == 0x00 && pt_1_c4_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_6()) == 0x00 && pt_1_c4_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_7()) == 0x00 && pt_1_c4_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c4_continued_enemy_status_8()) == 0x00 && pt_1_c4_continued_enemy_status_8() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status()) == 0x00 && pt_1_c5_enemy_status() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_2()) == 0x00 && pt_1_c5_enemy_status_2() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_3()) == 0x00 && pt_1_c5_enemy_status_3() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_4()) == 0x00 && pt_1_c5_enemy_status_4() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_5()) == 0x00 && pt_1_c5_enemy_status_5() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_6()) == 0x00 && pt_1_c5_enemy_status_6() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_7()) == 0x00 && pt_1_c5_enemy_status_7() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_8()) == 0x00 && pt_1_c5_enemy_status_8() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_9()) == 0x00 && pt_1_c5_enemy_status_9() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_10()) == 0x00 && pt_1_c5_enemy_status_10() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_11()) == 0x00 && pt_1_c5_enemy_status_11() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_12()) == 0x00 && pt_1_c5_enemy_status_12() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_13()) == 0x00 && pt_1_c5_enemy_status_13() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_14()) == 0x00 && pt_1_c5_enemy_status_14() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_15()) == 0x00 && pt_1_c5_enemy_status_15() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_16()) == 0x00 && pt_1_c5_enemy_status_16() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_17()) == 0x00 && pt_1_c5_enemy_status_17() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_18()) == 0x00 && pt_1_c5_enemy_status_18() == 0x01),
                  (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                  prev(pt_1_c5_enemy_status_19()) == 0x00 && pt_1_c5_enemy_status_19() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_flag()) == 0x00 && pt_1_c7_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status()) == 0x00 && pt_1_c7_enemy_status() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_2()) == 0x00 && pt_1_c7_enemy_status_2() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_3()) == 0x00 && pt_1_c7_enemy_status_3() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_4()) == 0x00 && pt_1_c7_enemy_status_4() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_5()) == 0x00 && pt_1_c7_enemy_status_5() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_6()) == 0x00 && pt_1_c7_enemy_status_6() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_7()) == 0x00 && pt_1_c7_enemy_status_7() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_8()) == 0x00 && pt_1_c7_enemy_status_8() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_9()) == 0x00 && pt_1_c7_enemy_status_9() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_10()) == 0x00 && pt_1_c7_enemy_status_10() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_11()) == 0x00 && pt_1_c7_enemy_status_11() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_12()) == 0x00 && pt_1_c7_enemy_status_12() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_13()) == 0x00 && pt_1_c7_enemy_status_13() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_14()) == 0x00 && pt_1_c7_enemy_status_14() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_15()) == 0x00 && pt_1_c7_enemy_status_15() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_enemy_status_16()) == 0x00 && pt_1_c7_enemy_status_16() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_flag()) == 0x00 && pt_1_c7_continued_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status()) == 0x00 && pt_1_c7_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_2()) == 0x00 && pt_1_c7_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_3()) == 0x00 && pt_1_c7_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_4()) == 0x00 && pt_1_c7_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_5()) == 0x00 && pt_1_c7_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_6()) == 0x00 && pt_1_c7_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_7()) == 0x00 && pt_1_c7_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_8()) == 0x00 && pt_1_c7_continued_enemy_status_8() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_kaufman()) == 0x00 &&
                  pt_1_c7_continued_enemy_status_kaufman() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_9()) == 0x00 && pt_1_c7_continued_enemy_status_9() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_10()) == 0x00 && pt_1_c7_continued_enemy_status_10() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_11()) == 0x00 && pt_1_c7_continued_enemy_status_11() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_12()) == 0x00 && pt_1_c7_continued_enemy_status_12() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_13()) == 0x00 && pt_1_c7_continued_enemy_status_13() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_14()) == 0x00 && pt_1_c7_continued_enemy_status_14() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_15()) == 0x00 && pt_1_c7_continued_enemy_status_15() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_16()) == 0x00 && pt_1_c7_continued_enemy_status_16() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_17()) == 0x00 && pt_1_c7_continued_enemy_status_17() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_18()) == 0x00 && pt_1_c7_continued_enemy_status_18() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_19()) == 0x00 && pt_1_c7_continued_enemy_status_19() == 0x01),
                  (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                  prev(pt_1_c7_continued_enemy_status_20()) == 0x00 && pt_1_c7_continued_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_flag()) == 0x00 &&
                  pt_2_p0_enemy_status_flag() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status()) == 0x00 &&
                  pt_2_p0_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_2()) == 0x00 &&
                  pt_2_p0_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_3()) == 0x00 &&
                  pt_2_p0_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_4()) == 0x00 &&
                  pt_2_p0_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_5()) == 0x00 &&
                  pt_2_p0_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_6()) == 0x00 &&
                  pt_2_p0_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31305F50 && prev(pt_2_p0_enemy_status_7()) == 0x00 &&
                  pt_2_p0_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_flag()) == 0x00 &&
                  pt_2_c1_enemy_status_flag() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status()) == 0x00 &&
                  pt_2_c1_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_2()) == 0x00 &&
                  pt_2_c1_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_3()) == 0x00 &&
                  pt_2_c1_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_4()) == 0x00 &&
                  pt_2_c1_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_5()) == 0x00 &&
                  pt_2_c1_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_6()) == 0x00 &&
                  pt_2_c1_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_7()) == 0x00 &&
                  pt_2_c1_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_8()) == 0x00 &&
                  pt_2_c1_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_9()) == 0x00 &&
                  pt_2_c1_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_10()) == 0x00 &&
                  pt_2_c1_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_11()) == 0x00 &&
                  pt_2_c1_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_12()) == 0x00 &&
                  pt_2_c1_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_13()) == 0x00 &&
                  pt_2_c1_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_14()) == 0x00 &&
                  pt_2_c1_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_15()) == 0x00 &&
                  pt_2_c1_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_16()) == 0x00 &&
                  pt_2_c1_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_17()) == 0x00 &&
                  pt_2_c1_enemy_status_17() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_18()) == 0x00 &&
                  pt_2_c1_enemy_status_18() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_19()) == 0x00 &&
                  pt_2_c1_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_20()) == 0x00 &&
                  pt_2_c1_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_21()) == 0x00 &&
                  pt_2_c1_enemy_status_21() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_22()) == 0x00 &&
                  pt_2_c1_enemy_status_22() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_23()) == 0x00 &&
                  pt_2_c1_enemy_status_23() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_24()) == 0x00 &&
                  pt_2_c1_enemy_status_24() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_25()) == 0x00 &&
                  pt_2_c1_enemy_status_25() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_26()) == 0x00 &&
                  pt_2_c1_enemy_status_26() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_27()) == 0x00 &&
                  pt_2_c1_enemy_status_27() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_28()) == 0x00 &&
                  pt_2_c1_enemy_status_28() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_29()) == 0x00 &&
                  pt_2_c1_enemy_status_29() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_30()) == 0x00 &&
                  pt_2_c1_enemy_status_30() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_31()) == 0x00 &&
                  pt_2_c1_enemy_status_31() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31315F53 && prev(pt_2_c1_enemy_status_32()) == 0x00 &&
                  pt_2_c1_enemy_status_32() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_flag()) == 0x00 && pt_2_c2_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status()) == 0x00 && pt_2_c2_enemy_status() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_2()) == 0x00 && pt_2_c2_enemy_status_2() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_3()) == 0x00 && pt_2_c2_enemy_status_3() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_4()) == 0x00 && pt_2_c2_enemy_status_4() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_5()) == 0x00 && pt_2_c2_enemy_status_5() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_6()) == 0x00 && pt_2_c2_enemy_status_6() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_7()) == 0x00 && pt_2_c2_enemy_status_7() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_8()) == 0x00 && pt_2_c2_enemy_status_8() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_9()) == 0x00 && pt_2_c2_enemy_status_9() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_10()) == 0x00 && pt_2_c2_enemy_status_10() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_11()) == 0x00 && pt_2_c2_enemy_status_11() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_12()) == 0x00 && pt_2_c2_enemy_status_12() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_13()) == 0x00 && pt_2_c2_enemy_status_13() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_14()) == 0x00 && pt_2_c2_enemy_status_14() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_15()) == 0x00 && pt_2_c2_enemy_status_15() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_16()) == 0x00 && pt_2_c2_enemy_status_16() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_17()) == 0x00 && pt_2_c2_enemy_status_17() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_18()) == 0x00 && pt_2_c2_enemy_status_18() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_19()) == 0x00 && pt_2_c2_enemy_status_19() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_20()) == 0x00 && pt_2_c2_enemy_status_20() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_21()) == 0x00 && pt_2_c2_enemy_status_21() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_22()) == 0x00 && pt_2_c2_enemy_status_22() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_23()) == 0x00 && pt_2_c2_enemy_status_23() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_24()) == 0x00 && pt_2_c2_enemy_status_24() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_25()) == 0x00 && pt_2_c2_enemy_status_25() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_26()) == 0x00 && pt_2_c2_enemy_status_26() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_27()) == 0x00 && pt_2_c2_enemy_status_27() == 0x01),
                  (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_enemy_status_28()) == 0x00 && pt_2_c2_enemy_status_28() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_flag()) == 0x00 && pt_2_c2_continued_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status()) == 0x00 && pt_2_c2_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_2()) == 0x00 && pt_2_c2_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_3()) == 0x00 && pt_2_c2_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_4()) == 0x00 && pt_2_c2_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_5()) == 0x00 && pt_2_c2_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_6()) == 0x00 && pt_2_c2_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c2_continued_enemy_status_7()) == 0x00 && pt_2_c2_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_flag()) == 0x00 && pt_2_c3_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status()) == 0x00 && pt_2_c3_enemy_status() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_2()) == 0x00 && pt_2_c3_enemy_status_2() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_3()) == 0x00 && pt_2_c3_enemy_status_3() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_4()) == 0x00 && pt_2_c3_enemy_status_4() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_5()) == 0x00 && pt_2_c3_enemy_status_5() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_6()) == 0x00 && pt_2_c3_enemy_status_6() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_7()) == 0x00 && pt_2_c3_enemy_status_7() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_8()) == 0x00 && pt_2_c3_enemy_status_8() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_9()) == 0x00 && pt_2_c3_enemy_status_9() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_10()) == 0x00 && pt_2_c3_enemy_status_10() == 0x01),
                  (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                  prev(pt_2_c3_enemy_status_11()) == 0x00 && pt_2_c3_enemy_status_11() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_flag()) == 0x00 && pt_2_c4_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status()) == 0x00 && pt_2_c4_enemy_status() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_2()) == 0x00 && pt_2_c4_enemy_status_2() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_3()) == 0x00 && pt_2_c4_enemy_status_3() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_4()) == 0x00 && pt_2_c4_enemy_status_4() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_5()) == 0x00 && pt_2_c4_enemy_status_5() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_6()) == 0x00 && pt_2_c4_enemy_status_6() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_7()) == 0x00 && pt_2_c4_enemy_status_7() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_8()) == 0x00 && pt_2_c4_enemy_status_8() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_9()) == 0x00 && pt_2_c4_enemy_status_9() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_10()) == 0x00 && pt_2_c4_enemy_status_10() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_11()) == 0x00 && pt_2_c4_enemy_status_11() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_12()) == 0x00 && pt_2_c4_enemy_status_12() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_13()) == 0x00 && pt_2_c4_enemy_status_13() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_14()) == 0x00 && pt_2_c4_enemy_status_14() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_15()) == 0x00 && pt_2_c4_enemy_status_15() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_16()) == 0x00 && pt_2_c4_enemy_status_16() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_17()) == 0x00 && pt_2_c4_enemy_status_17() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_18()) == 0x00 && pt_2_c4_enemy_status_18() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_19()) == 0x00 && pt_2_c4_enemy_status_19() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_20()) == 0x00 && pt_2_c4_enemy_status_20() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_21()) == 0x00 && pt_2_c4_enemy_status_21() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_22()) == 0x00 && pt_2_c4_enemy_status_22() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_23()) == 0x00 && pt_2_c4_enemy_status_23() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_24()) == 0x00 && pt_2_c4_enemy_status_24() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_25()) == 0x00 && pt_2_c4_enemy_status_25() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_26()) == 0x00 && pt_2_c4_enemy_status_26() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_27()) == 0x00 && pt_2_c4_enemy_status_27() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_28()) == 0x00 && pt_2_c4_enemy_status_28() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_29()) == 0x00 && pt_2_c4_enemy_status_29() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_30()) == 0x00 && pt_2_c4_enemy_status_30() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_31()) == 0x00 && pt_2_c4_enemy_status_31() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                  prev(pt_2_c4_enemy_status_32()) == 0x00 && pt_2_c4_enemy_status_32() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_flag()) == 0x00 &&
                  pt_2_c5_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status()) == 0x00 && pt_2_c5_enemy_status() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_2()) == 0x00 && pt_2_c5_enemy_status_2() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_3()) == 0x00 && pt_2_c5_enemy_status_3() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_4()) == 0x00 && pt_2_c5_enemy_status_4() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_5()) == 0x00 && pt_2_c5_enemy_status_5() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_6()) == 0x00 && pt_2_c5_enemy_status_6() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_7()) == 0x00 && pt_2_c5_enemy_status_7() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_8()) == 0x00 && pt_2_c5_enemy_status_8() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_9()) == 0x00 && pt_2_c5_enemy_status_9() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_10()) == 0x00 && pt_2_c5_enemy_status_10() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_11()) == 0x00 && pt_2_c5_enemy_status_11() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_12()) == 0x00 && pt_2_c5_enemy_status_12() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_13()) == 0x00 && pt_2_c5_enemy_status_13() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_14()) == 0x00 && pt_2_c5_enemy_status_14() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_15()) == 0x00 && pt_2_c5_enemy_status_15() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_16()) == 0x00 && pt_2_c5_enemy_status_16() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_17()) == 0x00 && pt_2_c5_enemy_status_17() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_18()) == 0x00 && pt_2_c5_enemy_status_18() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_19()) == 0x00 && pt_2_c5_enemy_status_19() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_20()) == 0x00 && pt_2_c5_enemy_status_20() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_21()) == 0x00 && pt_2_c5_enemy_status_21() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_22()) == 0x00 && pt_2_c5_enemy_status_22() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_23()) == 0x00 && pt_2_c5_enemy_status_23() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_24()) == 0x00 && pt_2_c5_enemy_status_24() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_25()) == 0x00 && pt_2_c5_enemy_status_25() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_26()) == 0x00 && pt_2_c5_enemy_status_26() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_27()) == 0x00 && pt_2_c5_enemy_status_27() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_28()) == 0x00 && pt_2_c5_enemy_status_28() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_29()) == 0x00 && pt_2_c5_enemy_status_29() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_30()) == 0x00 && pt_2_c5_enemy_status_30() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_31()) == 0x00 && pt_2_c5_enemy_status_31() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_32()) == 0x00 && pt_2_c5_enemy_status_32() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_33()) == 0x00 && pt_2_c5_enemy_status_33() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_34()) == 0x00 && pt_2_c5_enemy_status_34() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_35()) == 0x00 && pt_2_c5_enemy_status_35() == 0x01),
                  (chapter_id() == 0x28 && prev(pt_2_c5_enemy_status_36()) == 0x00 && pt_2_c5_enemy_status_36() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_flag()) == 0x00 &&
                  pt_2_c6_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status()) == 0x00 && pt_2_c6_enemy_status() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_2()) == 0x00 && pt_2_c6_enemy_status_2() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_3()) == 0x00 && pt_2_c6_enemy_status_3() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_4()) == 0x00 && pt_2_c6_enemy_status_4() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_5()) == 0x00 && pt_2_c6_enemy_status_5() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_6()) == 0x00 && pt_2_c6_enemy_status_6() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_7()) == 0x00 && pt_2_c6_enemy_status_7() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_8()) == 0x00 && pt_2_c6_enemy_status_8() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_9()) == 0x00 && pt_2_c6_enemy_status_9() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_10()) == 0x00 && pt_2_c6_enemy_status_10() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_11()) == 0x00 && pt_2_c6_enemy_status_11() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_12()) == 0x00 && pt_2_c6_enemy_status_12() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_13()) == 0x00 && pt_2_c6_enemy_status_13() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_14()) == 0x00 && pt_2_c6_enemy_status_14() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_15()) == 0x00 && pt_2_c6_enemy_status_15() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_16()) == 0x00 && pt_2_c6_enemy_status_16() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_17()) == 0x00 && pt_2_c6_enemy_status_17() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_18()) == 0x00 && pt_2_c6_enemy_status_18() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_19()) == 0x00 && pt_2_c6_enemy_status_19() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_20()) == 0x00 && pt_2_c6_enemy_status_20() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_21()) == 0x00 && pt_2_c6_enemy_status_21() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_22()) == 0x00 && pt_2_c6_enemy_status_22() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_23()) == 0x00 && pt_2_c6_enemy_status_23() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_24()) == 0x00 && pt_2_c6_enemy_status_24() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_25()) == 0x00 && pt_2_c6_enemy_status_25() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_26()) == 0x00 && pt_2_c6_enemy_status_26() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_27()) == 0x00 && pt_2_c6_enemy_status_27() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_28()) == 0x00 && pt_2_c6_enemy_status_28() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_29()) == 0x00 && pt_2_c6_enemy_status_29() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_30()) == 0x00 && pt_2_c6_enemy_status_30() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_31()) == 0x00 && pt_2_c6_enemy_status_31() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_32()) == 0x00 && pt_2_c6_enemy_status_32() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_33()) == 0x00 && pt_2_c6_enemy_status_33() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_34()) == 0x00 && pt_2_c6_enemy_status_34() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_35()) == 0x00 && pt_2_c6_enemy_status_35() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_36()) == 0x00 && pt_2_c6_enemy_status_36() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_37()) == 0x00 && pt_2_c6_enemy_status_37() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_38()) == 0x00 && pt_2_c6_enemy_status_38() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_39()) == 0x00 && pt_2_c6_enemy_status_39() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_40()) == 0x00 && pt_2_c6_enemy_status_40() == 0x01),
                  (chapter_id() == 0x31 && prev(pt_2_c6_enemy_status_41()) == 0x00 && pt_2_c6_enemy_status_41() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status()) == 0x00 &&
                  pt_3_c1_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_2()) == 0x00 &&
                  pt_3_c1_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_3()) == 0x00 &&
                  pt_3_c1_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_4()) == 0x00 &&
                  pt_3_c1_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_5()) == 0x00 &&
                  pt_3_c1_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_6()) == 0x00 &&
                  pt_3_c1_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_7()) == 0x00 &&
                  pt_3_c1_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_8()) == 0x00 &&
                  pt_3_c1_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_9()) == 0x00 &&
                  pt_3_c1_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_10()) == 0x00 &&
                  pt_3_c1_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_11()) == 0x00 &&
                  pt_3_c1_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_12()) == 0x00 &&
                  pt_3_c1_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_13()) == 0x00 &&
                  pt_3_c1_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_14()) == 0x00 &&
                  pt_3_c1_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_15()) == 0x00 &&
                  pt_3_c1_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_16()) == 0x00 &&
                  pt_3_c1_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_17()) == 0x00 &&
                  pt_3_c1_enemy_status_17() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_18()) == 0x00 &&
                  pt_3_c1_enemy_status_18() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_19()) == 0x00 &&
                  pt_3_c1_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_20()) == 0x00 &&
                  pt_3_c1_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_21()) == 0x00 &&
                  pt_3_c1_enemy_status_21() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_22()) == 0x00 &&
                  pt_3_c1_enemy_status_22() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_23()) == 0x00 &&
                  pt_3_c1_enemy_status_23() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31355F53 && prev(pt_3_c1_enemy_status_24()) == 0x00 &&
                  pt_3_c1_enemy_status_24() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_flag()) == 0x00 &&
                  pt_3_c2_enemy_status_flag() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status()) == 0x00 &&
                  pt_3_c2_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_2()) == 0x00 &&
                  pt_3_c2_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_3()) == 0x00 &&
                  pt_3_c2_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_4()) == 0x00 &&
                  pt_3_c2_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_5()) == 0x00 &&
                  pt_3_c2_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_6()) == 0x00 &&
                  pt_3_c2_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_7()) == 0x00 &&
                  pt_3_c2_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_8()) == 0x00 &&
                  pt_3_c2_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_9()) == 0x00 &&
                  pt_3_c2_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_10()) == 0x00 &&
                  pt_3_c2_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_11()) == 0x00 &&
                  pt_3_c2_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_12()) == 0x00 &&
                  pt_3_c2_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_13()) == 0x00 &&
                  pt_3_c2_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_14()) == 0x00 &&
                  pt_3_c2_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_15()) == 0x00 &&
                  pt_3_c2_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_16()) == 0x00 &&
                  pt_3_c2_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_17()) == 0x00 &&
                  pt_3_c2_enemy_status_17() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_18()) == 0x00 &&
                  pt_3_c2_enemy_status_18() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_19()) == 0x00 &&
                  pt_3_c2_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_20()) == 0x00 &&
                  pt_3_c2_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_21()) == 0x00 &&
                  pt_3_c2_enemy_status_21() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_22()) == 0x00 &&
                  pt_3_c2_enemy_status_22() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_mike_the_cowboy()) == 0x00 &&
                  pt_3_c2_enemy_status_mike_the_cowboy() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_23()) == 0x00 &&
                  pt_3_c2_enemy_status_23() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_24()) == 0x00 &&
                  pt_3_c2_enemy_status_24() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_25()) == 0x00 &&
                  pt_3_c2_enemy_status_25() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_26()) == 0x00 &&
                  pt_3_c2_enemy_status_26() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_27()) == 0x00 &&
                  pt_3_c2_enemy_status_27() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_28()) == 0x00 &&
                  pt_3_c2_enemy_status_28() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_29()) == 0x00 &&
                  pt_3_c2_enemy_status_29() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_30()) == 0x00 &&
                  pt_3_c2_enemy_status_30() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_31()) == 0x00 &&
                  pt_3_c2_enemy_status_31() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_32()) == 0x00 &&
                  pt_3_c2_enemy_status_32() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_33()) == 0x00 &&
                  pt_3_c2_enemy_status_33() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_34()) == 0x00 &&
                  pt_3_c2_enemy_status_34() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_35()) == 0x00 &&
                  pt_3_c2_enemy_status_35() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_36()) == 0x00 &&
                  pt_3_c2_enemy_status_36() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31365F53 && prev(pt_3_c2_enemy_status_37()) == 0x00 &&
                  pt_3_c2_enemy_status_37() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status()) == 0x00 && pt_3_c3_enemy_status() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_2()) == 0x00 && pt_3_c3_enemy_status_2() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_3()) == 0x00 && pt_3_c3_enemy_status_3() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_4()) == 0x00 && pt_3_c3_enemy_status_4() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_5()) == 0x00 && pt_3_c3_enemy_status_5() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_6()) == 0x00 && pt_3_c3_enemy_status_6() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_7()) == 0x00 && pt_3_c3_enemy_status_7() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_8()) == 0x00 && pt_3_c3_enemy_status_8() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_9()) == 0x00 && pt_3_c3_enemy_status_9() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_10()) == 0x00 && pt_3_c3_enemy_status_10() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_11()) == 0x00 && pt_3_c3_enemy_status_11() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_12()) == 0x00 && pt_3_c3_enemy_status_12() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_13()) == 0x00 && pt_3_c3_enemy_status_13() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_14()) == 0x00 && pt_3_c3_enemy_status_14() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_15()) == 0x00 && pt_3_c3_enemy_status_15() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_16()) == 0x00 && pt_3_c3_enemy_status_16() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_17()) == 0x00 && pt_3_c3_enemy_status_17() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_18()) == 0x00 && pt_3_c3_enemy_status_18() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_19()) == 0x00 && pt_3_c3_enemy_status_19() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_20()) == 0x00 && pt_3_c3_enemy_status_20() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_enemy_status_21()) == 0x00 && pt_3_c3_enemy_status_21() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_flag()) == 0x00 && pt_3_c3_continued_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status()) == 0x00 && pt_3_c3_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_2()) == 0x00 && pt_3_c3_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_3()) == 0x00 && pt_3_c3_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_4()) == 0x00 && pt_3_c3_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_5()) == 0x00 && pt_3_c3_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_6()) == 0x00 && pt_3_c3_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_7()) == 0x00 && pt_3_c3_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_8()) == 0x00 && pt_3_c3_continued_enemy_status_8() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_9()) == 0x00 && pt_3_c3_continued_enemy_status_9() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_10()) == 0x00 && pt_3_c3_continued_enemy_status_10() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_11()) == 0x00 && pt_3_c3_continued_enemy_status_11() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_12()) == 0x00 && pt_3_c3_continued_enemy_status_12() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_13()) == 0x00 && pt_3_c3_continued_enemy_status_13() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_14()) == 0x00 && pt_3_c3_continued_enemy_status_14() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_15()) == 0x00 && pt_3_c3_continued_enemy_status_15() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_16()) == 0x00 && pt_3_c3_continued_enemy_status_16() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_17()) == 0x00 && pt_3_c3_continued_enemy_status_17() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_18()) == 0x00 && pt_3_c3_continued_enemy_status_18() == 0x01),
                  (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                  prev(pt_3_c3_continued_enemy_status_19()) == 0x00 && pt_3_c3_continued_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_1_c4_enemy_status_flag_2()) == 0x00 &&
                  pt_1_c4_enemy_status_flag_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status()) == 0x00 &&
                  pt_3_c4_enemy_status() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_2()) == 0x00 &&
                  pt_3_c4_enemy_status_2() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_3()) == 0x00 &&
                  pt_3_c4_enemy_status_3() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_4()) == 0x00 &&
                  pt_2_c2_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_5()) == 0x00 &&
                  pt_2_c2_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_6()) == 0x00 &&
                  pt_2_c2_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_7()) == 0x00 &&
                  pt_2_c2_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_9()) == 0x00 &&
                  pt_2_c2_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_4()) == 0x00 &&
                  pt_3_c4_enemy_status_4() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_5()) == 0x00 &&
                  pt_3_c4_enemy_status_5() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_6()) == 0x00 &&
                  pt_3_c4_enemy_status_6() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_7()) == 0x00 &&
                  pt_3_c4_enemy_status_7() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_2_c2_enemy_status_10()) == 0x00 &&
                  pt_2_c2_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_8()) == 0x00 &&
                  pt_3_c4_enemy_status_8() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_9()) == 0x00 &&
                  pt_3_c4_enemy_status_9() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_10()) == 0x00 &&
                  pt_3_c4_enemy_status_10() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_11()) == 0x00 &&
                  pt_3_c4_enemy_status_11() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_12()) == 0x00 &&
                  pt_3_c4_enemy_status_12() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_13()) == 0x00 &&
                  pt_3_c4_enemy_status_13() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_14()) == 0x00 &&
                  pt_3_c4_enemy_status_14() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_15()) == 0x00 &&
                  pt_3_c4_enemy_status_15() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_16()) == 0x00 &&
                  pt_3_c4_enemy_status_16() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_17()) == 0x00 &&
                  pt_3_c4_enemy_status_17() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_18()) == 0x00 &&
                  pt_3_c4_enemy_status_18() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_19()) == 0x00 &&
                  pt_3_c4_enemy_status_19() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_20()) == 0x00 &&
                  pt_3_c4_enemy_status_20() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_21()) == 0x00 &&
                  pt_3_c4_enemy_status_21() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_22()) == 0x00 &&
                  pt_3_c4_enemy_status_22() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_23()) == 0x00 &&
                  pt_3_c4_enemy_status_23() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_24()) == 0x00 &&
                  pt_3_c4_enemy_status_24() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_25()) == 0x00 &&
                  pt_3_c4_enemy_status_25() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_26()) == 0x00 &&
                  pt_3_c4_enemy_status_26() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_27()) == 0x00 &&
                  pt_3_c4_enemy_status_27() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_28()) == 0x00 &&
                  pt_3_c4_enemy_status_28() == 0x01),
                  (_25_bytes_ascii_location_id() == 0x31385F47 && prev(pt_3_c4_enemy_status_29()) == 0x00 &&
                  pt_3_c4_enemy_status_29() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_flag()) == 0x00 &&
                  pt_3_c7_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status()) == 0x00 && pt_3_c7_enemy_status() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_2()) == 0x00 && pt_3_c7_enemy_status_2() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_3()) == 0x00 && pt_3_c7_enemy_status_3() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_4()) == 0x00 && pt_3_c7_enemy_status_4() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_5()) == 0x00 && pt_3_c7_enemy_status_5() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_6()) == 0x00 && pt_3_c7_enemy_status_6() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_7()) == 0x00 && pt_3_c7_enemy_status_7() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_8()) == 0x00 && pt_3_c7_enemy_status_8() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_9()) == 0x00 && pt_3_c7_enemy_status_9() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_10()) == 0x00 && pt_3_c7_enemy_status_10() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_11()) == 0x00 && pt_3_c7_enemy_status_11() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_12()) == 0x00 && pt_3_c7_enemy_status_12() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_13()) == 0x00 && pt_3_c7_enemy_status_13() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_14()) == 0x00 && pt_3_c7_enemy_status_14() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_15()) == 0x00 && pt_3_c7_enemy_status_15() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_16()) == 0x00 && pt_3_c7_enemy_status_16() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_17()) == 0x00 && pt_3_c7_enemy_status_17() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_18()) == 0x00 && pt_3_c7_enemy_status_18() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_19()) == 0x00 && pt_3_c7_enemy_status_19() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_20()) == 0x00 && pt_3_c7_enemy_status_20() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_21()) == 0x00 && pt_3_c7_enemy_status_21() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_22()) == 0x00 && pt_3_c7_enemy_status_22() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_23()) == 0x00 && pt_3_c7_enemy_status_23() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_24()) == 0x00 && pt_3_c7_enemy_status_24() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_25()) == 0x00 && pt_3_c7_enemy_status_25() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_26()) == 0x00 && pt_3_c7_enemy_status_26() == 0x01),
                  (chapter_id() == 0x20 && prev(pt_3_c7_enemy_status_27()) == 0x00 && pt_3_c7_enemy_status_27() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_flag()) == 0x00 && pt_3_c7_continued_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status()) == 0x00 && pt_3_c7_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_2()) == 0x00 && pt_3_c7_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_3()) == 0x00 && pt_3_c7_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_4()) == 0x00 && pt_3_c7_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_5()) == 0x00 && pt_3_c7_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_6()) == 0x00 && pt_3_c7_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_7()) == 0x00 && pt_3_c7_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_8()) == 0x00 && pt_3_c7_continued_enemy_status_8() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_9()) == 0x00 && pt_3_c7_continued_enemy_status_9() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_10()) == 0x00 && pt_3_c7_continued_enemy_status_10() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_11()) == 0x00 && pt_3_c7_continued_enemy_status_11() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_12()) == 0x00 && pt_3_c7_continued_enemy_status_12() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_13()) == 0x00 && pt_3_c7_continued_enemy_status_13() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_14()) == 0x00 && pt_3_c7_continued_enemy_status_14() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_15()) == 0x00 && pt_3_c7_continued_enemy_status_15() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_16()) == 0x00 && pt_3_c7_continued_enemy_status_16() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_17()) == 0x00 && pt_3_c7_continued_enemy_status_17() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_18()) == 0x00 && pt_3_c7_continued_enemy_status_18() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_19()) == 0x00 && pt_3_c7_continued_enemy_status_19() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_20()) == 0x00 && pt_3_c7_continued_enemy_status_20() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_21()) == 0x00 && pt_3_c7_continued_enemy_status_21() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_22()) == 0x00 && pt_3_c7_continued_enemy_status_22() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_23()) == 0x00 && pt_3_c7_continued_enemy_status_23() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_24()) == 0x00 && pt_3_c7_continued_enemy_status_24() == 0x01),
                  (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c7_continued_enemy_status_25()) == 0x00 && pt_3_c7_continued_enemy_status_25() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_flag()) == 0x00 && pt_3_c8_enemy_status_flag() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status()) == 0x00 && pt_3_c8_enemy_status() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_2()) == 0x00 && pt_3_c8_enemy_status_2() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_3()) == 0x00 && pt_3_c8_enemy_status_3() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_4()) == 0x00 && pt_3_c8_enemy_status_4() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_5()) == 0x00 && pt_3_c8_enemy_status_5() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_6()) == 0x00 && pt_3_c8_enemy_status_6() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_7()) == 0x00 && pt_3_c8_enemy_status_7() == 0x01),
                  (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_enemy_status_8()) == 0x00 && pt_3_c8_enemy_status_8() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status()) == 0x00 && pt_3_c8_continued_enemy_status() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_2()) == 0x00 && pt_3_c8_continued_enemy_status_2() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_3()) == 0x00 && pt_3_c8_continued_enemy_status_3() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_4()) == 0x00 && pt_3_c8_continued_enemy_status_4() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_5()) == 0x00 && pt_3_c8_continued_enemy_status_5() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_6()) == 0x00 && pt_3_c8_continued_enemy_status_6() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_7()) == 0x00 && pt_3_c8_continued_enemy_status_7() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_8()) == 0x00 && pt_3_c8_continued_enemy_status_8() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_9()) == 0x00 && pt_3_c8_continued_enemy_status_9() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_10()) == 0x00 && pt_3_c8_continued_enemy_status_10() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_11()) == 0x00 && pt_3_c8_continued_enemy_status_11() == 0x01),
                  (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                  prev(pt_3_c8_continued_enemy_status_12()) == 0x00 && pt_3_c8_continued_enemy_status_12() == 0x01))
              ) &&
              (always_false() || (never(_10_bytes_ascii_us_serial() == 0x00)))
)

leaderboard(
    id = 140269, title = "Part I: Prologue",
    description = "Fastest time to finish Part I: Prologue",
    start  = (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30335F46 &&
                 new_york_minute_time_part_i_prologue() > 5.0 &&
                 new_york_minute_part_i_prologue_record_submitted() <
                 prev(new_york_minute_part_i_prologue_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30335F46 &&
                 new_york_minute_time_part_i_prologue() > 5.0 &&
                 new_york_minute_part_i_prologue_record_submitted() <
                 prev(new_york_minute_part_i_prologue_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_prologue()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140270, title = "Part I: Chapter 1",
    description = "Fastest time to finish Part I: Chapter 1",
    start  = (chapter_id() == 0x19 && _25_bytes_ascii_location_id() == 0x30345F57 &&
                 new_york_minute_time_part_i_chapter_1() > 5.0 &&
                 new_york_minute_part_i_chapter_1_record_submitted() <
                 prev(new_york_minute_part_i_chapter_1_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x19 && _25_bytes_ascii_location_id() == 0x30345F57 &&
                 new_york_minute_time_part_i_chapter_1() > 5.0 &&
                 new_york_minute_part_i_chapter_1_record_submitted() <
                 prev(new_york_minute_part_i_chapter_1_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_1()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140271, title = "Part I: Chapter 2",
    description = "Fastest time to finish Part I: Chapter 2",
    start  = (chapter_id() == 0x2A && _25_bytes_ascii_location_id() == 0x30355F46 &&
                 new_york_minute_time_part_i_chapter_2() > 5.0 &&
                 new_york_minute_part_i_chapter_2_record_submitted() <
                 prev(new_york_minute_part_i_chapter_2_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x2A && _25_bytes_ascii_location_id() == 0x30355F46 &&
                 new_york_minute_time_part_i_chapter_2() > 5.0 &&
                 new_york_minute_part_i_chapter_2_record_submitted() <
                 prev(new_york_minute_part_i_chapter_2_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_2()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140272, title = "Part I: Chapter 3",
    description = "Fastest time to finish Part I: Chapter 3",
    start  = (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30365F46 &&
                 new_york_minute_time_part_i_chapter_3() > 5.0 &&
                 new_york_minute_part_i_chapter_3_record_submitted() <
                 prev(new_york_minute_part_i_chapter_3_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30365F46 &&
                 new_york_minute_time_part_i_chapter_3() > 5.0 &&
                 new_york_minute_part_i_chapter_3_record_submitted() <
                 prev(new_york_minute_part_i_chapter_3_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_3()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140273, title = "Part I: Chapter 4",
    description = "Fastest time to finish Part I: Chapter 4",
    start  = (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_4() > 5.0 &&
                 new_york_minute_part_i_chapter_4_record_submitted() <
                 prev(new_york_minute_part_i_chapter_4_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_4() > 5.0 &&
                 new_york_minute_part_i_chapter_4_record_submitted() <
                 prev(new_york_minute_part_i_chapter_4_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_4()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140274, title = "Part I: Chapter 4 Continued",
    description = "Fastest time to finish Part I: Chapter 4 Continued",
    start  = (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_4_continued() > 5.0 &&
                 new_york_minute_part_i_chapter_4_continued_record_submitted() <
                 prev(new_york_minute_part_i_chapter_4_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_4_continued() > 5.0 &&
                 new_york_minute_part_i_chapter_4_continued_record_submitted() <
                 prev(new_york_minute_part_i_chapter_4_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_4_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140275, title = "Part I: Chapter 5",
    description = "Fastest time to finish Part I: Chapter 5",
    start  = (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_5() > 5.0 &&
                 new_york_minute_part_i_chapter_5_record_submitted() <
                 prev(new_york_minute_part_i_chapter_5_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D &&
                 new_york_minute_time_part_i_chapter_5() > 5.0 &&
                 new_york_minute_part_i_chapter_5_record_submitted() <
                 prev(new_york_minute_part_i_chapter_5_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_5()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140276, title = "Part I: Chapter 6",
    description = "Fastest time to finish Part I: Chapter 6",
    start  = (chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x30385F46 &&
                 new_york_minute_time_part_i_chapter_6() > 5.0 &&
                 new_york_minute_part_i_chapter_6_record_submitted() <
                 prev(new_york_minute_part_i_chapter_6_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x30385F46 &&
                 new_york_minute_time_part_i_chapter_6() > 5.0 &&
                 new_york_minute_part_i_chapter_6_record_submitted() <
                 prev(new_york_minute_part_i_chapter_6_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_6()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140277, title = "Part I: Chapter 7",
    description = "Fastest time to finish Part I: Chapter 7",
    start  = (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                 new_york_minute_time_part_i_chapter_7() > 5.0 &&
                 new_york_minute_part_i_chapter_7_record_submitted() <
                 prev(new_york_minute_part_i_chapter_7_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55 &&
                 new_york_minute_time_part_i_chapter_7() > 5.0 &&
                 new_york_minute_part_i_chapter_7_record_submitted() <
                 prev(new_york_minute_part_i_chapter_7_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_7()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140278, title = "Part I: Chapter 7 Continued",
    description = "Fastest time to finish Part I: Chapter 7 Continued",
    start  = (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                 new_york_minute_time_part_i_chapter_7_continued() > 5.0 &&
                 new_york_minute_part_i_chapter_7_continued_record_submitted() <
                 prev(new_york_minute_part_i_chapter_7_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55 &&
                 new_york_minute_time_part_i_chapter_7_continued() > 5.0 &&
                 new_york_minute_part_i_chapter_7_continued_record_submitted() <
                 prev(new_york_minute_part_i_chapter_7_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_i_chapter_7_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140279, title = "Part II: Prologue",
    description = "Fastest time to finish Part II: Prologue",
    start  = (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x31305F50 &&
                 new_york_minute_time_part_ii_prologue() > 5.0 &&
                 new_york_minute_part_ii_prolouge_record_submitted() <
                 prev(new_york_minute_part_ii_prolouge_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x31305F50 &&
                 new_york_minute_time_part_ii_prologue() > 5.0 &&
                 new_york_minute_part_ii_prolouge_record_submitted() <
                 prev(new_york_minute_part_ii_prolouge_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_prologue()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140280, title = "Part II: Chapter 1",
    description = "Fastest time to finish Part II: Chapter 1",
    start  = (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31315F53 &&
                 new_york_minute_time_part_ii_chapter_1() > 5.0 &&
                 new_york_minute_part_ii_chapter_1_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_1_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31315F53 &&
                 new_york_minute_time_part_ii_chapter_1() > 5.0 &&
                 new_york_minute_part_ii_chapter_1_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_1_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_1()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140281, title = "Part II: Chapter 2",
    description = "Fastest time to finish Part II: Chapter 2",
    start  = (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_2() > 5.0 &&
                 new_york_minute_part_ii_chapter_2_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_2_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_2() > 5.0 &&
                 new_york_minute_part_ii_chapter_2_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_2_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_2()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140282, title = "Part II: Chapter 2 Continued",
    description = "Fastest time to finish Part II: Chapter 2 Continued",
    start  = (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_2_continued() > 5.0 &&
                 new_york_minute_part_ii_chapter_2_continued_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_2_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_2_continued() > 5.0 &&
                 new_york_minute_part_ii_chapter_2_continued_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_2_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_2_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140283, title = "Part II: Chapter 3",
    description = "Fastest time to finish Part II: Chapter 3",
    start  = (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_3() > 5.0 &&
                 new_york_minute_part_ii_chapter_3_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_3_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43 &&
                 new_york_minute_time_part_ii_chapter_3() > 5.0 &&
                 new_york_minute_part_ii_chapter_3_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_3_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_3()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140284, title = "Part II: Chapter 4",
    description = "Fastest time to finish Part II: Chapter 4",
    start  = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_4() > 5.0 &&
                 new_york_minute_part_ii_chapter_4_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_4_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_4() > 5.0 &&
                 new_york_minute_part_ii_chapter_4_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_4_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_4()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140285, title = "Part II: Chapter 5",
    description = "Fastest time to finish Part II: Chapter 5",
    start  = (chapter_id() == 0x28 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_5() > 5.0 &&
                 new_york_minute_part_ii_chapter_5_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_5_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x28 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_5() > 5.0 &&
                 new_york_minute_part_ii_chapter_5_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_5_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_5()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140286, title = "Part II: Chapter 6",
    description = "Fastest time to finish Part II: Chapter 6",
    start  = (chapter_id() == 0x31 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_6() > 5.0 &&
                 new_york_minute_part_ii_chapter_6_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_6_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x31 && _25_bytes_ascii_location_id() == 0x31335F43 &&
                 new_york_minute_time_part_ii_chapter_6() > 5.0 &&
                 new_york_minute_part_ii_chapter_6_record_submitted() <
                 prev(new_york_minute_part_ii_chapter_6_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_ii_chapter_6()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140287, title = "Part III: Prologue",
    description = "Fastest time to finish Part III: Prologue",
    start  = (chapter_id() == 0x0F && _25_bytes_ascii_location_id() == 0x31345F53 &&
                 new_york_minute_time_part_iii_prologue() > 5.0 &&
                 new_york_minute_part_iii_prologue_record_submitted() <
                 prev(new_york_minute_part_iii_prologue_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0F && _25_bytes_ascii_location_id() == 0x31345F53 &&
                 new_york_minute_time_part_iii_prologue() > 5.0 &&
                 new_york_minute_part_iii_prologue_record_submitted() <
                 prev(new_york_minute_part_iii_prologue_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_prologue()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140288, title = "Part III: Chapter 1",
    description = "Fastest time to finish Part III: Chapter 1",
    start  = (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x31355F53 &&
                 new_york_minute_time_part_iii_chapter_1() > 5.0 &&
                 new_york_minute_part_iii_chapter_1_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_1_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x31355F53 &&
                 new_york_minute_time_part_iii_chapter_1() > 5.0 &&
                 new_york_minute_part_iii_chapter_1_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_1_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_1()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140289, title = "Part III: Chapter 2",
    description = "Fastest time to finish Part III: Chapter 2",
    start  = (chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31365F53 &&
                 new_york_minute_time_part_iii_chapter_2() > 5.0 &&
                 new_york_minute_part_iii_chapter_2_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_2_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31365F53 &&
                 new_york_minute_time_part_iii_chapter_2() > 5.0 &&
                 new_york_minute_part_iii_chapter_2_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_2_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_2()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140290, title = "Part III: Chapter 3",
    description = "Fastest time to finish Part III: Chapter 3",
    start  = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                 new_york_minute_time_part_iii_chapter_3() > 5.0 &&
                 new_york_minute_part_iii_chapter_3_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_3_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                 new_york_minute_time_part_iii_chapter_3() > 5.0 &&
                 new_york_minute_part_iii_chapter_3_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_3_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_3()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140291, title = "Part III: Chapter 3 Continued",
    description = "Fastest time to finish Part III: Chapter 3 Continued",
    start  = (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                 new_york_minute_time_part_iii_chapter_3_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_3_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_3_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43 &&
                 new_york_minute_time_part_iii_chapter_3_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_3_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_3_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_3_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140292, title = "Part III: Chapter 4",
    description = "Fastest time to finish Part III: Chapter 4",
    start  = (chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31385F47 &&
                 new_york_minute_time_part_iii_chapter_4() > 5.0 &&
                 new_york_minute_part_iii_chapter_4_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_4_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31385F47 &&
                 new_york_minute_time_part_iii_chapter_4() > 5.0 &&
                 new_york_minute_part_iii_chapter_4_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_4_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_4()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140293, title = "Part III: Chapter 5",
    description = "Fastest time to finish Part III: Chapter 5",
    start  = (chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x31395F54 &&
                 new_york_minute_time_part_iii_chapter_5() > 5.0 &&
                 new_york_minute_part_iii_chapter_5_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_5_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x31395F54 &&
                 new_york_minute_time_part_iii_chapter_5() > 5.0 &&
                 new_york_minute_part_iii_chapter_5_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_5_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_5()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140294, title = "Part III: Chapter 6",
    description = "Fastest time to finish Part III: Chapter 6",
    start  = (chapter_id() == 0x0A && _25_bytes_ascii_location_id() == 0x32305F54 &&
                 new_york_minute_time_part_iii_chapter_6() > 5.0 &&
                 new_york_minute_part_iii_chapter_6_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_6_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0A && _25_bytes_ascii_location_id() == 0x32305F54 &&
                 new_york_minute_time_part_iii_chapter_6() > 5.0 &&
                 new_york_minute_part_iii_chapter_6_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_6_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_6()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140295, title = "Part III: Chapter 7",
    description = "Fastest time to finish Part III: Chapter 7",
    start  = (chapter_id() == 0x20 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_7() > 5.0 &&
                 new_york_minute_part_iii_chapter_7_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_7_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x20 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_7() > 5.0 &&
                 new_york_minute_part_iii_chapter_7_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_7_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_7()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140296, title = "Part III: Chapter 7 Continued",
    description = "Fastest time to finish Part III: Chapter 7 Continued",
    start  = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_7_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_7_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_7_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_7_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_7_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_7_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_7_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140297, title = "Part III: Chapter 8",
    description = "Fastest time to finish Part III: Chapter 8",
    start  = (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_8() > 5.0 &&
                 new_york_minute_part_iii_chapter_8_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_8_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_8() > 5.0 &&
                 new_york_minute_part_iii_chapter_8_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_8_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_8()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140298, title = "Part III: Chapter 8 Continued",
    description = "Fastest time to finish Part III: Chapter 8 Continued",
    start  = (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_8_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_8_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_8_continued_record_submitted())
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54 &&
                 new_york_minute_time_part_iii_chapter_8_continued() > 5.0 &&
                 new_york_minute_part_iii_chapter_8_continued_record_submitted() <
                 prev(new_york_minute_part_iii_chapter_8_continued_record_submitted())
             ),
    value  = measured(new_york_minute_time_part_iii_chapter_8_continued()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 140299, title = "Dead Man Walking: Manor Yard",
    description = "Longest time survived in Manor Yard",
    start  = (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                 dead_man_walking_manor_yard_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53 &&
                 dead_man_walking_manor_yard_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    value  = measured(dead_man_walking_manor_yard_time()),
    format = "SECS"
)

leaderboard(
    id = 140300, title = "Dead Man Walking: Construction Site",
    description = "Longest time survived in Construction Site",
    start  = (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                 dead_man_walking_construction_site_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53 &&
                 dead_man_walking_construction_site_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    value  = measured(dead_man_walking_construction_site_time()),
    format = "SECS"
)

leaderboard(
    id = 140301, title = "Dead Man Walking: Manor Garden",
    description = "Longest time survived in Manor Garden",
    start  = (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                 dead_man_walking_manor_garden_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53 &&
                 dead_man_walking_manor_garden_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    value  = measured(dead_man_walking_manor_garden_time()),
    format = "SECS"
)

leaderboard(
    id = 140302, title = "Dead Man Walking: Used Car Lot",
    description = "Longest time survived in Used Car Lot",
    start  = (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                 dead_man_walking_used_car_lot_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53 &&
                 dead_man_walking_used_car_lot_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    value  = measured(dead_man_walking_used_car_lot_time()),
    format = "SECS"
)

leaderboard(
    id = 140303, title = "Dead Man Walking: Scaffolding",
    description = "Longest time survived in Scaffolding",
    start  = (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                 dead_man_walking_scaffolding_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    cancel = game_state_2() == 0x00,
    submit = (chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53 &&
                 dead_man_walking_scaffolding_time() > 5.0 && prev(player_health()) >= 1.0 &&
                 prev(player_health()) <= 260.0 && player_health() == 0.0
             ),
    value  = measured(dead_man_walking_scaffolding_time()),
    format = "SECS"
)

rich_presence_conditional_display(game_state() == 0x01, "In the menus")

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30335F46), "Part I: Prologue • New York Memorial Hospital • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x19 && _25_bytes_ascii_location_id() == 0x30345F57), "Part I: Chapter 1 • Lem's Warehouse • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x2A && _25_bytes_ascii_location_id() == 0x30355F46), "Part I: Chapter 2 • Vodka Restaurant • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30365F46), "Part I: Chapter 3 • Max Payne's Nightmare • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D), "Part I: Chapter 4 • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D), "Part I: Chapter 4 Continued • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D), "Part I: Chapter 5 • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x30385F46), "Part I: Chapter 6 • Address Unknown • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55), "Part I: Chapter 7 • Upper East Side • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55), "Part I: Chapter 7 Continued • Upper East Side • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x31305F50), "Part II: Prologue • NYPD Police Station • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31315F53), "Part II: Chapter 1 • Address Unknown Funhouse • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43), "Part II: Chapter 2 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43), "Part II: Chapter 2 Continued • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43), "Part II: Chapter 3 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43), "Part II: Chapter 4 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x28 && _25_bytes_ascii_location_id() == 0x31335F43), "Part II: Chapter 5 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x31 && _25_bytes_ascii_location_id() == 0x31335F43), "Part II: Chapter 6 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x0F && _25_bytes_ascii_location_id() == 0x31345F53), "Part III: Prologue • {0} • Health: {1} • Painkillers: {2} • Weapon: {3} • Difficulty: {4}",
    rich_presence_lookup("P3P0", current_player_location(), P3P0Lookup),
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x31355F53), "Part III: Chapter 1 • New York Memorial Hospital • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31365F53), "Part III: Chapter 2 • Vodka Restaurant • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43), "Part III: Chapter 3 • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43), "Part III: Chapter 3 Continued • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31385F47), "Part III: Chapter 4 • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x31395F54), "Part III: Chapter 5 • Address Unknown Funhouse • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x0A && _25_bytes_ascii_location_id() == 0x32305F54), "Part III: Chapter 6 • Max Payne's Nightmare • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x20 && _25_bytes_ascii_location_id() == 0x32315F54), "Part III: Chapter 7 • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54), "Part III: Chapter 7 Continued • Woden's Manor • Health: {0} • Painkillers: {1} • Painkillers: {2} • Weapon: {3} • Difficulty: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54), "Part III: Chapter 8 • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((difficulty() != 0x04 && chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54), "Part III: Chapter 8 Continued • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • Difficulty: {3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup)
)

rich_presence_conditional_display((chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30335F46), "New York Minute: Part I: Prologue • New York Memorial Hospital • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_prologue(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x19 && _25_bytes_ascii_location_id() == 0x30345F57), "New York Minute: Part I: Chapter 1 • Lem's Warehouse • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_1(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x2A && _25_bytes_ascii_location_id() == 0x30355F46), "New York Minute: Part I: Chapter 2 • Vodka Restaurant • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_2(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30365F46), "New York Minute: Part I: Chapter 3 • Max Payne's Nightmare • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_3(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x30375F4D), "New York Minute: Part I: Chapter 4 • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_4(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x30375F4D), "New York Minute: Part I: Chapter 4 Continued • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_4_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x30375F4D), "New York Minute: Part I: Chapter 5 • Max Payne's Apartment • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_5(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x30385F46), "New York Minute: Part I: Chapter 6 • Address Unknown • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_6(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x30395F55), "New York Minute: Part I: Chapter 7 • Upper East Side • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_7(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x1D && _25_bytes_ascii_location_id() == 0x30395F55), "New York Minute: Part I: Chapter 7 Continued • Upper East Side • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_i_chapter_7_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x31305F50), "New York Minute: Part II: Prologue • NYPD Police Station • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_prologue(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31315F53), "New York Minute: Part II: Chapter 1 • Address Unknown Funhouse • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_1(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x26 && _25_bytes_ascii_location_id() == 0x31325F43), "New York Minute: Part II: Chapter 2 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_2(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0C && _25_bytes_ascii_location_id() == 0x31325F43), "New York Minute: Part II: Chapter 2 Continued • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_2_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x14 && _25_bytes_ascii_location_id() == 0x31325F43), "New York Minute: Part II: Chapter 3 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_3(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31335F43), "New York Minute: Part II: Chapter 4 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_4(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x28 && _25_bytes_ascii_location_id() == 0x31335F43), "New York Minute: Part II: Chapter 5 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_5(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x31 && _25_bytes_ascii_location_id() == 0x31335F43), "New York Minute: Part II: Chapter 6 • Castling Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_ii_chapter_6(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0F && _25_bytes_ascii_location_id() == 0x31345F53), "New York Minute: Part III: Prologue • {0} • Health: {1} • Painkillers: {2} • Weapon: {3} • 🕒Time:{4}",
    rich_presence_lookup("P3P0", current_player_location(), P3P0Lookup),
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_prologue(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x1C && _25_bytes_ascii_location_id() == 0x31355F53), "New York Minute: Part III: Chapter 1 • New York Memorial Hospital • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_1(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31365F53), "New York Minute: Part III: Chapter 2 • Vodka Restaurant • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_2(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x31375F43), "New York Minute: Part III: Chapter 3 • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_3(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x16 && _25_bytes_ascii_location_id() == 0x31375F43), "New York Minute: Part III: Chapter 3 Continued • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_3_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x29 && _25_bytes_ascii_location_id() == 0x31385F47), "New York Minute: Part III: Chapter 4 • Vinnie Gogntti Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_4(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x01 && _25_bytes_ascii_location_id() == 0x31395F54), "New York Minute: Part III: Chapter 5 • Address Unknown Funhouse • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_5(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0A && _25_bytes_ascii_location_id() == 0x32305F54), "New York Minute: Part III: Chapter 6 • Max Payne's Nightmare • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_6(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x20 && _25_bytes_ascii_location_id() == 0x32315F54), "New York Minute: Part III: Chapter 7 • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_7(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x22 && _25_bytes_ascii_location_id() == 0x32315F54), "New York Minute: Part III: Chapter 7 Continued • Woden's Manor • Health: {0} • Painkillers: {1} • Painkillers: {2} • Weapon: {3} • 🕒Time:{4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_7_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0D && _25_bytes_ascii_location_id() == 0x32315F54), "New York Minute: Part III: Chapter 8 • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_8(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x15 && _25_bytes_ascii_location_id() == 0x32315F54), "New York Minute: Part III: Chapter 8 Continued • Woden's Manor • Health: {0} • Painkillers: {1} • Weapon: {2} • 🕒Time:{3}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Seconds", difficulty() == 0x04 && new_york_minute_time_part_iii_chapter_8_continued(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x0E && _25_bytes_ascii_location_id() == 0x30315F53), "Dead Man Walking: Manor Yard • Health: {0} • Painkillers: {1} • Weapon: {2} • 💀Kills {3} 🕒Time: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Number", dead_man_walking_manor_yard_kill_counter_1_13() +
                            dead_man_walking_manor_yard_kill_counter_2_13() +
                            dead_man_walking_manor_yard_kill_counter_3_13() +
                            dead_man_walking_construction_site_kill_counter_7_8() +
                            dead_man_walking_manor_yard_kill_counter_5_13() +
                            dead_man_walking_manor_yard_kill_counter_6_13() +
                            dead_man_walking_manor_yard_kill_counter_7_13() +
                            dead_man_walking_manor_yard_kill_counter_8_13() +
                            dead_man_walking_manor_yard_kill_counter_9_13() +
                            dead_man_walking_manor_yard_kill_counter_10_13() +
                            dead_man_walking_manor_yard_kill_counter_11_13() +
                            dead_man_walking_manor_yard_kill_counter_12_13() +
                            dead_man_walking_manor_yard_kill_counter_13_13()
                        ),
    rich_presence_value("Seconds", dead_man_walking_manor_yard_time(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x09 && _25_bytes_ascii_location_id() == 0x30325F53), "Dead Man Walking: Construction Site • Health: {0} • Painkillers: {1} • Weapon: {2} • 💀Kills {3} • 🕒Time: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Number", dead_man_walking_construction_site_kill_counter_1_8() +
                            dead_man_walking_construction_site_kill_counter_2_8() +
                            dead_man_walking_construction_site_kill_counter_3_8() +
                            dead_man_walking_construction_site_kill_counter_4_8() +
                            dead_man_walking_construction_site_kill_counter_5_8() +
                            dead_man_walking_construction_site_kill_counter_6_8() +
                            dead_man_walking_construction_site_kill_counter_7_8() +
                            dead_man_walking_construction_site_kill_counter_8_8()
                        ),
    rich_presence_value("Seconds", dead_man_walking_construction_site_time(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x06 && _25_bytes_ascii_location_id() == 0x30335F53), "Dead Man Walking: Manor Garden • Health: {0} • Painkillers: {1} • Weapon: {2} • 💀Kills {3} • 🕒Time: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Number", dead_man_walking_manor_garden_kill_counter_1_5() +
                            dead_man_walking_manor_garden_kill_counter_2_5() +
                            dead_man_walking_manor_garden_kill_counter_3_5() +
                            dead_man_walking_manor_garden_kill_counter_4_5() +
                            dead_man_walking_manor_garden_kill_counter_5_5()
                        ),
    rich_presence_value("Seconds", dead_man_walking_manor_garden_time(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x08 && _25_bytes_ascii_location_id() == 0x30345F53), "Dead Man Walking: Used Car Lot • Health: {0} • Painkillers: {1} • Weapon: {2} • 💀Kills {3}• 🕒Time: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Number", dead_man_walking_used_car_lot_kill_counter_1_7() +
                            dead_man_walking_used_car_lot_kill_counter_2_7() +
                            dead_man_walking_used_car_lot_kill_counter_3_7() +
                            dead_man_walking_used_car_lot_kill_counter_4_7() +
                            dead_man_walking_used_car_lot_kill_counter_5_7() +
                            dead_man_walking_used_car_lot_kill_counter_6_7() +
                            dead_man_walking_used_car_lot_kill_counter_7_7()
                        ),
    rich_presence_value("Seconds", dead_man_walking_used_car_lot_time(), format="SECS")
)

rich_presence_conditional_display((chapter_id() == 0x07 && _25_bytes_ascii_location_id() == 0x30355F53), "Dead Man Walking: Scaffolding • Health: {0} • Painkillers: {1} • Weapon: {2} • 💀Kills {3} • 🕒Time: {4}",
    rich_presence_lookup("Health", player_health(), HealthLookup),
    rich_presence_value("Number", number_of_painkillers()),
    rich_presence_lookup("Weapon", dword(player_data() + 0x264), WeaponLookup),
    rich_presence_value("Number", dead_man_walking_scaffolding_kill_counter_1_6() +
                            dead_man_walking_scaffolding_kill_counter_2_6() +
                            dead_man_walking_scaffolding_kill_counter_3_6() +
                            dead_man_walking_scaffolding_kill_counter_4_6() +
                            dead_man_walking_scaffolding_kill_counter_5_6() +
                            dead_man_walking_scaffolding_kill_counter_6_6()
                        ),
    rich_presence_value("Seconds", dead_man_walking_scaffolding_time(), format="SECS")
)

rich_presence_display("In the menus")
