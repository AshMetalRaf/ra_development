// Batman Begins
// #ID = 20924

// $3AB6F9: [8-bit] Level 1: Prologue - End Scene Watched Flag
//          0x00 = False
//          0x01 = True
function level_1_prologue_end_scene_watched_flag() => byte(0x3AB6F9)

// $3AB751: [8-bit] Level 2: Himalayas - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_2_himalayas_end_scene_viewed_flag() => byte(0x3AB751)

// $3AB7A9: [8-bit] Level 3: Gotham Docks - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_3_gotham_docks_end_scene_viewed_flag() => byte(0x3AB7A9)

// $3AB801: [8-bit] Level 4: Passage to Gotham - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_4_passage_to_gotham_end_scene_viewed_flag() => byte(0x3AB801)

// $3AB859: [8-bit] Level 5: Gotham City - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_5_gotham_city_end_scene_viewed_flag() => byte(0x3AB859)

// $3AB8B1: [8-bit] Level 6: Arkham Asylum - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_6_arkham_asylum_end_scene_viewed_flag() => byte(0x3AB8B1)

// $3AB909: [8-bit] Level 7: Saving Rachel - End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_7_saving_rachel_end_scene_viewed_flag() => byte(0x3AB909)

// $3AB961: [8-bit] Level 8: Wayne Manor- End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_8_wayne_manor_end_scene_viewed_flag() => byte(0x3AB961)

// $3AB98D: [8-bit] Level 9: Narrows Intro Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_9_narrows_intro_scene_viewed_flag() => byte(0x3AB98D)

// $3AB9B9: [8-bit] Level 9: Narrows End Scene Viewed Flag
//          0x00 = False
//          0x01 = True
function level_9_narrows_end_scene_viewed_flag() => byte(0x3AB9B9)

// $40850C: [32-bit Pointer] Batmobile Health
//          +0x13c
//          .+0x60
//          ..+0x3d4 | 32-bit float] Batmobile Health
//          1.0 = Max
//          0.0 = Dead
function batmobile_health() => dword(0x40850C)
function _0x60() => dword((batmobile_health() & 0x1FFFFFF) + 0x00013C)

// $408510: [32-bit Pointer] Player Data
//          +0x14c
//          .+0x84c
//          ..+0xba8 | [32-bit] Batman's Health
//          0x23 = Max HP
//          0x00 = Dead
//          .+0x14c
//          ..+0x848
//          ...+0xd0 | [32-bit float] Player Position X
//          ...+0xd4 | [32-bit float] Player Position Y
//          ...+0xd8 | [32-bit float] Player Position Z
//          ....+0xf0 | [32-bit float] Player Size X
//          ....+0xf4 | [32-bit float] Player Height
//          ....+0xf8 | [32-bit float] Player Size Z
//          .....+0x100 | [8-bit] Finish Moves ID
//          0x04 = Grabbing Enemy (for Interrogation) or Finish Enemy (downed, interrogated, stealth, demon batman)
//          0x31 = /Ladder/Ledge/Optic/Rope Hanging (Vertical)
//          0x35 = Default
//          0x3b = Default
//          ......+0x108 | [32-bit] Enemy Takedown Related?
//          .......+0x188 | [16-bit] Player Actions ID
//          Notes:
//          • Refer to address 0x40cbe0 for Actions ID values since they're stored in static memory there.
//          • This entry is only kept for level 2 because that level relies on the dynamic address instead.
//          ───────────────── Batmobile Speedometer ─────────────────
//          .+0x14c
//          ..+0x850
//          ...+0x460 | [32-bit float] Batmobile Speedometer
//          < 0.02 = 000mph (Idle value can be anything below that value)
//          30.0 = 200mph aprox (60 fps)
//          60.0 = 200mph aprox (30 fps)
//          ...+0x48c | [32-bit float] Nitro Usage
//          1.0 = Full
//          0.0 = Empty
function player_data() => dword(0x408510)
function _0x84c() => dword((player_data() & 0x1FFFFFF) + 0x00014C)

// $408560: [8-bit] Level ID 1/5
//          Notes:
//          • Shared across multiple lvls.
//          • Value changes on checkpoints and lvls end. e.g. 0x19 is the area checkpoint, when you restart last checkpoint, it may (though not always) increase to 0x1a.
//          • It's important to know you may end up finishing the lvl on either values.
//          
//          0x01 = Lvl 9: Escape from Arkham (End)
//          └────> Lvl 10: Saving Rachel
//          0x02 = Lvl 10: Saving Rachel (1st checkpoint)
//          0x03 = Lvl 10: Saving Rachel (2nd checkpoint)
//          0x04 = Lvl 4: Gotham Docks - Inside Gotham Docks (End)
//          └────> Lvl 5: Passage to Gotham
//          └────> Lvl 10: Saving Rachel (time attack end)
//          └────> Lvl 14: Monorail to Gotham (End)
//          └────> Menus
//          0x05 = Lvl 10: Saving Rachel (3rd checkpoint)
//          0x07 = Lvl 5: Passage to Gotham (Part 2)
//          └────> Lvl 8: Arkham Asylum (Part 2)
//          0x08 = Lvl 8: Arkham Asylum - Underground (Part 3 Sewers)
//          0x09 = Lvl 8: Arkham Asylum (Part 4 crane fight)
//          0x0a = Lvl 8: Arkham Asylum (Part 4 after Sewers)
//          0x11 = Lvl 11: Wayne Manor (Kitchen)
//          0x13 = Lvl 6: Gotham City - The Black Market (inside Black Market Club, Construction Site)
//          └────> Lvl 7: Narrows Island - Abandoned Museum (End)
//          └────> Lvl 8: Arkham Asylum (Part 1)
//          0x14 = Lvl 6: Gotham City - The Black Market (inside Black Market Club)
//          └────> Lvl 8: Arkham Asylum - Underground (Part 3, Sewers)
//          0x15 = Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          └────> Lvl 8: Arkham Asylum (End)
//          └────> Lvl 9: Escape from Arkham (start)
//          0x16 = Lvl 3: Gotham Docks - The Fall of Falcone (End)
//          └────> Lvl 4: Gotham Docks - Inside Gotham Docks
//          └────> Lvl 10: Saving Rachel (End)
//          └────> Lvl 11: Wayne Manor (Kitchen)
//          0x17 = Lvl 4: Gotham Docks - Inside Gotham Docks (Cargo Ship, Pier)
//          └────> Lvl 5: Passage to Gotham (End)
//          └────> Lvl 6: Gotham City - The Black Market (Parking Lot, inside Black Market Club)
//          0x18 = Lvl 4: Gotham Docks - Inside Gotham Docks (The Crane)
//          0x19 = Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          └────> Lvl 2: The Himalayas (End)
//          └────> Lvl 6: Gotham City - The Black Market (Construction Site)
//          0x1a = Lvl 1: Prologue (End)
//          └────> Lvl 2: The Himalayas
//          0x1b = Lvl 6: Gotham City - The Black Market (End)
//          └────> Lvl 7: Narrows Island - Abandoned Museum
//          0x20 = Lvl 1: Prologue
//          0x21 = Lvl 2: The Himalayas
//          0x23 = Gallery of Fear
//          0x29 = Lvl 9: Escape from Arkham (2nd checkpoint)
//          0x2c = Lvl 7: Narrows Island - Abandoned Museum
//          0x2d = Lvl 7: Narrows Island - Abandoned Museum (Part 2 Stairs)
//          0x32 = Lvl 11: Wayne Manor (End)
//          └────> Lvl 12: Chaos on Narrows Island - Narrowborough Bridge
//          0x35 = Lvl 12: Chaos on Narrows Island - Narrowborough Bridge (End)
//          └────> Lvl 13: The Monorail Tracks
//          0x36 = Lvl 13: The Monorail Tracks (End)
//          └────> Lvl 14: Monorail to Gotham
//          0x39 = Lvl 4: Gotham Docks - Inside Gotham Docks (Cargo Ship)
//          0x3c = Lvl 13: The Monorail Tracks (after saving rachel)
//          0xff = End of Lvls
function level_id_1_5() => byte(0x408560)

// $4086B4: [32-bit] Game State 1/5
//          Note: Not applicable when using Batmobile, stays 0xfffffff
//          0x00 = Menus
//          0x01 = In-game
//          0x02 = In-game
//          0x03 = Menus and in-game (inaccurate value)
//          0xffffffff = Area Complete / Loading
function game_state_1_5() => dword(0x4086B4)

// $408EAC: [8-bit] Level ID 2/5
//          Note: Less often to change and consistent when you restart the emulator.
//          
//          0x00 = Area Complete Screen
//          0x01 = Loading into Menus
//          0x0b = Lvl 1: Prologue
//          0x0c = Lvl 2: The Himalayas
//          0x0d = Lvl 3: Gotham Docks - The Fall of Falcone
//          └────> Lvl 4: Gotham Docks - Inside Gotham Docks (Cargo Ship, Pier, The Crane)
//          0x0e = Lvl 6: Gotham City - The Black Market (Parking Lot, Construction Site)
//          └────> Lvl 7: Narrows Island
//          0x0f = Lvl 8: Arkham Asylum, Escape from Arkham
//          0x10 = Lvl 11: Wayne Manor
//          0x11 = Lvl 12: Chaos on Narrows Island - Narrowborough Bridge
//          └────> Lvl 13: The Monorail Tracks
//          └────> Lvl 14: Monorail to Gotham
//          0x12 = Lvl 5: Passage to Gotham
//          └────> Lvl 10: Saving Rachel
//          0x13 = Menus
//          0x64 = Gallery of Fear
function level_id_2_5() => byte(0x408EAC)

// $408EC0: [8-bit] Level ID 3/5
//          Note: This may be labeled as is just so it's easily searched but it functions as an identifier for checkpoints or specific locations.
//          
//          0x04 = Lvl 1: Prologue
//          0x05 = Lvl 2: The Himalayas (Part 1)
//          0x06 = Lvl 2: The Himalayas (Part 2)
//          0x08 = Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          └────> Lvl 4: Gotham Docks - Inside Gotham Docks (End)
//          0x09 = Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          0x0a = Lvl 4: Gotham Docks - Inside Gotham Docks
//          0x0b = Lvl 4: Gotham Docks - Inside Gotham Docks (At the forklift)
//          0x0c = Lvl 4: Gotham Docks - Inside Gotham Docks (Cargo Ship, Pier)
//          0x0d = Lvl 4: Gotham Docks - Inside Gotham Docks (The Crane)
//          0x0e = Lvl 6: Gotham City - The Black Market (Parking Lot)
//          0x0f = Lvl 6: Gotham City - The Black Market (inside Black Market Club)
//          0x10 = Lvl 6: Gotham City - The Black Market (inside Black Market Club)
//          0x11 = Lvl 6: Gotham City - The Black Market (inside Black Market Club)
//          0x12 = Lvl 6: Gotham City - The Black Market (Tram, Construction Site)
//          0x13 = Lvl 6: Gotham City - The Black Market (Construction Site Roof)
//          0x14 = Lvl 6: Gotham City - The Black Market (Construction Site Roof)
//          0x16 = Lvl 6: Gotham City - The Black Market End of Lvl Transition
//          └────> Lvl 7: Narrows Island - Abandoned Museum
//          0x17 = Lvl 7: Narrows Island - Abandoned Museum (Outside)
//          0x18 = Lvl 7: Narrows Island - Abandoned Museum (Stairs)
//          0x19 = Lvl 8: Arkham Asylum (Part 1)
//          0x1a = Lvl 8: Arkham Asylum (Part 1)
//          0x1b = Lvl 8: Arkham Asylum (Part 2 after Explosive Gas)
//          0x1c = Lvl 8: Arkham Asylum - Underground (Part 3)
//          0x1d = Lvl 8: Arkham Asylum - Underground (Part 3)
//          0x1e = Lvl 8: Arkham Asylum - Underground (Part 3 Prison, Sewers)
//          0x1f = Lvl 8: Arkham Asylum (Part 4 after Sewers and inside Vent, crane fight)
//          0x20 = Lvl 8: Arkham Asylum (Part 4 inside building, crane fight)
//          0x21 = Lvl 9: Escape from Arkham
//          0x22 = Lvl 9: Escape from Arkham (1st checkpoint)
//          0x23 = Lvl 9: Escape from Arkham (2nd checkpoint)
//          0x24 = Lvl 11: Wayne Manor
//          0x25 = Lvl 11: Wayne Manor (Dining Room)
//          0x26 = Lvl 11: Wayne Manor (Fire hole to 2F)
//          0x28 = Lvl 12: Chaos on Narrows Island - Narrowborough Bridge
//          0x29 = Lvl 13: The Monorail Tracks
//          0x2a = Lvl 13: The Monorail Tracks (On Tracks)
//          0x2b = Lvl 14: Monorail to Gotham
//          0x34 = Lvl 10: Saving Rachel
//          0x35 = Lvl 10: Saving Rachel (1st checkpoint)
//          0x37 = Lvl 10: Saving Rachel (Part 2)
//          0x38 = Lvl 10: Saving Rachel (Part 3)
//          0x40 = Gallery of Fear
//          0x42 = Lvl 5: Passage to Gotham (Part 1)
//          0x43 = Lvl 5: Passage to Gotham (Part 2)
//          0x44 = Lvl 5: Passage to Gotham (Part 3)
//          0x46 = Menus
//          0xff = All Lvls (End)
//          └────> Lvl 2: The Himalayas
//          └────> Lvl 6: Gotham City - The Black Market (Elevator, Black Market Club, Tram, Construction Site Roof)
//          └────> Lvl 8: Arkham Asylum (Rooftop, P3/P4 Hallway, Prison, Sewers)
//          └────> Lvl 9: Escape from Arkham
//          └────> Lvl 11: Wayne Manor (Dining Room, fire hole to 2F)
//          └────> Lvl 13: The Monorail Tracks (On Tracks)
function level_id_3_5() => byte(0x408EC0)

// $4092A0: [32-bit float] Area Fear Meter
function area_fear_meter() => float(0x4092A0)

// $409BF8: [32-bit] FPS (Dev only)
//          0x19 = 25 fps (EU)
//          0x1e = 30 fps
//          0x3c = 60 fps
function fps_dev_only() => dword(0x409BF8)

// $40AF44: [21 bytes ASCII] Serial (Global)
//          Format: BE
//          cdrom0:\SLUS_211.98;1 = US | 0x6364726f, 0x6d303a5c, 0x534c5553, 0x5f323131, 0x2e39383b
//          cdrom0:\SLES_533.87;1 = EU | 0x6364726f, 0x6d303a5c, 0x534c4553, 0x5f353333, 0x2e38373b, 0x31
function _21_bytes_ascii_serial() => dword_be(0x40AF44)

// $40B0C4: [8-bit] Batsuits ID
//          Note: Use with the address 0x408a80
//          0x01 = Default
//          0x04 = Suit (Wayne Manor mission)
//          0x0b = Training Clothes (The Himalayas mission)
//          0x0f = Caped Crusader
//          0x10 = World's Greatest Detective
//          0x11 = Dark Knight
function batsuits_id() => byte(0x40B0C4)

// $40B0E0: [32-bit] Player State
//          0x00 = Active
//          0xffffffff = Cutscene
//          0xb07fff = Intercom (Dr. thomas room inside arkham asylum)
//          0xffff0fff = Optic (under door view)
function player_state() => dword(0x40B0E0)

// $40B169: [8-bit] Level ID 4/5
//          Notes:
//          • This is likely the lvl ID address as it remains unchanged until the entire lvl is fully completed.
//          • Quitting the lvl to the main menu will retain the current lvl value. Keep in mind for testing and lvl tracking.
//          
//          0x00 = Menus
//          0x01 = Lvl 1: Prologue
//          └────> Lvl 5: Passage to Gotham
//          └────> Lvl 10: Saving Rachel
//          └────> Gallery of Fear
//          0x02 = Lvl 2: The Himalayas
//          0x03 = Lvl 3: Gotham Docks - The Fall of Falcone
//          └────> Lvl 4: Gotham Docks - Inside Gotham Docks
//          0x04 = Lvl 6: Gotham City
//          └────> Lvl 7: Narrows Island
//          0x05 = Lvl 8: Arkham Asylum
//          └────> Lvl 9: Escape from Arkham
//          0x06 = Lvl 11: Wayne Manor
//          0x07 = Lvl 12: Chaos on Narrows Island - Narrowborough Bridge
//          └────> Lvl 13: The Monorail Tracks
//          └────> Lvl 14: Monorail to Gotham
function level_id_4_5() => byte(0x40B169)

// $40B1A0: [32-bit] Game State 2/5
//          0x00 = In-game
//          0x04 = Paused
//          0x05 = Menus
//          0x09 = FMV Playing
function game_state_2_5() => dword(0x40B1A0)

// $40B1A4: [32-bit] Game State 3/5
//          0x00 = In-game / Menus
//          0x01 = Loading / Area Complete
function game_state_3_5() => dword(0x40B1A4)

// $40B1F4: [32-bit float] Game Time 1/2
//          Notes:
//          • This is the timer that's displayed when game is paused.
//          • Continues between level restarts.
//          • Resets only on Area Complete, unlike the address 0x40bec4.
//          • Starts from zero after restarting the game.
//          • Loading levels carry over whatever value it is at the current moment.
function game_time_1_2() => float(0x40B1F4)

// $40B240: [8-bit] Level ID 5/5
//          Note: This is very much similar to the 1st address 0x408560 and is treated in the same manner.
//          
//          0x05 = Lvl 1: Prologue
//          0x06 = Lvl 2: The Himalayas
//          0x08 = Lvl 2: The Himalayas (End)
//          └────> Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          0x09 = Lvl 3: Gotham Docks - The Fall of Falcone (Sewers)
//          0x0a = Lvl 3: Gotham Docks - The Fall of Falcone (End)
//          └────> Lvl 4: Gotham Docks - Inside Gotham Docks
//          0x0b = Lvl 4: Gotham Docks - Inside Gotham Docks (Cargo Ship, Pier)
//          0x0c = Lvl 4: Gotham Docks - Inside Gotham Docks (The Crane, End)
//          0x0d = Lvl 6: Gotham City - The Black Market (Parking Lot)
//          0x0e = Lvl 6: Gotham City - The Black Market (Inside Black Market Club)
//          0x0f = Lvl 6: Gotham City - The Black Market (Tram, Construction Site)
//          0x10 = Lvl 6: Gotham City - The Black Market (Construction Site Roof)
//          0x11 = Lvl 6: Gotham City - The Black Market (Construction Site Roof)
//          0x12 = Lvl 6: Gotham City - The Black Market (End)
//          └────> Lvl 7: Narrows Island - Abandoned Museum
//          0x13 = Lvl 7: Narrows Island - Abandoned Museum (Outside)
//          0x14 = Lvl 7: Narrows Island - Abandoned Museum (roof and End)
//          0x15 = Lvl 8: Arkham Asylum
//          0x16 = Lvl 8: Arkham Asylum
//          0x17 = Lvl 8: Arkham Asylum (Part 2 after Explosive Gas)
//          0x18 = Lvl 8: Arkham Asylum (Part 3 Underground)
//          0x19 = Lvl 8: Arkham Asylum (Part 3 Underground Prison)
//          0x1a = Lvl 8: Arkham Asylum (Part 4 Vent, crane fight)
//          0x1b = Lvl 8: Arkham Asylum (Part 4 inside building, crane fight)
//          0x1c = Lvl 9: Escape from Arkham
//          0x1d = Lvl 11: Wayne Manor
//          0x1e = Lvl 11: Wayne Manor (Dining Room)
//          0x1f = Lvl 8: Arkham Asylum (Part 4 after Sewers)
//          └────> Lvl 11: Wayne Manor (Fire hole to 2F)
//          0x20 = Lvl 12: Chaos on Narrows Island - Narrowborough Bridge
//          0x21 = Lvl 13: The Monorail Tracks
//          0X22 = Lvl 13: The Monorail Tracks (On Tracks)
//          0x23 = Lvl 14: Monorail to Gotham (End)
//          0x25 = Lvl 5: Passage to Gotham Part 1
//          0x26 = Lvl 5: Passage to Gotham Part 2
//          0x27 = Lvl 5: Passage to Gotham Part 3 (and End)
//          0x29 = Lvl 10: Saving Rachel
//          0x2a = Lvl 10: Saving Rachel (1st checkpoint)
//          0x2c = Lvl 10: Saving Rachel (Part 2)
//          0x2d = Lvl 10: Saving Rachel (Part 3)
//          0x35 = Menus
//          0x36 = Gallery of Fear
function level_id_5_5() => byte(0x40B240)

// $40B260: [32-bit float] Player Position X
function player_position_x() => float(0x40B260)

// $40B264: [32-bit float] Player Position Y
function player_position_y() => float(0x40B264)

// $40B268: [32-bit float] Player Position Z
function player_position_z() => float(0x40B268)

// $40B270: [8-bit] Current Player Location
//          Note: Shared across multiple Lvls.
//          ───────────────── Level Titles ─────────────────
//          1: Prologue | 2: The Himalayas | 3: Gotham Docks - The Fall of Falcone | 4: Gotham Docks - Inside Gotham Docks
//          5: Passage to Gotham | 6: Gotham City | 7: Narrows Island | 8: Arkham Asylum | 9: Escape from Arkham
//          10: Saving Rachel | 11: Wayne Manor | 12: Narrowborough | 13: The Monorail Tracks | 14: Monorail to Gotham
//          
//          0x00 = Lvl 1: Start
//          └────> Lvl 2: Start, Fire Room
//          └────> Lvl 3: Outside Van, Inside sewers
//          └────> Lvl 4: Start, End
//          └────> Lvl 5: Passage to Gotham
//          └────> Lvl 6: Inside building
//          └────> Lvl 7: 1st checkpoint, P2 Escape Ladder
//          └────> Lvl 8: Inside building, P2 3F Attic, P3 Start, Vent, Sewers, P4 Hallway
//          └────> Lvl 9: Balcony, Inside building
//          └────> Lvl 10: Saving Rachel
//          └────> Lvl 12: Start
//          └────> Lvl 13: Start, on tracks
//          └────> In-game Cutscene / During Animated Kill / Menus
//          0x01 = Lvl 1: Hallway
//          └────> Lvl 2: Hallway, Outside
//          └────> Lvl 3: Factory, Inside pipe
//          └────> Lvl 4: Crane Controls Room, Outside Cargo Ship, Pier, End
//          └────> Lvl 6: Parking Lot, Inside building, Laser Area, Start of Construction Site and roof
//          └────> Lvl 7: Balcony, P2 Roof
//          └────> Lvl 8: Balcony, P2 3F Attic, P3 Hallway, Sewers, P4 Trap Room
//          └────> Lvl 9: Balcony, Inside building
//          └────> Lvl 11: Start, Library
//          └────> Lvl 13: Start, inside building
//          └────> Lvl 14: Start
//          └────> Gallery of Fear - West Wing
//          0x02 = Lvl 1: Hallway
//          └────> Lvl 2: Hallway
//          └────> Lvl 3: Inside Vents, Inside room with enemies
//          └────> Lvl 4: Containers, Outside Cargo Ship, Pier
//          └────> Lvl 6: Parking Lot, Inside building, Tram, Construction Site, Inside fan
//          └────> Lvl 7: Inside building, P2 Underneat Helicopter
//          └────> Lvl 8: Balcony, P2 Inside building after Gas, P3 Hallway, Stairs, Sewers, P4 Vent
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: Hallway, Library
//          └────> Lvl 13: Underneath Tracks, inside building
//          └────> Lvl 14: On top of train
//          0x03 = Lvl 1: Hallway
//          └────> Lvl 2: Stealth Room, Hallway
//          └────> Lvl 3: Outside
//          └────> Lvl 4: Containers, Inside Cargo Ship, Pier
//          └────> Lvl 6: Parking Lot, Inside building, Vent, Construction Site Roof, Control Room
//          └────> Lvl 7: Balcony, P2 Hallway
//          └────> Lvl 8: Outside, P2 3F Building, P3/P4 Hallway, Prison, Sewers Pipe, P4 Vent
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: 1F/2F Hallway, End
//          └────> Lvl 13: Underneath Tracks, inside building
//          └────> Lvl 14: On top of train
//          0x04 = Lvl 1: Hallway
//          └────> Lvl 2: Stealth Room, Ninjas Room
//          └────> Lvl 3: Outside, Sewers outside
//          └────> Lvl 4: Containers, Inside Cargo Ship, Pier
//          └────> Lvl 6: Parking Lot, Inside building, Tram, Construction Site, Inside Roof Room
//          └────> Lvl 7: Outside, P2 Stairs
//          └────> Lvl 8: Alleyway, P3/P4 Hallway, Sewers, P4 Stairs
//          └────> Lvl 9: Inside building, Stairs, End
//          └────> Lvl 11: Fire Room, Hallway
//          └────> Lvl 13: Underneath Tracks, building hallway
//          └────> Lvl 14: Inside train
//          0x05 = Lvl 2: Hallway
//          └────> Lvl 3: Vent Room, Sewers crates room
//          └────> Lvl 4: Containers, Inside Cargo Ship
//          └────> Lvl 6: Inside building, Construction Site top, vents
//          └────> Lvl 7: Outside, P2 Stairs, P3 Vent
//          └────> Lvl 8: Start, P2 3F Building, P3 Hallway, Sewers, P4 Morgue
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: Fire Room, 2F Hallway
//          └────> Lvl 13: on Tracks, building hallway
//          └────> Lvl 14: Inside train
//          0x06 = Lvl 1: Escape Ladder
//          └────> Lvl 2: Chandeliers Room, Enemies Room
//          └────> Lvl 3: Ground, Sewers upstairs
//          └────> Lvl 4: Containers, Inside Cargo Ship, Undernear Pier
//          └────> Lvl 6: Parking Lot, Inside building, Construction Site top, Inside fan
//          └────> Lvl 7: Inside building, P2 Hallway
//          └────> Lvl 8: Inside Library, P2 3F Building, P3/P4 Hallway, Stairs, Sewers Pipe, Vent
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: Dining Room, 2F Hallway
//          └────> Lvl 13: Underneath Tracks, after saving rachel
//          └────> Lvl 14: Inside train
//          0x07 = Lvl 2: Hallway
//          └────> Lvl 3: Sewers 1st enemies section, upstairs door, Inside Cargo Ship
//          └────> Lvl 6: Parking Lot, Inside building, Tram, Construction Site Vents and Roof
//          └────> Lvl 7: Elevator, P2 Hallway
//          └────> Lvl 8: Lobby, P2 Kitchen, P3/P4 Hallway, Sewers, Vent
//          └────> Lvl 9: Balcony
//          └────> Lvl 11: 2F Hallway, 3F Hallway
//          └────> Lvl 13: on Tracks Tunnel, balcony
//          └────> Lvl 14: Inside train
//          0x08 = Lvl 1: Outside
//          └────> Lvl 2: End
//          └────> Lvl 3: Start, Sewers inside Pipe, Underneath Pier
//          └────> Lvl 6: Parking Lot, Inisde building, Construction Site top
//          └────> Lvl 7: Elevator Room, P2 Stairs
//          └────> Lvl 8: East Wing, P2 Kitchen Storage Room, P3 Outside, Sewers, Vent, P4 Hallway
//          └────> Lvl 11: 2F Hallway, Hall, Library
//          └────> Lvl 13: on Tracks Tunnel, inside building
//          └────> Lvl 14: On top of train
//          0x09 = Lvl 1: 2F Hallway
//          └────> Lvl 3: Bridge, Sewers keypad room, Room after Elevator
//          └────> Lvl 6: Parking Lot, Inside building, Construction Site roof, Vents Room
//          └────> Lvl 7: P2 Hallway
//          └────> Lvl 8: Top of Elevator, P3 Outside, Sewers, Vent, P4 Hallway
//          └────> Lvl 9: Start
//          └────> Lvl 11: Inside The Art of War room, Hallway
//          └────> Lvl 13: on Tracks Tunnel, inside building End
//          └────> Lvl 14: On top of train
//          0x0a = Lvl 1: 2F Hallway
//          └────> Lvl 3: Sewers, Pier Elevator
//          └────> Lvl 6: Parking Lot, Inside building, Construction Site Vents Room
//          └────> Lvl 7: P2 Vent
//          └────> Lvl 8: East Wing, P2/P4 Inside building, Hallway, Elevator, P3/P4 Vent, Sewers
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: Library
//          └────> Lvl 14: On top of train
//          0x0b = Lvl 1: Elevator
//          └────> Lvl 3: Sewers inside Pipe
//          └────> Lvl 4: Start
//          └────> Lvl 6: Parking Lot, Inside building, Construction Site Vents Room
//          └────> Lvl 7: 3F Hallway, P2 Barrels Room
//          └────> Lvl 8: East Wing, P2 Inside building, P3 Inside building, Vent, Sewers, P4 start
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: Hallway, Kitchen
//          └────> Lvl 14: On top of train
//          0x0c = Lvl 1: 2F Room
//          └────> Lvl 3: End, Sewers inside Pipe
//          └────> Lvl 6: Inside building
//          └────> Lvl 7: 3F Hallway, P2 Enemies Room
//          └────> Lvl 8: P1/P2/P3 Inside Building, Vent, Sewers, P4 Start, Hallway
//          └────> Lvl 9: Inside building
//          └────> Lvl 11: 1F/2F Hallway
//          └────> Lvl 14: On top of train
//          0x0d = Lvl 1: 2F Enemies Room
//          └────> Lvl 3: Elevator Room, Sewers enemies room
//          └────> Lvl 6: Parking Lot
//          └────> Lvl 7: 3F Hallway, P2 Vent
//          └────> Lvl 8: Prisoners Hallway, P2/P3/P4 Building Hallway
//          └────> Lvl 9: Inside building
//          └────> Lvl 14: Inside train
//          0x0e = Lvl 1: Hallway
//          └────> Lvl 3: Elevator, End
//          └────> Lvl 6: Parking Lot
//          └────> Lvl 7: 3F Hallway, P2 Vent
//          └────> Lvl 8: P1/P2/P4 Building Hallway, P3 Vent, Factory
//          └────> Lvl 14: On top of train
//          0x0f = Lvl 1: Hallway
//          └────> Lvl 3: Sewers stairs
//          └────> Lvl 6: Parking Lot
//          └────> Lvl 7: 3F Hallway, P2 Helicopter Roof
//          └────> Lvl 8: P2/P3/P4 Inside building, Factory
//          └────> Lvl 14: On top of train
//          0x10 = Lvl 1: Hallway
//          └────> Lvl 3: Sewers inside 3rd pipe
//          └────> Lvl 6: Parking Lot Intercom Area
//          └────> Lvl 7: Elevator
//          └────> Lvl 8: P2/P3 Inside building, Sewers, P4 3F Hallway, P4 Room with Crane
//          0x11 = Lvl 1: 2F Enemies Room
//          └────> Lvl 3: Sewers inside 3rd pipe
//          └────> Lvl 6: Elevator
//          └────> Lvl 7: 2F
//          └────> Lvl 8: P2 Inside building, P3 Sewers, P4 Room with Enemies
//          0x12 = Lvl 1: 2F Hallway
//          └────> Lvl 3: Sewers
//          └────> Lvl 7: Stairs
//          └────> Lvl 8: P2 Inside building, P3 Sewers, P4 Switch Room
//          0x13 = Lvl 1: 2F Hallway
//          └────> Lvl 3: Outside Sewers
//          └────> Lvl 7: 2F
//          └────> Lvl 8: P2 Inside building, P3 Sewers, P4 Hallway
//          0x14 = Lvl 1: 2F Hallway
//          └────> Lvl 8: P2 Elevator, P4 Hallway
//          └────> Lvl 3: Outside Sewers
//          0x15 = Lvl 1: 2F Hallway, P4 Hallway
//          0x16 = Lvl 1: 2F Hallway
//          └────> Lvl 8: P2 Outside, Balcony
//          0x17 = Lvl 1: End
//          └────> Lvl 8: P2 Outside, Balcony, Rooftop, P4 2F Hallway
//          0x18 = Lvl 8: P2 Outside, Balcony, Rooftop, P4 2F Hallway
//          0x19 = Lvl 8: P2 Outside, Rooftop, P4 3F Hallway
//          0x1b = Lvl 8: P2 2F Building Hallway
//          0x1c = Lvl 8: P2 2F Building Hallway
//          0x1d = Lvl 8: P2 2F Building Hallway
//          0x1e = Lvl 8: P2 2F Patients Room
//          0x1f = Lvl 8: P2 2F Building Hallway
//          0x20 = Lvl 8: P2 Start
function current_player_location() => byte(0x40B270)

GOFLookup = {
    0x00: "East Wing",
    0x01: "West Wing",
}

// $40B332: [8-bit] Game State 4/5
//          0x00 = In-game
//          0x01 = Menus / Area Complete
function game_state_4_5() => byte(0x40B332)

// $40B3D8: [32-bit] Satlink Cam Active Indicator
//          0x01 = Default
//          0x02 = Cam Active
function satlink_cam_active_indicator() => dword(0x40B3D8)

// $40B46C: [32-bit Pointer] Interrogation System
//          +0xb4
//          .+0x174
//          ..+0x08
//          ...+0x570 | [32-bit] Interrogation Data Flags
//          0x01000000 = Interrogate prompt available (also true indicate that an enemy can be grabbed for interrogation)
//          0x01010000 = During Interrogation (goes back to any of the other 3 values)
//          0x01000001 = Interrogate and Finish prompts available
//          0x00000001 = Finish prompt available (When you push interrogation to its limit)
function interrogation_system() => dword(0x40B46C)
function _0x174() => dword((interrogation_system() & 0x1FFFFFF) + 0x0000B4)

// $40BE60: [32-bit] Enemy Proximity
//          Notes:
//          • Dynamic distance value, not a fixed state.
//          • Increases from 0x00 as you approach an enemy and reaches ~0x0e when very close.
//          • Certain ranges are reused by the game to trigger actions.
//          • Values above 0x09 generally indicate the range where Batman can punch an enemy. It's safe to use this value.
//          
//          0x00 = Default (far away, sometimes it changes to 0x01 then goes back rapidly)
//          0x01 = Finish (enemy interrogated)
//          0x02 = Finish performed
//          0x09 = Safe starting range for batman to land a punch on enemies
//          0x0a–0x0c = Enemy interrogated
function enemy_proximity() => dword(0x40BE60)

// $40BEC0: [32-bit] Batmobile: Area Complete/Game Over/Cutscene Playing Flag
//          Notes:
//          • When it's true, the game/level timer stops.
//          • It stays true until you restart the emulator.
//          0x00 = False
//          0x01 = True
function batmobile_area_complete_game_over_cutscene_playing_flag() => dword(0x40BEC0)

// $40BEC8: [32-bit] Reputation
function reputation() => dword(0x40BEC8)

// $40BED8: [32-bit] Total Stealth Kills Performed 1/2
//          Notes:
//          • Value carries over between levels and doesn't reset when you restart the level.
//          • Value resets and doesn't save when you restart the emulator.
function total_stealth_kills_performed_1_2() => dword(0x40BED8)

// $40BEE0: [32-bit] Total Enemies Killed using a Finish Move
//          Notes:
//          • Counts stealth kills, enemy takedowns, and demon batman takedowns (Interrogated enemy takedowns are not counted).
//          • Value carries over between levels and doesn't reset when you restart a level.
//          • Value resets and doesn't save when you restart the emulator, unlike the address 0x40bf1c.
function total_enemies_killed_using_a_finish_move() => dword(0x40BEE0)

// $40BF00: [32-bit float] Level Time
//          Notes:
//          • When address 0x40bec0 is true, the timer stops.
//          • Timer resets based on last level checkpoint.
//          • Timer is saved when you load a save.
//          • Timer resets when you Restart the level.
//          • Avoid using it in normal missions since finishing level "Passage to Gotham" makes the timer stops until the player decides to reset the emulator.
function level_time() => float(0x40BF00)

// $40BF04: [32-bit] Batmobile: Total Reputation by Percentage
//          Notes:
//          • Value Increases by 5% when you takedown enemy vehicles.
//          • Value decreases when you takedown civilian vehicles.
//          0x01 = 5%
//          0x02 = 10%
//          0x03 = 15%
//          0x04 = 20%
//          0x05 = 25%
//          0x06 = 30%
//          0x07 = 34%
//          0x08 = 40%
//          0x09 = 44%
//          0x0a = 50%
//          0x0b = 55%
//          0x0c = 60%
//          0x0d = 64%
//          0x0e = 69%
//          0x0f = 75%
//          0x10 = 80%
//          0x11 = 85%
//          0x12 = 89%
//          0x13 = 94%
//          0x14 = 100%
function batmobile_total_reputation_by_percentage() => dword(0x40BF04)

RepLookup = {
    0x00: "0%",
    0x01: "5%",
    0x02: "10%",
    0x03: "15%",
    0x04: "20%",
    0x05: "25%",
    0x06: "30%",
    0x07: "34%",
    0x08: "40%",
    0x09: "44%",
    0x0a: "50%",
    0x0b: "55%",
    0x0c: "60%",
    0x0d: "64%",
    0x0e: "69%",
    0x0f: "75%",
    0x10: "80%",
    0x11: "85%",
    0x12: "89%",
    0x13: "94%",
    0x14: "100%",
}

// $40BF1C: [32-bit] Total Enemies Killed using a Finish Move Per Level
//          Notes:
//          • Counts stealth kills, enemy takedowns, and demon batman takedowns (Interrogated enemy takedowns are not counted).
//          • Value is saved per level and only resets when the level is finished or when you restart the level.
//          • Reloading a checkpoint restores the kill count to whatever it was at that checkpoint.
function total_enemies_killed_using_a_finish_move_per_level() => dword(0x40BF1C)

// $40BF20: [32-bit] Batmobile: Total Takedowns
function batmobile_total_takedowns() => dword(0x40BF20)

// $40BF24: [32-bit] Batmobile: Total Multiple Takedowns
function batmobile_total_multiple_takedowns() => dword(0x40BF24)

// $40BF28: [32-bit] Batmobile: Total Enemy Damage in Cash
function batmobile_total_enemy_damage_in_cash() => dword(0x40BF28)

// $40BF2C: [32-bit] Batmobile: Total Takedown (Civilian Vehicles)
function batmobile_total_takedown() => dword(0x40BF2C)

// $40C160: [32-bit Pointer] Player Equipment / Gadgets
//          +0x14
//          .+0x04 | [32-bit] Batarang Obtained Flag (Unlimited Usage)
//          .+0x14 | [32-bit] HF Transponder Amount
//          ..+0x24 | [32-bit] Smoke Grenade Amount
//          ...+0x34 | [32-bit] Flash-bang Amount
//          ....+0x44 | [32-bit] Electro-Hack Obtained Flag (Unlimited Usage)
//          .....+0x54 | [32-bit] Cam Hack Obtained Flag (Unlimited Usage)
//          0x00 = Zero (Typically for limited equipment)
//          0x01 = Obtained (Only applies to unlimited gadgets. otherwise, treat the value as amount)
//          0xffffffff = Not Obtained
//          ───────────────── Equipment ID ─────────────────
//          +0x00 | [32-bit] Batarang
//          .+0x10 | [32-bit] HF Transponder
//          ..+0x20 | [32-bit] Smoke Grenade
//          ...+0x30 | [32-bit] Flash-Bang
//          ....+0x40 | [32-bit] Electro-Hack
//          .....+0x50 | [32-bit] Flash-bang ID
//          0x40020020 = Batarang
//          0x40030016 = HF Transponder
//          0x40030015 = Smoke Grenade
//          0x40030014 = Flash-Bang
//          0x40020029 = Electro-Hack
//          0x40020027 = Cam Hack
function player_equipment_gadgets() => dword(0x40C160)
function _0x04_batarang_obtained_flag() => dword((player_equipment_gadgets() & 0x1FFFFFF) + 0x000014)

// $40CBE0: [16-bit] Player Actions ID
//          Note: Not applicable in Himalayas and Wayne Manor. use 0x408510 instead.
//          
//          0x00 = Counter an Enemy Attack (Special Attack 1/6)
//          └────> Vault Attack (Special Attack 2/6)
//          0x01 = Idle (Standing)
//          0x02 = Moving
//          0x03 = Jumping
//          0x05 = Falling
//          0x07 = Running Jump
//          0x09 = Hanging off a Ledge (Idle)
//          0x0a = Climbing up a Ledge
//          0x0d = Rolling
//          0x15 = Hanging off a Ledge (Shimming)
//          0x16 = Hanging off a Ledge (Shimming)
//          0x25 = Default Idle (When standing for too long)
//          0x26 = Idle Animation (When standing for too long)
//          0x28 = Idle Animation (When standing for too long)
//          0x2b = Idle Animation (When standing for too long)
//          0x2c = Idle Animation (When standing for too long)
//          0x2d = Idle Animation (When standing for too long)
//          0x30 = Idle Animation (When standing for too long)
//          0x31 = Idle Animation (When standing for too long)
//          0x34 = Jump Punch
//          0x3f = Double Jump
//          0x54 = Opening a Door/Vent while Standing/Interact with a button
//          0x62 = Rope Hanging (Vertical)
//          0x63 = Rope Hanging (Vertical)
//          0x66 = Rope Hanging (Vertical)
//          0x67 = Rope Hanging (Vertical)
//          0x68 = Rope Hanging (Vertical)
//          0x69 = Rope Hanging (Vertical)
//          0x6b = Rope Hanging (Vertical)
//          0x6c = Rope Hanging (Vertical)
//          0x97 = Hanging off a Ledge (Stopping)
//          0x98 = Hanging off a Ledge (Stopping)
//          0xb0 = Drop off a Ledge
//          0xce = Grab on a Ledge
//          0xdc = Idle Animation (in some cutscenes), Interacting with a button (Intercom, elevator)
//          
//          0x103 = Moving Left in Cover
//          0x104 = Moving Right in Cover
//          0x105 = Leaving Cover
//          0x13d = Damaged by gas (while running)
//          0x148 = Unmounting a Ladder
//          0x14b = Standing Alert
//          0x14c = Standing Alert
//          0x154 = Fall off Ledge
//          0x15e = Fall off Damage
//          0x166 = Running Landing
//          0x168 = Damaged by Gas (while standing)
//          0x180 = Adjust after Punch/Kick
//          └─────> Finish Grabbed (Interrogated) Enemy
//          0x181 = Regrab a Ledge
//          0x18f = Idle (When standing for too long)
//          0x190 = Idle Animation (When standing for too long)
//          
//          0x203 = Gliding
//          0x204 = Landing from Glide
//          0x207 = Blocking Stance
//          0x218 = Throwing Batarang, smoke grenades etc
//          0x22e = Double Jump Kick
//          0x22f = Double Jump Kick
//          0x230 = Landing (from Double Jump Kick)
//          0x27a = Hanging on Grapple Rope
//          0x27b = Using the Grapple Rope
//          0x27c = Using the Grapple Rope
//          0x27d = Dropping from Grapple Rope
//          0x27e = Using the Grapple Rope
//          0x282 = Rope Hanging (Idle)
//          0x283 = Rope Hanging (Idle)
//          0x284 = Rope Hanging (Moving)
//          0x285 = Rope Hanging (Moving)
//          0x288 = Rope Hanging (Adjusting)
//          0x289 = Rope Hanging (Adjusting)
//          0x2d5 = Grapple (from Blocking Stance)
//          0x2e7 = Interrogate an Enemy
//          0x2ea = Grab an Enemy
//          0x2eb = Interrogate an Enemy (Conversation)
//          0x2ec = Interrogate an Enemy (End of Conversation)
//          0x2ed = Interrogate an Enemy (Conversation)
//          0x2fe = Going into Cover
//          0x2ff = Taking Cover
//          
//          0x300 = Taking Cover
//          0x31f = Interrogate an Enemy (Beating)
//          0x320 = Interrogate an Enemy (Beating)
//          0x36c = Rope Traverse (Unmounting)
//          0x36e = Rope Traverse (Idle)
//          0x36f = Rope Traverse (Idle)
//          0x370 = Rope Traverse (Idle)
//          0x371 = Rope Traverse (Moving)
//          0x372 = Rope Traverse (Moving)
//          0x373 = Rope Traverse (Moving)
//          0x376 = Rope Traverse (Moving)
//          0x377 = Rope Traverse (Moving)
//          0x378 = Rope Traverse (Moving)
//          0x37f = Landing (from long Jump)
//          0x380 = Landing (from Jump)
//          0x380 = Landing (from Jump)
//          0x381 = Fall off Ledge
//          0x382 = Moving while Crouched
//          0x384 = Crouched (Idle)
//          0x3f0 = Crouch (Adjusting)
//          0x3f1 = Crouch (Adjusting)
//          0x3ff = Rope Sliding
//          
//          0x400 = Rope Sliding
//          0x401 = Rope Sliding
//          0x402 = Rope Sliding
//          0x403 = Rope Sliding
//          0x404 = Rope Sliding
//          0x405 = Hanging off Ledge (Initiate)
//          0x406 = Hanging off Ledge (Initiate)
//          0x407 = Roll and Punch Combo
//          0x40c = Climbing Up Ladder
//          0x40d = Hault on Ladder
//          0x40e = Climbing Up Ladder
//          0x40f = Climbing Up Ladder
//          0x410 = Climbing Down Ladder
//          0x411 = Climbing Down Ladder
//          0x412 = Mounting Up a Ladder
//          0x413 = Reaching top Ladder
//          0x414 = Mounting down a Ladder
//          0x431 = Kick x1 (Front Kick)
//          0x432 = Kick x2 (Side Kick)
//          0x433 = Kick x3 (High Spinning)
//          0x43a = Punch x1 (Jab)
//          0x43b = Punch x2 (Jab)
//          0x43c = Punch x3 (Jab)
//          0x444 = Blocking Enemy Attack
//          0x46d = ?
//          0x478 = Slide Down Ladder
//          0x479 = Slide Down Ladder
//          0x47a = Hault on Ladder
//          0x47b = Climbing Up Ladder
//          0x47c = Climbing Up Ladder
//          0x47e = Interrogating an enemy while hanging (idle)
//          0x47f = Interrogating an enemy while hanging (conversation)
//          0x480 = Interrogating an enemy while hanging (conversation)
//          0x481 = Interrogating an enemy while hanging (beating)
//          0x482 = Interrogating an enemy while hanging (beating)
//          0x483 = Interrogating an enemy while hanging (ending conversation)
//          0x484 = Interrogating an enemy while hanging (conversation)
//          0x489 = Kick x3 (Spinning)
//          0x48a = Kick x3 (Leg Sweep)
//          
//          0x535 = Ground Attack (Special Attack 3/6)
//          0x536 = Multi Attack (Special Attack 4/6)
//          0x53a = Standing on Beam (Idle)
//          0x537 = Walking on Beam
//          0x537 = Walking on Beam
//          0x539 = Standing on Beam (Idle)
//          0x542 = Punch x4 (Elbow)
//          0x543 = Punch x5 (Spin Elbow)
//          0x544 = Punch x6 (Backfist)
//          0x546 = Punch x1 (Jab)
//          0x547 = Punch x2 (Jab)
//          0x548 = Punch x3 (Jab)
//          0x549 = Punch x4 (Elbow)
//          0x54a = Punch x5 (Spin Elbow)
//          0x54b = Punch x6 (elbow)
//          0x54c = Punch x1 (Jab)
//          0x54d = Punch x2 (Jab)
//          0x54e = Punch x3 (Jab)
//          0x54f = Punch x4 (Elbow)
//          0x550 = Punch x5 (Spin Elbow)
//          0x551 = Punch x6 (Uppercut)
//          0x558 = Final Attack (Special Attack 5/6)
//          0x559 = Final Attack (Special Attack)
//          0x55a = Final Attack (Special Attack)
//          0x55b = Multi Attack (Special Attack)
//          0x55c = Defense Break (Special Attack 6/6)
//          0x580 = Opening a Door/Vent while Crouched
//          0x598 = using Cam Hack
//          0x5ad = Going into a Beam
//          0x5ae = Leaving a Beam
//          0x5b3 = Drop Off Ladder
//          ───────────────── While Targeting an Enemy ─────────────────
//          0x20a = Acrobatic Jump
//          0x20b = Acrobatic Jump
//          0x22a = Arcobatic High Jump
//          0x42b = Kick x1
//          0x42c = Kick x2
//          0x42d = Kick x3
//          0x430 = Kick Spin
//          0x437 = Punch x1
//          0x438 = Punch x2
//          0x439 = Punch x3
//          0x43d = Punch (Back Elbow)
//          0x443 = Blocking Enemy Attack
//          0x445 = Standing Alert
//          0x446 = Standing Alert
//          0x447 = Standing Close to Enemy
//          0x448 = Standing Close to Enemy
//          0x53c = Jump Idle
//          0x53d = Jump Backflip
//          0x540 = Landing from Backflip
//          0x541 = Landing from Jump
//          0x545 = Kick Spin
//          0x562 = Jump Kick
//          0x563 = Jump Kick
//          0x564 = Jump Kick
//          ───────────────── Other Animations ─────────────────
//          0x15a = Dead
//          0x1fa = Targeting Enemy (Moving)
//          0x1fb = Targeting Enemy (Idle)
//          0x1f9 = Targeting Enemy (Moving)
//          0x49a = Punched
//          0x49b = Punched
//          0x49c = Punched
//          0x49d = Punched
//          0x49e = Punched
//          0x49f = Kicked
//          0x4a0 = Kicked
//          0x4a1 = Kicked
//          0x4a2 = Knocked Down
function player_actions_id() => word(0x40CBE0)

// $40CD68: [32-bit Pointer] Enemy Health
//          +0x10c
//          .+0x8c
//          ..+0x488 | [8-bit] Enemy Health
//          0x00 = Dead
//          0x01 = Downed
//          0x06 = Full (Easy, Normal difficulty)
//          0x09 = Full (Easy, Normal difficulty)
//          0x0c = Full (Challenging difficulty)
//          0x1b = Full (Challenging difficulty)
//          0x12 = Full (Challenging difficulty)
function enemy_health() => dword(0x40CD68)
function _0x8c() => dword((enemy_health() & 0x1FFFFFF) + 0x00010C)

// $40E090: [32-bit] Batmobile Mission Type
//          0x00 = Normal Mission
//          0x01 = Time Attack
function batmobile_mission_type() => dword(0x40E090)

// $40E100: [32-bit] Demon Batman Finish Activated
//          Note: Not affected by the scripted demon batman during scarecrow scene on lvl 12
//          0xff64877d = 1st Action Scene Performed
//          0xff646482 = 2nd Action Scene Performed
//          0xffffffff = Default (Goes back to this value when action is performed)
function demon_batman_finish_activated() => dword(0x40E100)

// $40F458: [32-bit] Game State 5/5
//          0x00 = In-game
//          0x01 = Paused / Menus / Area Complete
//          0x02 = Memory Card Related (Save, load screen etc)
function game_state_5_5() => dword(0x40F458)

// $40FA80: [32-bit] Difficulty
//          0x23 = Easy
//          0x15 = Normal
//          0x0e = Challenging
function difficulty() => dword(0x40FA80)

DifficultyLookup = {
    0x23: "Easy",
    0x15: "Normal",
    0x0e: "Challenging",
}

// $425810: [32-bit] Last Active FMV
//          ───────────────── Intro ─────────────────
//          0x94c000 = EA Logo
//          0x155400 = WBIE & DC Comics
//          0xe77000 = Demo
//          ───────────────── Interviews ─────────────────
//          0x29eb400 = Interview with the Cast
//          0x25e9000 = Interview with the Filmmakers
//          0x2843000 = Interview with EA
//          0x27fbc00 = Interview with the Writers
//          0x2f18400 = Interview with WBIE
//          ───────────────── Movie Footage ─────────────────
//          0xcc6000 = Teaser Trailer
//          0x580400 = TV Spot
//          0xd9a000 = Trailer
//          0x508400 = Prologue Intro
//          0x1e7800 = Prologue End
//          0x5ab400 = Himalayas Intro
//          0x322800 = Himalayas End
//          0x3d1000 = Gotham Docks Intro
//          0x5d8400 = Gotham Docks End
//          0x3fa400 = Passage to Gotham Intro
//          0x41c000 = Passage to Gotham End
//          0x25a000 = Gotham City Intro
//          0x2c3000 = Gotham City End
//          0x593000 = Arkham Asylum Intro
//          0x214800 = Arkham Asylum End
//          0x2d3c00 = Saving Rachel Intro
//          0x3f2c00 = Saving Rachel End
//          0x4bf000 = Wayne Manor Intro
//          0x440c00 = Wayne Manor End
//          0x34a000 = Narrows Intro
//          0x5bc400 = Narrows End
//          ───────────────── Other Languages ─────────────────
//          0x443400 = Wayne Manor End
function last_active_fmv() => dword(0x425810)

// $425AA4: [32-bit] Satlink Cam
//          0x846 = Default
//          0x866 = Default (EU only?)
//          0x06 = Cam Active
function satlink_cam() => dword(0x425AA4)

// $42D2C4: [32-bit] Modes
//          0x42ab40 = Time Attack
//          0x430680 = Normal
function modes() => dword(0x42D2C4)

// $439828: [32-bit] Context Prompt ID (Static)
//          0x4300105d = Use
//          0x43001084 = Exit
//          0x4300108d = Take
//          0x43001414 = Grapple
//          0x4300144b = Open
//          0x430014d4 = Interrogate/Drop and Finish
//          0x43001538 = Stealth
function context_prompt_id() => dword(0x439828)

Health1Lookup = {
    0x00: "0%",
    0x01: "3%",
    0x02: "6%",
    0x03: "9%",
    0x04: "11%",
    0x05: "14%",
    0x06: "17%",
    0x07: "20%",
    0x08: "23%",
    0x09: "26%",
    0x0a: "29%",
    0x0b: "31%",
    0x0c: "34%",
    0x0d: "37%",
    0x0e: "40%",
    0x0f: "43%",
    0x10: "46%",
    0x11: "49%",
    0x12: "51%",
    0x13: "54%",
    0x14: "57%",
    0x15: "60%",
    0x16: "63%",
    0x17: "66%",
    0x18: "69%",
    0x19: "71%",
    0x1a: "74%",
    0x1b: "77%",
    0x1c: "80%",
    0x1d: "83%",
    0x1e: "86%",
    0x1f: "89%",
    0x20: "91%",
    0x21: "94%",
    0x22: "97%",
    0x23: "100%",
}

Health2Lookup = {
    0x00: "0%",
    0x01: "5%",
    0x02: "10%",
    0x03: "14%",
    0x04: "19%",
    0x05: "24%",
    0x06: "29%",
    0x07: "33%",
    0x08: "38%",
    0x09: "43%",
    0x0a: "48%",
    0x0b: "52%",
    0x0c: "57%",
    0x0d: "62%",
    0x0e: "67%",
    0x0f: "71%",
    0x10: "76%",
    0x11: "81%",
    0x12: "86%",
    0x13: "90%",
    0x14: "95%",
    0x15: "100%",
}

Health3Lookup = {
    0x00: "0%",
    0x01: "7%",
    0x02: "14%",
    0x03: "21%",
    0x04: "28%",
    0x05: "35%",
    0x06: "42%",
    0x07: "50%",
    0x08: "57%",
    0x09: "64%",
    0x0a: "71%",
    0x0b: "78%",
    0x0c: "85%",
    0x0d: "92%",
    0x0e: "100%",
}

achievement(
    title = "Why Do We Fall?", points = 5, type="progression",
    description = "Complete the Prologue on any difficulty",
    id = 539704, badge = "613445", published = "8/26/2025 10:26:18 AM", modified = "8/26/2025 9:14:02 PM",
    trigger = last_active_fmv() == 0x1E7800 && level_1_prologue_end_scene_watched_flag() == 0x01 &&
              level_id_1_5() == 0x1A && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 &&
              current_player_location() == 0x17 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Mind Your Surroundings", points = 5, type="progression",
    description = "Complete The Himalayas - League of Shadows Monastery on any difficulty",
    id = 539705, badge = "613446", published = "8/26/2025 10:26:19 AM", modified = "8/26/2025 9:14:03 PM",
    trigger = last_active_fmv() == 0x322800 && level_2_himalayas_end_scene_viewed_flag() == 0x01 &&
              (level_id_1_5() == 0x19 || level_id_1_5() == 0x21) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x02 && (level_id_5_5() == 0x06 || level_id_5_5() == 0x08) &&
              current_player_location() == 0x08 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Fear Is a Tool", points = 10, type="progression",
    description = "Complete Gotham Docks - The Fall of Falcone on any difficulty",
    id = 539706, badge = "613447", published = "8/26/2025 10:26:19 AM", modified = "8/26/2025 9:14:03 PM",
    trigger = level_id_1_5() == 0x16 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x03 &&
              level_id_5_5() == 0x0A && current_player_location() == 0x0C && reputation() == 0x00 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "It's Not Who You Are Underneath", points = 10, type="progression",
    description = "Complete Gotham Docks - Inside Gotham Docks on any difficulty",
    id = 539707, badge = "613448", published = "8/26/2025 10:26:19 AM", modified = "8/26/2025 9:14:03 PM",
    trigger = last_active_fmv() == 0x5D8400 && level_3_gotham_docks_end_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x04 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x03 &&
              level_id_5_5() == 0x0C && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "It Starts Tonight", points = 10, type="progression",
    description = "Complete Passage to Gotham on any difficulty",
    id = 539708, badge = "613449", published = "8/26/2025 10:26:20 AM", modified = "8/26/2025 9:14:03 PM",
    trigger = last_active_fmv() == 0x41C000 && level_4_passage_to_gotham_end_scene_viewed_flag() == 0x01 &&
              level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
              game_state_1_5() == 0xFFFFFFFF && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "City of Shadows", points = 10, type="progression",
    description = "Complete Gotham City - The Black Market on any difficulty",
    id = 539709, badge = "613450", published = "8/26/2025 10:26:20 AM", modified = "8/26/2025 9:14:03 PM",
    trigger = level_id_1_5() == 0x1B && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x04 &&
              level_id_5_5() == 0x12 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Hall of Hallucinations", points = 10, type="progression",
    description = "Complete Narrows Island - Abandoned Museum on any difficulty",
    id = 539710, badge = "613451", published = "8/26/2025 10:26:20 AM", modified = "8/26/2025 9:14:04 PM",
    trigger = last_active_fmv() == 0x2C3000 && level_5_gotham_city_end_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x13 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x04 &&
              level_id_5_5() == 0x14 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "The Good Doctor Crane", points = 10, type="progression",
    description = "Complete Arkham Asylum on any difficulty",
    id = 539711, badge = "613452", published = "8/26/2025 10:26:20 AM", modified = "8/26/2025 9:14:04 PM",
    trigger = level_id_1_5() == 0x15 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x05 &&
              (level_id_5_5() == 0x1A || level_id_5_5() == 0x1B) && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Emergency Extraction", points = 10, type="progression",
    description = "Complete Escape from Arkham on any difficulty",
    id = 539712, badge = "613453", published = "8/26/2025 10:26:21 AM", modified = "8/26/2025 9:14:04 PM",
    trigger = last_active_fmv() == 0x214800 && level_6_arkham_asylum_end_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x01 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x05 &&
              level_id_5_5() == 0x1C && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "The Rescue", points = 10, type="progression",
    description = "Complete Saving Rachel on any difficulty",
    id = 539713, badge = "613454", published = "8/26/2025 10:26:21 AM", modified = "8/26/2025 9:14:04 PM",
    trigger = last_active_fmv() == 0x3F2C00 && level_7_saving_rachel_end_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x16 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 &&
              level_id_5_5() == 0x2D && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Defined by Action", points = 10, type="progression",
    description = "Complete Wayne Manor on any difficulty",
    id = 539714, badge = "613455", published = "8/26/2025 10:26:21 AM", modified = "9/20/2025 8:19:46 PM",
    trigger = (last_active_fmv() == 0x440C00 || last_active_fmv() == 0x443400) &&
              level_8_wayne_manor_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x32 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x06 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Flashpoint", points = 5, type="progression",
    description = "Complete Chaos on Narrows Island - Narrowborough Bridge on any difficulty",
    id = 539715, badge = "613456", published = "8/26/2025 10:26:21 AM", modified = "8/26/2025 9:14:05 PM",
    trigger = last_active_fmv() == 0x34A000 && level_9_narrows_intro_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x35 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x07 &&
              level_id_5_5() == 0x20 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "The Night Moves", points = 5, type="progression",
    description = "Complete The Monorail Tracks on any difficulty",
    id = 539716, badge = "613457", published = "8/26/2025 10:26:22 AM", modified = "8/26/2025 9:14:05 PM",
    trigger = level_id_1_5() == 0x36 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x07 &&
              (level_id_5_5() == 0x21 || level_id_5_5() == 0x22) && current_player_location() == 0x09 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Defender of Gotham", points = 25, type="win_condition",
    description = "Complete Monorail to Gotham on any difficulty",
    id = 539717, badge = "613458", published = "8/26/2025 10:26:22 AM", modified = "8/26/2025 9:14:05 PM",
    trigger = last_active_fmv() == 0x5BC400 && level_9_narrows_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x04 &&
              level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x07 && level_id_5_5() == 0x23 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Rising from the Fall", points = 5,
    description = "Complete the Prologue on Challenging difficulty",
    id = 539718, badge = "613459", published = "8/26/2025 10:26:22 AM", modified = "8/26/2025 9:14:06 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x1E7800 && level_1_prologue_end_scene_watched_flag() == 0x01 &&
              level_id_1_5() == 0x1A && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 &&
              current_player_location() == 0x17 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Are You Ready to Begin?", points = 5,
    description = "Complete The Himalayas - League of Shadows Monastery on Challenging difficulty",
    id = 539719, badge = "613460", published = "8/26/2025 10:26:22 AM", modified = "8/26/2025 9:14:06 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x322800 && level_2_himalayas_end_scene_viewed_flag() == 0x01 &&
              (level_id_1_5() == 0x19 || level_id_1_5() == 0x21) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x02 && (level_id_5_5() == 0x06 || level_id_5_5() == 0x08) &&
              current_player_location() == 0x08 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Fear Becomes Reality", points = 10,
    description = "Complete Gotham Docks - The Fall of Falcone on Challenging difficulty",
    id = 539720, badge = "613461", published = "8/26/2025 10:26:23 AM", modified = "8/26/2025 9:14:06 PM",
    trigger = difficulty() == 0x0E && level_id_1_5() == 0x16 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x03 && level_id_5_5() == 0x0A && current_player_location() == 0x0C &&
              reputation() == 0x00 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "It's What You Do That Defines You", points = 10,
    description = "Complete Gotham Docks - Inside Gotham Docks on Challenging difficulty",
    id = 539721, badge = "613462", published = "8/26/2025 10:26:23 AM", modified = "8/26/2025 9:14:07 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x5D8400 &&
              level_3_gotham_docks_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x04 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x03 && level_id_5_5() == 0x0C &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "The Night Begins", points = 10,
    description = "Complete Passage to Gotham on Challenging difficulty",
    id = 539722, badge = "613463", published = "8/26/2025 10:26:23 AM", modified = "8/26/2025 9:14:07 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x41C000 &&
              level_4_passage_to_gotham_end_scene_viewed_flag() == 0x01 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
              game_state_1_5() == 0xFFFFFFFF && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Fear What You Don't Understand", points = 10,
    description = "Complete Gotham City - The Black Market on Challenging difficulty",
    id = 539723, badge = "613464", published = "8/26/2025 10:26:23 AM", modified = "8/26/2025 9:14:07 PM",
    trigger = difficulty() == 0x0E && level_id_1_5() == 0x1B && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x04 && level_id_5_5() == 0x12 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Deja-vu", points = 10,
    description = "Complete Narrows Island - Abandoned Museum on Challenging difficulty",
    id = 539724, badge = "613465", published = "8/26/2025 10:26:24 AM", modified = "8/26/2025 9:14:08 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x2C3000 &&
              level_5_gotham_city_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x13 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x04 && level_id_5_5() == 0x14 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "This Is Where We Make the Medicine", points = 10,
    description = "Complete Arkham Asylum on Challenging difficulty",
    id = 539725, badge = "613466", published = "8/26/2025 10:26:24 AM", modified = "8/26/2025 9:14:08 PM",
    trigger = difficulty() == 0x0E && level_id_1_5() == 0x15 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x05 && (level_id_5_5() == 0x1A || level_id_5_5() == 0x1B) &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Extraction Under Fire", points = 10,
    description = "Complete Escape from Arkham on Challenging difficulty",
    id = 539726, badge = "613467", published = "8/26/2025 10:26:24 AM", modified = "8/26/2025 9:14:08 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x214800 &&
              level_6_arkham_asylum_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x01 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x05 && level_id_5_5() == 0x1C &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Safe Passage", points = 10,
    description = "Complete Saving Rachel on Challenging difficulty",
    id = 539727, badge = "613468", published = "8/26/2025 10:26:25 AM", modified = "8/26/2025 9:14:09 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x3F2C00 &&
              level_7_saving_rachel_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x16 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x2D &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Underneath the Mask", points = 10,
    description = "Complete Wayne Manor on Challenging difficulty",
    id = 539728, badge = "613469", published = "8/26/2025 10:26:25 AM", modified = "9/20/2025 8:19:59 PM",
    trigger = difficulty() == 0x0E && (last_active_fmv() == 0x440C00 || last_active_fmv() == 0x443400) &&
              level_8_wayne_manor_end_scene_viewed_flag() == 0x01 && level_id_1_5() == 0x32 && level_id_2_5() == 0x00 &&
              level_id_3_5() == 0xFF && level_id_4_5() == 0x06 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Edge of Chaos", points = 5,
    description = "Complete Chaos on Narrows Island - Narrowborough Bridge on Challenging difficulty",
    id = 539729, badge = "613470", published = "8/26/2025 10:26:26 AM", modified = "8/26/2025 9:14:10 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x34A000 && level_9_narrows_intro_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x35 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x07 &&
              level_id_5_5() == 0x20 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "The Night Rises", points = 5,
    description = "Complete The Monorail Tracks on Challenging difficulty",
    id = 539730, badge = "613471", published = "8/26/2025 10:26:26 AM", modified = "8/26/2025 9:14:10 PM",
    trigger = difficulty() == 0x0E && level_id_1_5() == 0x36 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x07 && (level_id_5_5() == 0x21 || level_id_5_5() == 0x22) &&
              current_player_location() == 0x09 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Gotham's True Defender", points = 25,
    description = "Complete Monorail to Gotham on Challenging difficulty",
    id = 539731, badge = "613472", published = "8/26/2025 10:26:26 AM", modified = "8/26/2025 9:14:10 PM",
    trigger = difficulty() == 0x0E && last_active_fmv() == 0x5BC400 && level_9_narrows_end_scene_viewed_flag() == 0x01 &&
              level_id_1_5() == 0x04 && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x07 &&
              level_id_5_5() == 0x23 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Gotham in a Hurry", points = 5,
    description = "In Time Attack mode, finish Passage to Gotham in any time",
    id = 539732, badge = "613473", published = "8/26/2025 10:26:26 AM", modified = "8/26/2025 9:14:10 PM",
    trigger = batmobile_mission_type() == 0x01 && modes() == 0x42AB40 && level_id_1_5() == 0x04 &&
              level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
              current_player_location() == 0x00 && batmobile_total_reputation_by_percentage() == 0x00 &&
              batmobile_total_takedowns() == 0x00 && batmobile_total_multiple_takedowns() == 0x00 &&
              batmobile_total_enemy_damage_in_cash() == 0x00 && batmobile_total_takedown() == 0x00 &&
              batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Faster than Fear", points = 10,
    description = "In Time Attack mode, beat the 6:17:53 record on Passage to Gotham",
    id = 539733, badge = "613474", published = "8/26/2025 10:26:27 AM", modified = "8/26/2025 9:14:11 PM",
    trigger = batmobile_mission_type() == 0x01 && modes() == 0x42AB40 && level_id_1_5() == 0x04 &&
              level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
              current_player_location() == 0x00 && level_time() > 0.0 && level_time() <= 377.53 &&
              batmobile_total_reputation_by_percentage() == 0x00 && batmobile_total_takedowns() == 0x00 &&
              batmobile_total_multiple_takedowns() == 0x00 && batmobile_total_enemy_damage_in_cash() == 0x00 &&
              batmobile_total_takedown() == 0x00 && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Race Against Darkness", points = 5,
    description = "In Time Attack mode, finish Saving Rachel in any time",
    id = 539734, badge = "613475", published = "8/26/2025 10:26:28 AM", modified = "11/9/2025 4:24:17 PM",
    trigger = (modes() == 0x42AB40 || batmobile_mission_type() == 0x01) &&
              (level_id_1_5() == 0x16 || level_id_1_5() == 0x04) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x01 && level_id_5_5() == 0x2D && current_player_location() == 0x00 &&
              batmobile_total_reputation_by_percentage() == 0x00 && batmobile_total_takedowns() == 0x00 &&
              batmobile_total_multiple_takedowns() == 0x00 && batmobile_total_enemy_damage_in_cash() == 0x00 &&
              batmobile_total_takedown() == 0x00 && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
              game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Full Throttle", points = 10,
    description = "In Time Attack mode, beat the 6:43:73 record on Saving Rachel",
    id = 539735, badge = "613476", published = "8/26/2025 10:26:28 AM", modified = "8/26/2025 9:14:11 PM",
    trigger = batmobile_mission_type() == 0x01 && modes() == 0x42AB40 &&
              (level_id_1_5() == 0x16 || level_id_1_5() == 0x04) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
              level_id_4_5() == 0x01 && level_id_5_5() == 0x2D && current_player_location() == 0x00 &&
              level_time() > 0.0 && level_time() <= 403.73 && batmobile_total_reputation_by_percentage() == 0x00 &&
              batmobile_total_takedowns() == 0x00 && batmobile_total_multiple_takedowns() == 0x00 &&
              batmobile_total_enemy_damage_in_cash() == 0x00 && batmobile_total_takedown() == 0x00 &&
              batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 && game_state_1_5() == 0xFFFFFFFF &&
              (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
)

achievement(
    title = "Mr. Nice Bat", points = 10,
    description = "In Passage to Gotham Mission mode, maintain a 100% reputation, then complete the level",
    id = 539736, badge = "613477", published = "8/26/2025 10:26:28 AM", modified = "8/26/2025 9:14:11 PM",
    trigger = measured(batmobile_total_reputation_by_percentage() == 0x14,
                  when=((((((level_id_1_5() == 0x04 || level_id_1_5() == 0x07) && level_id_2_5() == 0x12 &&
                  
                  level_id_3_5() == 0x42) || level_id_3_5() == 0x43 || level_id_3_5() == 0x44) &&
                  level_id_4_5() == 0x01 &&
                  level_id_5_5() == 0x25) || level_id_5_5() == 0x26 ||
                  level_id_5_5() == 0x27) &&
                  current_player_location() == 0x00 &&
                  last_active_fmv() == 0x3FA400) || last_active_fmv() == 0x41C000
              , format="percent"
              ) &&
              trigger_when((last_active_fmv() == 0x41C000 &&
                  level_4_passage_to_gotham_end_scene_viewed_flag() == 0x01 && level_id_2_5() == 0x00 &&
                  level_id_3_5() == 0xFF && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
                  game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01)
              )
)

achievement(
    title = "Smash Squad", points = 10,
    description = "In Passage to Gotham Mission mode, perform 30 multiple enemy takedowns with the Batmobile by destroying enemy vehicles simultaneously",
    id = 539737, badge = "613478", published = "8/26/2025 10:26:29 AM", modified = "8/26/2025 9:14:13 PM",
    trigger = measured(prev(batmobile_total_multiple_takedowns() == 0x1D &&
                  batmobile_total_multiple_takedowns() >= 0x1E),
                  when=(((((level_id_1_5() == 0x04 || level_id_1_5() == 0x07) && level_id_2_5() == 0x12 &&
                  
                  level_id_3_5() == 0x42) || level_id_3_5() == 0x43 || level_id_3_5() == 0x44) &&
                  level_id_4_5() == 0x01 &&
                  level_id_5_5() == 0x25) || level_id_5_5() == 0x26 ||
                  level_id_5_5() == 0x27) &&
                  current_player_location() == 0x00 &&
                  last_active_fmv() == 0x3FA400
              
              )
)

achievement(
    title = "Controlled Chaos", points = 10,
    description = "In Saving Rachel Mission mode, destroy 20 police squad cars with the Batmobile while avoiding civilian vehicles in a single run",
    id = 539738, badge = "613479", published = "8/26/2025 10:26:29 AM", modified = "8/26/2025 9:14:13 PM",
    trigger = measured(tally(20,
                  (((((level_id_1_5() == 0x01 || level_id_1_5() == 0x02 || level_id_1_5() == 0x03 ||
                  level_id_1_5() == 0x05 || level_id_1_5() == 0x16) && level_id_2_5() == 0x12 && level_id_3_5() == 0x34) ||
                  level_id_3_5() == 0x35 || level_id_3_5() == 0x37 || level_id_3_5() == 0x38) && level_id_4_5() == 0x01 &&
                  level_id_5_5() == 0x29) || level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D) &&
                  current_player_location() == 0x00 && last_active_fmv() == 0x2D3C00 &&
                  batmobile_total_multiple_takedowns() > prev(batmobile_total_multiple_takedowns()) ||
                  batmobile_total_takedowns() > prev(batmobile_total_takedowns()),
                  deduct((last_active_fmv() == 0x2D3C00 && batmobile_total_takedown() > prev(batmobile_total_takedown()))),
                  deduct(batmobile_total_takedown() > prev(batmobile_total_takedown())))
              ) &&
              never((level_id_2_5() == 0x13 || level_id_3_5() == 0x46 ||
                  batmobile_total_takedowns() < prev(batmobile_total_takedowns()))
              ) && unless(last_active_fmv() != 0x2D3C00)
)

achievement(
    title = "Breaking the Limits", points = 10,
    description = "In Time Attack mode, reach and maintain a speed above 200mph in the Batmobile for 15 consecutive seconds",
    id = 539739, badge = "613480", published = "8/26/2025 10:26:29 AM", modified = "8/26/2025 9:14:13 PM",
    trigger = ((measured(tally(900,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x1E && level_id_1_5() == 0x04) ||
                    level_id_1_5() == 0x07) && level_id_2_5() == 0x12 && level_id_3_5() == 0x42) ||
                    level_id_3_5() == 0x43 || level_id_3_5() == 0x44) && level_id_4_5() == 0x01 &&
                    level_id_5_5() == 0x25) || level_id_5_5() == 0x26 || level_id_5_5() == 0x27) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x1E && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 61.0), format="percent"
                ) && never((fps_dev_only() == 0x1E && float(dword(_0x84c() + 0x850) + 0x460) > 90.0)) &&
                never((fps_dev_only() == 0x1E && float(dword(_0x84c() + 0x850) + 0x460) < 61.0)) &&
                unless(game_state_3_5() == 0x01)) ||
               (measured(tally(900,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x19 && level_id_1_5() == 0x04) ||
                    level_id_1_5() == 0x07) && level_id_2_5() == 0x12 && level_id_3_5() == 0x42) ||
                    level_id_3_5() == 0x43 || level_id_3_5() == 0x44) && level_id_4_5() == 0x01 &&
                    level_id_5_5() == 0x25) || level_id_5_5() == 0x26 || level_id_5_5() == 0x27) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x19 && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 71.0, repeated(150,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x19 && level_id_1_5() == 0x04) ||
                    level_id_1_5() == 0x07) && level_id_2_5() == 0x12 && level_id_3_5() == 0x42) ||
                    level_id_3_5() == 0x43 || level_id_3_5() == 0x44) && level_id_4_5() == 0x01 &&
                    level_id_5_5() == 0x25) || level_id_5_5() == 0x26 || level_id_5_5() == 0x27) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x19 && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 71.0)), format="percent"
                ) && never((fps_dev_only() == 0x19 && float(dword(_0x84c() + 0x850) + 0x460) > 90.0)) &&
                never((fps_dev_only() == 0x19 && float(dword(_0x84c() + 0x850) + 0x460) < 71.0)) &&
                unless(game_state_3_5() == 0x01)) ||
               (measured(tally(900,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x1E && level_id_1_5() == 0x01) ||
                    level_id_1_5() == 0x02 || level_id_1_5() == 0x03 || level_id_1_5() == 0x05 || level_id_1_5() == 0x16) &&
                    level_id_2_5() == 0x12 && level_id_3_5() == 0x34) || level_id_3_5() == 0x35 || level_id_3_5() == 0x37 ||
                    level_id_3_5() == 0x38) && level_id_4_5() == 0x01 && level_id_5_5() == 0x29) ||
                    level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x1E && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 61.0), format="percent"
                ) && never((fps_dev_only() == 0x1E && float(dword(_0x84c() + 0x850) + 0x460) > 90.0)) &&
                never((fps_dev_only() == 0x1E && float(dword(_0x84c() + 0x850) + 0x460) < 61.0)) &&
                unless(game_state_3_5() == 0x01)) ||
               (measured(tally(900,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x19 && level_id_1_5() == 0x01) ||
                    level_id_1_5() == 0x02 || level_id_1_5() == 0x03 || level_id_1_5() == 0x05 || level_id_1_5() == 0x16) &&
                    level_id_2_5() == 0x12 && level_id_3_5() == 0x34) || level_id_3_5() == 0x35 || level_id_3_5() == 0x37 ||
                    level_id_3_5() == 0x38) && level_id_4_5() == 0x01 && level_id_5_5() == 0x29) ||
                    level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x19 && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 71.0, repeated(150,
                    ((((((batmobile_mission_type() == 0x01 && fps_dev_only() == 0x19 && level_id_1_5() == 0x01) ||
                    level_id_1_5() == 0x02 || level_id_1_5() == 0x03 || level_id_1_5() == 0x05 || level_id_1_5() == 0x16) &&
                    level_id_2_5() == 0x12 && level_id_3_5() == 0x34) || level_id_3_5() == 0x35 || level_id_3_5() == 0x37 ||
                    level_id_3_5() == 0x38) && level_id_4_5() == 0x01 && level_id_5_5() == 0x29) ||
                    level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D) &&
                    current_player_location() == 0x00 && fps_dev_only() == 0x19 && level_time() > 10.0 &&
                    game_state_2_5() != 0x04 && float(dword(_0x84c() + 0x850) + 0x460) >= 71.0)), format="percent"
                ) && never((fps_dev_only() == 0x19 && float(dword(_0x84c() + 0x850) + 0x460) > 90.0)) &&
                never((fps_dev_only() == 0x19 && float(dword(_0x84c() + 0x850) + 0x460) < 71.0)) &&
                unless(game_state_3_5() == 0x01)))
)

achievement(
    title = "Silent as the Night", points = 5,
    description = "Perform 10 stealth attacks in a single session outside Prologue and Training",
    id = 539740, badge = "613481", published = "8/26/2025 10:26:30 AM", modified = "8/26/2025 9:14:13 PM",
    trigger = game_state_2_5() == 0x00 && prev(total_stealth_kills_performed_1_2()) == 0x09 &&
              measured(total_stealth_kills_performed_1_2() == 0x0A) &&
              unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C))
)

achievement(
    title = "Back on Your Feet", points = 5,
    description = "Deliver 10 ground attacks while recovering from a knockdown in a single session outside Prologue and Training",
    id = 539741, badge = "613482", published = "8/26/2025 10:26:30 AM", modified = "8/26/2025 9:14:13 PM",
    trigger = measured(tally(10,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x535) && word(dword(_0x84c() + 0x848) + 0x188) != 0x535)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "The Art of Defense", points = 5,
    description = "Counter 10 enemy attacks in a single session outside Prologue and Training",
    id = 539742, badge = "613483", published = "8/26/2025 10:26:30 AM", modified = "8/26/2025 9:14:14 PM",
    trigger = measured(tally(10,
                  (word(dword(_0x84c() + 0x848) + 0x188) == 0x2D5) &&
                  prev(dword(dword(_0x84c() + 0x848) + 0x100)) == 0x35 && dword(dword(_0x84c() + 0x848) + 0x100) == 0x00)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Busted", points = 5,
    description = "Break enemy guards 15 times while they are defending in a single session outside Prologue and Training",
    id = 539743, badge = "613484", published = "8/26/2025 10:26:30 AM", modified = "8/26/2025 9:14:14 PM",
    trigger = measured(tally(15,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x55C) && word(dword(_0x84c() + 0x848) + 0x188) != 0x55C)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Acrobatic Justice", points = 5,
    description = "Perform 15 vault attacks on enemies in a single session outside Prologue and Training",
    id = 539744, badge = "613485", published = "8/26/2025 10:26:31 AM", modified = "8/26/2025 9:14:14 PM",
    trigger = measured(tally(15,
                  (word(dword(_0x84c() + 0x848) + 0x188) == 0x22A) &&
                  prev(dword(dword(_0x84c() + 0x848) + 0x100)) != 0x04 && dword(dword(_0x84c() + 0x848) + 0x100) == 0x04)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Kickstarter", points = 5,
    description = "Land a jump kick on 10 enemies in a single session outside Prologue and Training",
    id = 539745, badge = "613486", published = "8/26/2025 10:26:31 AM", modified = "8/26/2025 9:14:14 PM",
    trigger = measured(tally(10,
                  (((enemy_proximity() >= 0x07 && word(dword(_0x84c() + 0x848) + 0x188) == 0x562)) ||
                  word(dword(_0x84c() + 0x848) + 0x188) == 0x563 || word(dword(_0x84c() + 0x848) + 0x188) == 0x564) &&
                  prev(byte(dword(_0x8c() + 0x8C) + 0x488)) <= 0x1B && prev(byte(dword(_0x8c() + 0x8C) + 0x488)) > 0x01 &&
                  byte(dword(_0x8c() + 0x8C) + 0x488) < prev(byte(dword(_0x8c() + 0x8C) + 0x488)))
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Master of Combat", points = 5,
    description = "Perform 20 multi attacks against groups of enemies in a single session outside Prologue and Training",
    id = 539746, badge = "613487", published = "8/26/2025 10:26:31 AM", modified = "8/26/2025 9:14:15 PM",
    trigger = measured(tally(20,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x536) && word(dword(_0x84c() + 0x848) + 0x188) != 0x536,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x55B) && word(dword(_0x84c() + 0x848) + 0x188) != 0x55B)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Jaw Breaker", points = 5,
    description = "Perform a roll and punch 15 enemies in a single session outside Prologue and Training",
    id = 539747, badge = "613488", published = "8/26/2025 10:26:31 AM", modified = "8/26/2025 9:14:16 PM",
    trigger = measured(tally(15,
                  (enemy_proximity() >= 0x07 && word(dword(_0x84c() + 0x848) + 0x188) == 0x407 &&
                  prev(byte(dword(_0x8c() + 0x8C) + 0x488)) <= 0x1B && prev(byte(dword(_0x8c() + 0x8C) + 0x488)) > 0x01 &&
                  byte(dword(_0x8c() + 0x8C) + 0x488) < prev(byte(dword(_0x8c() + 0x8C) + 0x488))))
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Last Word", points = 5,
    description = "Finish off 15 enemies with final attacks in a single session outside Prologue and Training",
    id = 539748, badge = "613489", published = "8/26/2025 10:26:32 AM", modified = "8/26/2025 9:14:16 PM",
    trigger = measured(tally(15,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x558) && word(dword(_0x84c() + 0x848) + 0x188) != 0x558,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x559) && word(dword(_0x84c() + 0x848) + 0x188) != 0x559,
                  (prev(word(dword(_0x84c() + 0x848) + 0x188)) == 0x55A) && word(dword(_0x84c() + 0x848) + 0x188) != 0x55A)
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Fear Factory", points = 5,
    description = "Defeat 7 enemies while Area Fear is above 50% in a single session outside Prologue and Training",
    id = 539749, badge = "613490", published = "8/26/2025 10:26:33 AM", modified = "8/26/2025 9:14:16 PM",
    trigger = measured(tally(7,
                  (area_fear_meter() > 50.0 && enemy_proximity() >= 0x07 &&
                  prev(byte(dword(_0x8c() + 0x8C) + 0x488)) <= 0x1B && prev(byte(dword(_0x8c() + 0x8C) + 0x488)) >= 0x02 &&
                  byte(dword(_0x8c() + 0x8C) + 0x488) <= 0x01),
                  (area_fear_meter() > 50.0 &&
                  total_enemies_killed_using_a_finish_move() > prev(total_enemies_killed_using_a_finish_move())))
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C)) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Knocked Out", points = 5,
    description = "Take down 5 fearful enemies with a finishing move in a single session outside Prologue and Training",
    id = 539750, badge = "613491", published = "8/26/2025 10:26:33 AM", modified = "8/26/2025 9:14:17 PM",
    trigger = measured(repeated(5,
                  prev(context_prompt_id()) == 0x430014D4 && context_prompt_id() == 0x00 &&
                  total_enemies_killed_using_a_finish_move_per_level() >
                  prev(total_enemies_killed_using_a_finish_move_per_level()))
              ) && unless((level_id_2_5() == 0x0B || level_id_2_5() == 0x0C))
)

achievement(
    title = "Under Pressure", points = 2,
    description = "Push an interrogation to its limit",
    id = 539751, badge = "613492", published = "8/26/2025 10:26:33 AM", modified = "8/26/2025 9:14:17 PM",
    trigger = ((prev(dword(dword(dword(_0x174() + 0x174) + 0x08) + 0x570)) == 0x1000001) ||
              prev(dword(dword(dword(_0x174() + 0x174) + 0x08) + 0x570)) == 0x1010001) &&
              dword(dword(dword(_0x174() + 0x174) + 0x08) + 0x570) == 0x01 &&
              disable_when(level_id_2_5() == 0x0F && current_player_location() == 0x0E && player_actions_id() == 0x27E) &&
              unless((level_id_2_5() == 0x0B) || level_id_2_5() == 0x0C) &&
              (always_false() || (never(game_state_3_5() == 0x01)))
)

achievement(
    title = "Face Your Fear", points = 3,
    description = "Scare an enemy until they see Batman as a demon",
    id = 539752, badge = "613493", published = "8/26/2025 10:26:33 AM", modified = "8/26/2025 9:14:17 PM",
    trigger = game_state_2_5() == 0x00 && prev(demon_batman_finish_activated()) == 0xFF646482 &&
              demon_batman_finish_activated() == 0xFFFFFFFF
)

achievement(
    title = "Gadget Strike", points = 3,
    description = "Use any 10 gadgets against enemies, in one session",
    id = 539753, badge = "613494", published = "8/26/2025 10:26:34 AM", modified = "8/26/2025 9:14:17 PM",
    trigger = measured(tally(10,
                  (player_actions_id() == 0x218 && prev(dword(_0x04_batarang_obtained_flag() + 0x14)) < 0x64 &&
                  dword(_0x04_batarang_obtained_flag() + 0x14) < prev(dword(_0x04_batarang_obtained_flag() + 0x14))),
                  (player_actions_id() == 0x218 && prev(dword(_0x04_batarang_obtained_flag() + 0x24)) < 0x64 &&
                  dword(_0x04_batarang_obtained_flag() + 0x24) < prev(dword(_0x04_batarang_obtained_flag() + 0x24))),
                  (player_actions_id() == 0x218 && prev(dword(_0x04_batarang_obtained_flag() + 0x34)) < 0x64 &&
                  dword(_0x04_batarang_obtained_flag() + 0x34) < prev(dword(_0x04_batarang_obtained_flag() + 0x34))))
              )
)

achievement(
    title = "Night Glider", points = 4, type="missable",
    description = "Glide for 17 consecutive seconds from a high point in Gotham City, then land safely",
    id = 539754, badge = "613495", published = "8/26/2025 10:26:34 AM", modified = "8/26/2025 9:14:18 PM",
    trigger = ((measured(tally(1020,
                    (fps_dev_only() == 0x1E && level_id_5_5() != 0x05 && player_actions_id() == 0x203)), format="percent"
                ) && (prev(player_actions_id()) == 0x203 && player_actions_id() == 0x204) &&
                never((player_actions_id() == 0x03 || player_actions_id() == 0x07 || player_actions_id() == 0x3F)) &&
                unless((game_state_2_5() == 0x04 || level_id_2_5() != 0x0E))) ||
               (measured(tally(1020, (fps_dev_only() == 0x19 && level_id_5_5() != 0x05 && player_actions_id() == 0x203),
                    repeated(220, fps_dev_only() == 0x19 && level_id_5_5() != 0x05 && player_actions_id() == 0x203)),
                    format="percent"
                ) && (prev(player_actions_id()) == 0x203 && player_actions_id() == 0x204) &&
                never((player_actions_id() == 0x03 || player_actions_id() == 0x07 || player_actions_id() == 0x3F)) &&
                unless((game_state_2_5() == 0x04 || level_id_2_5() != 0x0E))))
)

achievement(
    title = "Scram!", points = 1, type="missable",
    description = "Provoke the guard through the intercom in Gotham City's Black Market parking lot",
    id = 539755, badge = "613496", published = "8/26/2025 10:26:35 AM", modified = "8/26/2025 9:14:18 PM",
    trigger = tally(8,
                  (level_id_2_5() == 0x0E && level_id_3_5() == 0x0E && level_id_4_5() == 0x04 && level_id_5_5() == 0x0D &&
                  player_position_z() >= -208.0 && player_position_z() <= -203.0 && player_position_x() >= 88.0 &&
                  player_position_x() <= 98.0 && prev(player_actions_id()) == 0xDC && player_actions_id() != 0xDC)
              ) && never((level_id_2_5() == 0x00 || level_id_5_5() == 0x35))
)

achievement(
    title = "Bat Creature?", points = 1, type="missable",
    description = "Overhear the rumors of the Bat Creature in Gotham City inside Black Market Club",
    id = 539756, badge = "613497", published = "8/26/2025 10:26:35 AM", modified = "8/26/2025 9:14:18 PM",
    trigger = never((level_id_2_5() == 0x00 || level_id_5_5() == 0x35)) &&
              ((measured(repeated(2100,
                    fps_dev_only() == 0x1E && level_id_2_5() == 0x0E && level_id_4_5() == 0x04 && level_id_5_5() == 0x0E &&
                    player_position_z() >= 0.0 && player_position_z() <= 4.0 && player_position_x() >= -18.0 &&
                    player_position_x() <= -15.0 && player_position_y() >= 10.5 && player_position_y() <= 14.0 &&
                    player_state() == 0xFFFF0FFF), format="percent"
                ) &&
                disable_when(player_position_z() >= 10.0 && player_position_z() <= 16.0 &&
                    player_position_x() >= -13.0 && player_position_x() <= -7.0 && player_position_y() >= 10.5 &&
                    player_position_y() <= 14.0 && satlink_cam_active_indicator() == 0x02
                ) && unless(game_state_2_5() == 0x04)) ||
               (measured(tally(2100,
                    (fps_dev_only() == 0x19 && level_id_2_5() == 0x0E && level_id_4_5() == 0x04 && level_id_5_5() == 0x0E &&
                    current_player_location() == 0x03 && player_position_z() >= 0.0 && player_position_z() <= 4.0 &&
                    player_position_x() >= -18.0 && player_position_x() <= -15.0 && player_position_y() >= 10.5 &&
                    player_position_y() <= 14.0 && player_state() == 0xFFFF0FFF), repeated(380,
                    fps_dev_only() == 0x19 && level_id_2_5() == 0x0E && level_id_4_5() == 0x04 && level_id_5_5() == 0x0E &&
                    current_player_location() == 0x03 && player_position_z() >= 0.0 && player_position_z() <= 4.0 &&
                    player_position_x() >= -18.0 && player_position_x() <= -15.0 && player_position_y() >= 10.5 &&
                    player_position_y() <= 14.0 && player_state() == 0xFFFF0FFF)), format="percent"
                ) &&
                disable_when(player_position_z() >= 10.0 && player_position_z() <= 16.0 &&
                    player_position_x() >= -13.0 && player_position_x() <= -7.0 && player_position_y() >= 10.5 &&
                    player_position_y() <= 14.0 && satlink_cam_active_indicator() == 0x02
                ) && unless(game_state_2_5() == 0x04)))
)

achievement(
    title = "The Price of Fear", points = 2, type="missable",
    description = "Try to help Dr. Thomas inside Arkham Asylum",
    id = 539757, badge = "613498", published = "8/26/2025 10:26:36 AM", modified = "11/8/2025 5:53:59 PM",
    trigger = tally(2,
                  once(level_id_2_5() == 0x0F && player_position_z() <= 410.0 && player_position_z() >= 400.0 &&
                  player_position_x() >= -20.0 && player_position_x() <= -16.0 && player_position_y() >= 15.0 &&
                  player_position_y() <= 20.0 && prev(player_state()) == 0x00 && player_state() == 0xB07FFF), repeated(2,
                  ((player_position_x() >= -18.0 && player_position_x() <= -16.0 && player_position_z() <= 407.0 &&
                  player_position_z() >= 400.0 && level_id_2_5() == 0x0F && current_player_location() == 0x1C) ||
                  current_player_location() == 0x1D || current_player_location() == 0x1E) && prev(satlink_cam()) == 0x06 &&
                  satlink_cam() != 0x06)
              ) && never(game_state_4_5() == 0x01)
)

achievement(
    title = "Behind the Curtain", points = 1,
    description = "View all Interviews in the bonus materials",
    id = 539758, badge = "613499", published = "8/26/2025 10:26:36 AM", modified = "8/26/2025 9:14:19 PM",
    trigger = measured(tally(5,
                  once(level_id_2_5() == 0x13 && prev(last_active_fmv()) != 0x29EB400 && last_active_fmv() == 0x29EB400),
                  once(level_id_2_5() == 0x13 && prev(last_active_fmv()) != 0x25E9000 && last_active_fmv() == 0x25E9000),
                  once(level_id_2_5() == 0x13 && prev(last_active_fmv()) != 0x2843000 && last_active_fmv() == 0x2843000),
                  once(level_id_2_5() == 0x13 && prev(last_active_fmv()) != 0x27FBC00 && last_active_fmv() == 0x27FBC00),
                  (level_id_2_5() == 0x13 && prev(last_active_fmv()) != 0x2F18400 && last_active_fmv() == 0x2F18400))
              ) && never(_21_bytes_ascii_serial() == 0x00)
)

achievement(
    title = "Hall of Notoriety", points = 2,
    description = "View two of Gotham's most infamous figures in the Gallery of Fear",
    id = 539759, badge = "613500", published = "8/26/2025 10:26:36 AM", modified = "8/26/2025 9:14:20 PM",
    trigger = measured(tally(2,
                  once(level_id_1_5() == 0x23 && level_id_2_5() == 0x64 && level_id_3_5() == 0x40 &&
                  level_id_4_5() == 0x01 && level_id_5_5() == 0x36 && player_position_x() <= -11.0 &&
                  player_position_x() >= -13.0 && player_position_z() <= 35.0 && player_position_z() >= 30.0 &&
                  prev(player_actions_id()) != 0xDC && player_actions_id() == 0xDC),
                  once(level_id_1_5() == 0x23 && level_id_2_5() == 0x64 && level_id_3_5() == 0x40 &&
                  level_id_4_5() == 0x01 && level_id_5_5() == 0x36 && player_position_x() <= -11.0 &&
                  player_position_x() >= -13.0 && player_position_z() <= 39.0 && player_position_z() >= 36.0 &&
                  prev(player_actions_id()) != 0xDC && player_actions_id() == 0xDC))
              ) && never(_21_bytes_ascii_serial() == 0x00)
)

leaderboard(
    id = 138339, title = "Time Attack: Passage to Gotham",
    description = "Fastest time to beat Passage to Gotham",
    start  = (modes() == 0x42AB40 || batmobile_mission_type() == 0x01) && level_id_1_5() == 0x04 &&
             level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
             current_player_location() == 0x00 && batmobile_total_reputation_by_percentage() == 0x00 &&
             batmobile_total_takedowns() == 0x00 && batmobile_total_multiple_takedowns() == 0x00 &&
             batmobile_total_enemy_damage_in_cash() == 0x00 && batmobile_total_takedown() == 0x00 &&
             batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 && game_state_1_5() == 0xFFFFFFFF &&
             (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01),
    cancel = prev(level_id_2_5()) != 0x13 && level_id_2_5() == 0x13,
    submit = (modes() == 0x42AB40 || batmobile_mission_type() == 0x01) && level_id_1_5() == 0x04 &&
             level_id_2_5() == 0x00 && level_id_3_5() == 0xFF && level_id_4_5() == 0x01 && level_id_5_5() == 0x27 &&
             current_player_location() == 0x00 && batmobile_total_reputation_by_percentage() == 0x00 &&
             batmobile_total_takedowns() == 0x00 && batmobile_total_multiple_takedowns() == 0x00 &&
             batmobile_total_enemy_damage_in_cash() == 0x00 && batmobile_total_takedown() == 0x00 &&
             batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 && game_state_1_5() == 0xFFFFFFFF &&
             (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01),
    value  = measured(level_time()),
    format = "SECS", lower_is_better = true
)

leaderboard(
    id = 138340, title = "Time Attack: Saving Rachel",
    description = "Fastest time to beat Saving Rachel",
    start  = (modes() == 0x42AB40 || batmobile_mission_type() == 0x01) &&
             (level_id_1_5() == 0x16 || level_id_1_5() == 0x04) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
             level_id_4_5() == 0x01 && level_id_5_5() == 0x2D && current_player_location() == 0x00 &&
             batmobile_total_reputation_by_percentage() == 0x00 && batmobile_total_takedowns() == 0x00 &&
             batmobile_total_multiple_takedowns() == 0x00 && batmobile_total_enemy_damage_in_cash() == 0x00 &&
             batmobile_total_takedown() == 0x00 && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
             game_state_1_5() == 0xFFFFFFFF &&
             (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01),
    cancel = prev(level_id_2_5()) != 0x13 && level_id_2_5() == 0x13,
    submit = (modes() == 0x42AB40 || batmobile_mission_type() == 0x01) &&
             (level_id_1_5() == 0x16 || level_id_1_5() == 0x04) && level_id_2_5() == 0x00 && level_id_3_5() == 0xFF &&
             level_id_4_5() == 0x01 && level_id_5_5() == 0x2D && current_player_location() == 0x00 &&
             batmobile_total_reputation_by_percentage() == 0x00 && batmobile_total_takedowns() == 0x00 &&
             batmobile_total_multiple_takedowns() == 0x00 && batmobile_total_enemy_damage_in_cash() == 0x00 &&
             batmobile_total_takedown() == 0x00 && batmobile_area_complete_game_over_cutscene_playing_flag() == 0x01 &&
             game_state_1_5() == 0xFFFFFFFF &&
             (game_state_3_5() == 0x01 && prev(game_state_5_5()) == 0x00 && game_state_5_5() == 0x01),
    value  = measured(level_time()),
    format = "SECS", lower_is_better = true
)

rich_presence_conditional_display((level_id_1_5() == 0x04 && level_id_2_5() == 0x13 && level_id_3_5() == 0x46 && level_id_5_5() == 0x35), "In the menus")

rich_presence_conditional_display(game_state_5_5() == 0x02, "In the menus")

rich_presence_conditional_display((level_id_2_5() == 0x00 && game_state_1_5() == 0xFFFFFFFF && game_state_3_5() == 0x01 && game_state_4_5() == 0x01 &&
        game_state_5_5() == 0x01
    ), "Area Complete")

rich_presence_conditional_display(level_id_1_5() == 0x23 &&
    (level_id_2_5() == 0x64 && level_id_3_5() == 0x40 && level_id_4_5() == 0x01 && level_id_5_5() == 0x36), "Gallery of Fear • {0}",
    rich_presence_lookup("GOF", current_player_location(), GOFLookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    (level_id_1_5() == 0x1A || level_id_1_5() == 0x20) && level_id_2_5() == 0x0B && level_id_3_5() == 0x04 &&
    level_id_4_5() == 0x01 && level_id_5_5() == 0x05, "Mission: Prologue - Gotham City - Narrows Island • 4AM • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    (level_id_1_5() == 0x1A || level_id_1_5() == 0x20) && level_id_2_5() == 0x0B && level_id_3_5() == 0x04 &&
    level_id_4_5() == 0x01 && level_id_5_5() == 0x05, "Mission: Prologue - Gotham City - Narrows Island • 4AM • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    (level_id_1_5() == 0x1A || level_id_1_5() == 0x20) && level_id_2_5() == 0x0B && level_id_3_5() == 0x04 &&
    level_id_4_5() == 0x01 && level_id_5_5() == 0x05, "Mission: Prologue - Gotham City - Narrows Island • 4AM • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 && batsuits_id() == 0x0B, "Mission: The Himalayas - League of Shadows Monastery • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 && batsuits_id() == 0x0B, "Mission: The Himalayas - League of Shadows Monastery • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E && batsuits_id() == 0x0B, "Mission: The Himalayas - League of Shadows Monastery • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((((level_id_1_5() == 0x15 || level_id_1_5() == 0x19) && level_id_2_5() == 0x0D && level_id_3_5() == 0x08) ||
    level_id_3_5() == 0x09) && level_id_4_5() == 0x03 && level_id_5_5() == 0x08) || level_id_5_5() == 0x09, "Mission: Gotham Docks - The Fall of Falcone • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((((level_id_1_5() == 0x15 || level_id_1_5() == 0x19) && level_id_2_5() == 0x0D && level_id_3_5() == 0x08) ||
    level_id_3_5() == 0x09) && level_id_4_5() == 0x03 && level_id_5_5() == 0x08) || level_id_5_5() == 0x09, "Mission: Gotham Docks - The Fall of Falcone • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((((level_id_1_5() == 0x15 || level_id_1_5() == 0x19) && level_id_2_5() == 0x0D && level_id_3_5() == 0x08) ||
    level_id_3_5() == 0x09) && level_id_4_5() == 0x03 && level_id_5_5() == 0x08) || level_id_5_5() == 0x09, "Mission: Gotham Docks - The Fall of Falcone • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((((level_id_1_5() == 0x16 || level_id_1_5() == 0x17 || level_id_1_5() == 0x18 || level_id_1_5() == 0x39) &&
    level_id_2_5() == 0x0D && level_id_3_5() == 0x0A) || level_id_3_5() == 0x0B || level_id_3_5() == 0x0C ||
    level_id_3_5() == 0x0D || level_id_3_5() == 0xFF) && level_id_4_5() == 0x03 && level_id_5_5() == 0x0A) ||
    level_id_5_5() == 0x0B || level_id_5_5() == 0x0C, "Mission: Gotham Docks - Inside Gotham Docks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((((level_id_1_5() == 0x16 || level_id_1_5() == 0x17 || level_id_1_5() == 0x18 || level_id_1_5() == 0x39) &&
    level_id_2_5() == 0x0D && level_id_3_5() == 0x0A) || level_id_3_5() == 0x0B || level_id_3_5() == 0x0C ||
    level_id_3_5() == 0x0D || level_id_3_5() == 0xFF) && level_id_4_5() == 0x03 && level_id_5_5() == 0x0A) ||
    level_id_5_5() == 0x0B || level_id_5_5() == 0x0C, "Mission: Gotham Docks - Inside Gotham Docks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((((level_id_1_5() == 0x16 || level_id_1_5() == 0x17 || level_id_1_5() == 0x18 || level_id_1_5() == 0x39) &&
    level_id_2_5() == 0x0D && level_id_3_5() == 0x0A) || level_id_3_5() == 0x0B || level_id_3_5() == 0x0C ||
    level_id_3_5() == 0x0D || level_id_3_5() == 0xFF) && level_id_4_5() == 0x03 && level_id_5_5() == 0x0A) ||
    level_id_5_5() == 0x0B || level_id_5_5() == 0x0C, "Mission: Gotham Docks - Inside Gotham Docks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(batmobile_mission_type() == 0x00 &&
    ((((level_id_1_5() == 0x04 || level_id_1_5() == 0x07) && level_id_2_5() == 0x12 && level_id_3_5() == 0x42) ||
    level_id_3_5() == 0x43 || level_id_3_5() == 0x44) && level_id_4_5() == 0x01 && level_id_5_5() == 0x25) ||
    level_id_5_5() == 0x26 || level_id_5_5() == 0x27, "Mission: Passage to Gotham • Time: {0} • Batmobile Durability: {1}% • Reputation: {2} • Takedowns: {3} • Multiple Takedowns: {4} • Casualties: {5} • Enemy Damages: ${6}",
    rich_presence_value("Seconds", level_time(), format="SECS"),
    rich_presence_value("Float2", float(dword(_0x60() + 0x60) + 0x3D4), format="FLOAT2"),
    rich_presence_lookup("Rep", batmobile_total_reputation_by_percentage(), RepLookup),
    rich_presence_value("Number", batmobile_total_takedowns()),
    rich_presence_value("Number", batmobile_total_multiple_takedowns()),
    rich_presence_value("Number", batmobile_total_takedown()),
    rich_presence_value("Number", batmobile_total_enemy_damage_in_cash())
)

rich_presence_conditional_display(batmobile_mission_type() == 0x01 &&
    ((((level_id_1_5() == 0x04 || level_id_1_5() == 0x07) && level_id_2_5() == 0x12 && level_id_3_5() == 0x42) ||
    level_id_3_5() == 0x43 || level_id_3_5() == 0x44) && level_id_4_5() == 0x01 && level_id_5_5() == 0x25) ||
    level_id_5_5() == 0x26 || level_id_5_5() == 0x27, "Time Attack: Passage to Gotham • Time: {0} • Batmobile Durability: {1}%",
    rich_presence_value("Seconds", level_time(), format="SECS"),
    rich_presence_value("Float2", float(dword(_0x60() + 0x60) + 0x3D4), format="FLOAT2")
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((level_id_1_5() == 0x17 && level_id_2_5() == 0x0E && level_id_3_5() == 0x0E) || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x04 && level_id_5_5() == 0x0D, "Mission: Gotham City - The Black Market - Parking Lot • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((level_id_1_5() == 0x17 && level_id_2_5() == 0x0E && level_id_3_5() == 0x0E) || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x04 && level_id_5_5() == 0x0D, "Mission: Gotham City - The Black Market - Parking Lot • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((level_id_1_5() == 0x17 && level_id_2_5() == 0x0E && level_id_3_5() == 0x0E) || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x04 && level_id_5_5() == 0x0D, "Mission: Gotham City - The Black Market - Parking Lot • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 && (level_id_4_5() == 0x04 && level_id_5_5() == 0x0E), "Mission: Gotham City - The Black Market - Inside Black Market Club • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 && (level_id_4_5() == 0x04 && level_id_5_5() == 0x0E), "Mission: Gotham City - The Black Market - Inside Black Market Club • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E && (level_id_4_5() == 0x04 && level_id_5_5() == 0x0E), "Mission: Gotham City - The Black Market - Inside Black Market Club • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 && (level_id_5_5() == 0x0F || level_id_5_5() == 0x10 || level_id_5_5() == 0x11), "Mission: Gotham City - The Black Market - Construction Site • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 && (level_id_5_5() == 0x0F || level_id_5_5() == 0x10 || level_id_5_5() == 0x11), "Mission: Gotham City - The Black Market - Construction Site • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E && (level_id_5_5() == 0x0F || level_id_5_5() == 0x10 || level_id_5_5() == 0x11), "Mission: Gotham City - The Black Market - Construction Site • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((((level_id_1_5() == 0x1B || level_id_1_5() == 0x2C || level_id_1_5() == 0x2D) && level_id_2_5() == 0x0E &&
    level_id_3_5() == 0x16) || level_id_3_5() == 0x17 || level_id_3_5() == 0x18) && level_id_4_5() == 0x04 &&
    level_id_5_5() == 0x12) || level_id_5_5() == 0x13 || level_id_5_5() == 0x14, "Mission: Narrows Island - Abandoned Museum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x20 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((((level_id_1_5() == 0x1B || level_id_1_5() == 0x2C || level_id_1_5() == 0x2D) && level_id_2_5() == 0x0E &&
    level_id_3_5() == 0x16) || level_id_3_5() == 0x17 || level_id_3_5() == 0x18) && level_id_4_5() == 0x04 &&
    level_id_5_5() == 0x12) || level_id_5_5() == 0x13 || level_id_5_5() == 0x14, "Mission: Narrows Island - Abandoned Museum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((((level_id_1_5() == 0x1B || level_id_1_5() == 0x2C || level_id_1_5() == 0x2D) && level_id_2_5() == 0x0E &&
    level_id_3_5() == 0x16) || level_id_3_5() == 0x17 || level_id_3_5() == 0x18) && level_id_4_5() == 0x04 &&
    level_id_5_5() == 0x12) || level_id_5_5() == 0x13 || level_id_5_5() == 0x14, "Mission: Narrows Island - Abandoned Museum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 && batsuits_id() != 0x04 &&
    ((((level_id_1_5() == 0x07 || level_id_1_5() == 0x09 || level_id_1_5() == 0x0A || level_id_1_5() == 0x13 ||
    level_id_1_5() == 0x15) && level_id_2_5() == 0x0F && level_id_3_5() == 0x19) || level_id_3_5() == 0x1A ||
    level_id_3_5() == 0x1B || level_id_3_5() == 0x1F || level_id_3_5() == 0x20 || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x05 && level_id_5_5() == 0x15) || level_id_5_5() == 0x16 || level_id_5_5() == 0x17 ||
    level_id_5_5() == 0x1A || level_id_5_5() == 0x1B || level_id_5_5() == 0x1F, "Mission: Arkham Asylum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 && batsuits_id() != 0x04 &&
    ((((level_id_1_5() == 0x07 || level_id_1_5() == 0x09 || level_id_1_5() == 0x0A || level_id_1_5() == 0x13 ||
    level_id_1_5() == 0x15) && level_id_2_5() == 0x0F && level_id_3_5() == 0x19) || level_id_3_5() == 0x1A ||
    level_id_3_5() == 0x1B || level_id_3_5() == 0x1F || level_id_3_5() == 0x20 || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x05 && level_id_5_5() == 0x15) || level_id_5_5() == 0x16 || level_id_5_5() == 0x17 ||
    level_id_5_5() == 0x1A || level_id_5_5() == 0x1B || level_id_5_5() == 0x1F, "Mission: Arkham Asylum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E && batsuits_id() != 0x04 &&
    ((((level_id_1_5() == 0x07 || level_id_1_5() == 0x09 || level_id_1_5() == 0x0A || level_id_1_5() == 0x13 ||
    level_id_1_5() == 0x15) && level_id_2_5() == 0x0F && level_id_3_5() == 0x19) || level_id_3_5() == 0x1A ||
    level_id_3_5() == 0x1B || level_id_3_5() == 0x1F || level_id_3_5() == 0x20 || level_id_3_5() == 0xFF) &&
    level_id_4_5() == 0x05 && level_id_5_5() == 0x15) || level_id_5_5() == 0x16 || level_id_5_5() == 0x17 ||
    level_id_5_5() == 0x1A || level_id_5_5() == 0x1B || level_id_5_5() == 0x1F, "Mission: Arkham Asylum • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((((level_id_1_5() == 0x08 || level_id_1_5() == 0x14) && level_id_3_5() == 0x1C) || level_id_3_5() == 0x1D ||
    level_id_3_5() == 0x1E || level_id_3_5() == 0xFF) && level_id_5_5() == 0x18) || level_id_5_5() == 0x19, "Mission: Arkham Asylum - Underground • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((((level_id_1_5() == 0x08 || level_id_1_5() == 0x14) && level_id_3_5() == 0x1C) || level_id_3_5() == 0x1D ||
    level_id_3_5() == 0x1E || level_id_3_5() == 0xFF) && level_id_5_5() == 0x18) || level_id_5_5() == 0x19, "Mission: Arkham Asylum - Underground • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((((level_id_1_5() == 0x08 || level_id_1_5() == 0x14) && level_id_3_5() == 0x1C) || level_id_3_5() == 0x1D ||
    level_id_3_5() == 0x1E || level_id_3_5() == 0xFF) && level_id_5_5() == 0x18) || level_id_5_5() == 0x19, "Mission: Arkham Asylum - Underground • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    (((level_id_1_5() == 0x15 || level_id_1_5() == 0x29) && level_id_2_5() == 0x0F && level_id_3_5() == 0x21) ||
    level_id_3_5() == 0x22 || level_id_3_5() == 0x23 || level_id_3_5() == 0xFF) && level_id_4_5() == 0x05 &&
    level_id_5_5() == 0x1C, "Mission: Escape from Arkham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    (((level_id_1_5() == 0x15 || level_id_1_5() == 0x29) && level_id_2_5() == 0x0F && level_id_3_5() == 0x21) ||
    level_id_3_5() == 0x22 || level_id_3_5() == 0x23 || level_id_3_5() == 0xFF) && level_id_4_5() == 0x05 &&
    level_id_5_5() == 0x1C, "Mission: Escape from Arkham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    (((level_id_1_5() == 0x15 || level_id_1_5() == 0x29) && level_id_2_5() == 0x0F && level_id_3_5() == 0x21) ||
    level_id_3_5() == 0x22 || level_id_3_5() == 0x23 || level_id_3_5() == 0xFF) && level_id_4_5() == 0x05 &&
    level_id_5_5() == 0x1C, "Mission: Escape from Arkham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(batmobile_mission_type() == 0x00 &&
    ((((level_id_1_5() == 0x01 || level_id_1_5() == 0x02 || level_id_1_5() == 0x03 || level_id_1_5() == 0x05 ||
    level_id_1_5() == 0x16) && level_id_2_5() == 0x12 && level_id_3_5() == 0x34) || level_id_3_5() == 0x35 ||
    level_id_3_5() == 0x37 || level_id_3_5() == 0x38) && level_id_4_5() == 0x01 && level_id_5_5() == 0x29) ||
    level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D, "Mission: Saving Rachel • Time: {0} • Batmobile Durability: {1}% • Reputation: {2} • Takedowns: {3} • Multiple Takedowns: {4} • Casualties: {5} • Enemy Damages: ${6}",
    rich_presence_value("Seconds", level_time(), format="SECS"),
    rich_presence_value("Float2", float(dword(_0x60() + 0x60) + 0x3D4), format="FLOAT2"),
    rich_presence_lookup("Rep", batmobile_total_reputation_by_percentage(), RepLookup),
    rich_presence_value("Number", batmobile_total_takedowns()),
    rich_presence_value("Number", batmobile_total_multiple_takedowns()),
    rich_presence_value("Number", batmobile_total_takedown()),
    rich_presence_value("Number", batmobile_total_enemy_damage_in_cash())
)

rich_presence_conditional_display(batmobile_mission_type() == 0x01 &&
    ((((level_id_1_5() == 0x01 || level_id_1_5() == 0x02 || level_id_1_5() == 0x03 || level_id_1_5() == 0x05 ||
    level_id_1_5() == 0x16) && level_id_2_5() == 0x12 && level_id_3_5() == 0x34) || level_id_3_5() == 0x35 ||
    level_id_3_5() == 0x37 || level_id_3_5() == 0x38) && level_id_4_5() == 0x01 && level_id_5_5() == 0x29) ||
    level_id_5_5() == 0x2A || level_id_5_5() == 0x2C || level_id_5_5() == 0x2D, "Time Attack: Saving Rachel • Time: {0} • Batmobile Durability: {1}%",
    rich_presence_value("Seconds", level_time(), format="SECS"),
    rich_presence_value("Float2", float(dword(_0x60() + 0x60) + 0x3D4), format="FLOAT2")
)

rich_presence_conditional_display(difficulty() == 0x23 && batsuits_id() == 0x04, "Mission: Wayne Manor • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 && batsuits_id() == 0x04, "Mission: Wayne Manor • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E && batsuits_id() == 0x04, "Mission: Wayne Manor • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    (level_id_1_5() == 0x32 || level_id_1_5() == 0x35) && level_id_2_5() == 0x11 && level_id_3_5() == 0x28 &&
    level_id_4_5() == 0x07 && level_id_5_5() == 0x20, "Mission: Chaos on Narrows Island - Narrowborough Bridge • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    (level_id_1_5() == 0x32 || level_id_1_5() == 0x35) && level_id_2_5() == 0x11 && level_id_3_5() == 0x28 &&
    level_id_4_5() == 0x07 && level_id_5_5() == 0x20, "Mission: Chaos on Narrows Island - Narrowborough Bridge • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    (level_id_1_5() == 0x32 || level_id_1_5() == 0x35) && level_id_2_5() == 0x11 && level_id_3_5() == 0x28 &&
    level_id_4_5() == 0x07 && level_id_5_5() == 0x20, "Mission: Chaos on Narrows Island - Narrowborough Bridge • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    ((((level_id_1_5() == 0x35 || level_id_1_5() == 0x3C) && level_id_2_5() == 0x11 && level_id_3_5() == 0x29) ||
    level_id_3_5() == 0x3A || level_id_3_5() == 0xFF) && level_id_4_5() == 0x07 && level_id_5_5() == 0x21) ||
    level_id_5_5() == 0x22, "Mission: The Monorail Tracks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    ((((level_id_1_5() == 0x35 || level_id_1_5() == 0x3C) && level_id_2_5() == 0x11 && level_id_3_5() == 0x29) ||
    level_id_3_5() == 0x3A || level_id_3_5() == 0xFF) && level_id_4_5() == 0x07 && level_id_5_5() == 0x21) ||
    level_id_5_5() == 0x22, "Mission: The Monorail Tracks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    ((((level_id_1_5() == 0x35 || level_id_1_5() == 0x3C) && level_id_2_5() == 0x11 && level_id_3_5() == 0x29) ||
    level_id_3_5() == 0x3A || level_id_3_5() == 0xFF) && level_id_4_5() == 0x07 && level_id_5_5() == 0x21) ||
    level_id_5_5() == 0x22, "Mission: The Monorail Tracks • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_conditional_display(difficulty() == 0x23 &&
    (level_id_1_5() == 0x36 && level_id_2_5() == 0x11 && level_id_3_5() == 0x2B && level_id_4_5() == 0x07 &&
        level_id_5_5() == 0x23
    ), "Mission: Monorail to Gotham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health1", difficulty() == 0x23 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health1Lookup)
)

rich_presence_conditional_display(difficulty() == 0x15 &&
    (level_id_1_5() == 0x36 && level_id_2_5() == 0x11 && level_id_3_5() == 0x2B && level_id_4_5() == 0x07 &&
        level_id_5_5() == 0x23
    ), "Mission: Monorail to Gotham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health2", difficulty() == 0x15 && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health2Lookup)
)

rich_presence_conditional_display(difficulty() == 0x0E &&
    (level_id_1_5() == 0x36 && level_id_2_5() == 0x11 && level_id_3_5() == 0x2B && level_id_4_5() == 0x07 &&
        level_id_5_5() == 0x23
    ), "Mission: Monorail to Gotham • Time: {0} • Difficulty: {1} • Health: {2}",
    rich_presence_value("Seconds", game_time_1_2(), format="SECS"),
    rich_presence_lookup("Difficulty", difficulty(), DifficultyLookup),
    rich_presence_lookup("Health3", difficulty() == 0x0E && dword(dword(_0x84c() + 0x84C) + 0xBA8), Health3Lookup)
)

rich_presence_display("In the menus")
