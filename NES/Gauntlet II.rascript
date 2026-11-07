// Gauntlet II
// #ID = 1704

// $0045: [8-bit] Current Level State (1)
//        0x01 - 0x66 = Lvl 1-102
//        0x69 - 0x73 =  Treasure Room 1 - 11
function current_level_state() => byte(0x0045)

// $0047: [8-bit] Current Level State (2)
//        0x01 - 0x66 = Lvls 1-102 (Final)
//        (Exceeding Lvl 102 loops to Lvl 6.)
function current_level_state_2() => byte(0x0047)

// $0051: [8-bit] Game State / Current Level Indicator
//        0x00 = Main Menu / Lvls Intro
//        0x01 - 0x66 = Lvls 1-102
//        0xff = Exit Warp
function game_state() => byte(0x0051)

// $0073: [8-bit] P1 State
//        0x00 = Main Menu
//        0x01 - 0x66 = Lvls 1-102
//        0x69 - 0x73 = Treasure Room 1-11
//        0xff = In-game
function p1_state() => byte(0x0073)

// $0078: [8-bit] Walls Transforming Timer (Active when player is idle)
//        0x87 = Player active/Reset value
//        0x00 = Transforming effect
function walls_transforming_timer() => byte(0x0078)

// $007E: [8-bit] Event Tracker
//        0x13 = Dragon defeated
function event_tracker() => byte(0x007E)

// $0545: [8-bit] P1 State Handler
//        0x04 = Intro Screen
//        0x0b = Exit Warp (1)
//        0x2d = Transition Effect (1) (when using Transportability)
//        0x83 = Transition Effect (2)
//        0x94 = Not In Game / Dead
//        0xa8 = In Game
//        0xc4 = Paused
//        0xfd = Exit Warp (2)
function p1_state_handler() => byte(0x0545)

PausedLookup = {
    196: "▌▌",
}

// $0546: [8-bit] P2 State Handler
function p2_state_handler() => byte(0x0546)

// $0547: [8-bit] P3 State Handler
function p3_state_handler() => byte(0x0547)

// $0548: [8-bit] P4 State Handler
function p4_state_handler() => byte(0x0548)

// $05A9: [8-bit] Enemy Spawn State 1
//        0x00 = None
//        0xc0 = Regular Enemy
//        0x20 = Special Enemy (Dragon)
function enemy_spawn_state_1() => byte(0x05A9)

// $05AA: [8-bit] Enemy Spawn State 2
function enemy_spawn_state_2() => byte(0x05AA)

// $05AB: [8-bit] Enemy Spawn State 3
function enemy_spawn_state_3() => byte(0x05AB)

// $05AC: [8-bit] Enemy Spawn State 4
function enemy_spawn_state_4() => byte(0x05AC)

// $05AD: [8-bit] Enemy Spawn State 5
function enemy_spawn_state_5() => byte(0x05AD)

// $05AE: [8-bit] Enemy Spawn State 6
function enemy_spawn_state_6() => byte(0x05AE)

// $05AF: [8-bit] Enemy Spawn State 7
function enemy_spawn_state_7() => byte(0x05AF)

// $05B0: [8-bit] Enemy Spawn State 8
function enemy_spawn_state_8() => byte(0x05B0)

// $05B1: [8-bit] Enemy Spawn State 9
function enemy_spawn_state_9() => byte(0x05B1)

// $05B2: [8-bit] Enemy Spawn State 10
function enemy_spawn_state_10() => byte(0x05B2)

// $05B3: [8-bit] Enemy Spawn State 11
function enemy_spawn_state_11() => byte(0x05B3)

// $05B4: [8-bit] Enemy Spawn State 12
function enemy_spawn_state_12() => byte(0x05B4)

// $05B5: [8-bit] Enemy Spawn State 13
function enemy_spawn_state_13() => byte(0x05B5)

// $05B6: [8-bit] Enemy Spawn State 14
function enemy_spawn_state_14() => byte(0x05B6)

// $05B7: [8-bit] Enemy Spawn State 15
function enemy_spawn_state_15() => byte(0x05B7)

// $05B8: [8-bit] Enemy Spawn State 16
function enemy_spawn_state_16() => byte(0x05B8)

// $05B9: [8-bit] Enemy Spawn State 17
function enemy_spawn_state_17() => byte(0x05B9)

// $05BA: [8-bit] Enemy Spawn State 18
function enemy_spawn_state_18() => byte(0x05BA)

// $05BB: [8-bit] Enemy Spawn State 19
function enemy_spawn_state_19() => byte(0x05BB)

// $05BC: [8-bit] Enemy Spawn State 20
function enemy_spawn_state_20() => byte(0x05BC)

// $05BD: [8-bit] Enemy Spawn State 21
function enemy_spawn_state_21() => byte(0x05BD)

// $05BE: [8-bit] Enemy Spawn State 22
function enemy_spawn_state_22() => byte(0x05BE)

// $05BF: [8-bit] Enemy Spawn State 23
function enemy_spawn_state_23() => byte(0x05BF)

// $05C0: [8-bit] Enemy Spawn State 24
function enemy_spawn_state_24() => byte(0x05C0)

// $05C1: [8-bit] Enemy Spawn State 25
function enemy_spawn_state_25() => byte(0x05C1)

// $05C2: [8-bit] Enemy Spawn State 26
function enemy_spawn_state_26() => byte(0x05C2)

// $05C3: [8-bit] Enemy Spawn State 27
function enemy_spawn_state_27() => byte(0x05C3)

// $05C4: [8-bit] Enemy Spawn State 28
function enemy_spawn_state_28() => byte(0x05C4)

// $05C5: [8-bit] Enemy Spawn State 29
function enemy_spawn_state_29() => byte(0x05C5)

// $05C6: [8-bit] Enemy Spawn State 30
function enemy_spawn_state_30() => byte(0x05C6)

// $0702: [8-bit bitflags] Power Ups P1
//        Bit0 = Extra armor
//        Bit1 = Extra pick up
//        Bit2 = Extra fight
//        Bit3 = Extra magic
//        Bit4 = Extra shot power
//        Bit5 = Extra speed
function _8_bit_bitflags_power_ups_p1() => byte(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_armor() => bit0(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_pick_up() => bit1(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_fight() => bit2(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_magic() => bit3(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_shot_power() => bit4(0x0702)
function _8_bit_bitflags_power_ups_p1_extra_speed() => bit5(0x0702)

ItemsLookup = {
    00: "0",
    01: "🛡️",
    02: "✊",
    03: "🛡️✊",
    04: "🗡️",
    05: "🛡️🗡️",
    06: "✊🗡️",
    07: "🛡️✊🗡️",
    08: "🔮",
    09: "🛡️🔮",
    10: "✊🔮",
    11: "🛡️✊🔮",
    12: "🗡️🔮",
    13: "🛡️🗡️🔮",
    14: "✊🗡️🔮",
    15: "🛡️✊🗡️🔮",
    16: "🔘",
    17: "🛡️🔘",
    18: "✊🔘",
    19: "🛡️✊🔘",
    20: "🗡️🔘",
    21: "🛡️🗡️🔘",
    22: "✊🗡️🔘",
    23: "🛡️✊🗡️🔘",
    24: "🔮🔘",
    25: "🛡️🔮🔘",
    26: "✊🔮🔘",
    27: "🛡️✊🔮🔘",
    28: "🗡️🔮🔘",
    29: "🛡️🗡️🔮🔘",
    30: "✊🗡️🔮🔘",
    31: "🛡️✊🗡️🔮🔘",
    32: "⚡",
    33: "🛡️⚡",
    34: "✊⚡",
    35: "🛡️✊⚡",
    36: "🗡️⚡",
    37: "🛡️🗡️⚡",
    38: "✊🗡️⚡",
    39: "🛡️✊🗡️⚡",
    40: "🔮⚡",
    41: "🛡️🔮⚡",
    42: "✊🔮⚡",
    43: "🛡️✊🔮⚡",
    44: "🗡️🔮⚡",
    45: "🛡️🗡️🔮⚡",
    46: "✊🗡️🔮⚡",
    47: "🛡️✊🗡️🔮⚡",
    48: "🔘⚡",
    49: "🛡️🔘⚡",
    50: "✊🔘⚡",
    51: "🛡️✊🔘⚡",
    52: "🗡️🔘⚡",
    53: "🛡️🗡️🔘⚡",
    54: "✊🗡️🔘⚡",
    55: "🛡️✊🗡️🔘⚡",
    56: "🔮🔘⚡",
    57: "🛡️🔮🔘⚡",
    58: "✊🔮🔘⚡",
    59: "🛡️✊🔮🔘⚡",
    60: "🗡️🔮🔘⚡",
    61: "🛡️🗡️🔮🔘⚡",
    62: "✊🗡️🔮🔘⚡",
    63: "🛡️✊🗡️🔮🔘⚡",
}

// $0707: [8-bit] Invisibility Amulet P1 (Countdown Timer)
//        0x00 = Inactive
//        0x3c = Active
function invisibility_amulet_p1() => byte(0x0707)

// $070C: [8-bit] Invulnerability Amulet P1 (Countdown Timer)
//        0x00 = Inactive
//        0x3c = Active
function invulnerability_amulet_p1() => byte(0x070C)

// $0711: [8-bit] Repulsiveness Amulet P1 (Countdown Timer)
//        0x00 = Inactive
//        0x3c = Active
function repulsiveness_amulet_p1() => byte(0x0711)

// $0716: [8-bit] Reflective Shots Amulet P1
//        0x00 = Not Acquired
//        0x3c = Acquired
function reflective_shots_amulet_p1() => byte(0x0716)

// $071B: [8-bit] Super Shots Amulet P1
//        0x00 = Not Acquired
//        0x0a = Acquired (Grants 10 shots per pickup, stackable)
function super_shots_amulet_p1() => byte(0x071B)

// $0720: [8-bit] Transportability Amulet P1
//        0x00 = Not Acquired
//        0x3c = Acquired
function transportability_amulet_p1() => byte(0x0720)

// $0725: [8-bit] Points Earned P1
//        0x00 = None
//        0x01 = 10 pts (Base value)
//        0xff = 2550 pts, (loops to 0x00, adds 0x01 to 0x072a)
//        
//        Scoring:
//        Enemies: 20 pts (Death enemy: 100 pts)
//        Treasures/Keys: 50 pts
//        Dragon treasure bag: 500 pts
function points_earned_p1() => byte(0x0725)

// $072A: [8-bit] Set of Points Earned P1
//        0x00 = None
//        0x01 = 2560 pts
//        0x27 = 99,840 pts (99,990 Max)
//        Increments by 0x01 (2560 pts) when address 0x0725 surpasses 0xff and resets to 0x00
//        
//        Additional Value Info:
//        0x13 = 48,640 pts
function set_of_points_earned_p1() => byte(0x072A)

// $0739: [8-bit] Health Counter P1
function health_counter_p1() => byte(0x0739)

// $073E: [8-bit] Health Status P1
function health_status_p1() => byte(0x073E)

// $0743: [8-bit] Keys Collected P1
function keys_collected_p1() => byte(0x0743)

// $0748: [8-bit] Potions Collected P1
function potions_collected_p1() => byte(0x0748)

// $074D: [8-bit] P1 Character
//        0x00 = Wizard
//        0x01 = Elf
//        0x02 = Warrior
//        0x03 = Valkyrie
function p1_character() => byte(0x074D)

CharactersLookup = {
    0: "🧙🏻Wizard",
    1: "🧝🏻Elf",
    2: "🪓Warrior",
    3: "⚔️Valkyrie",
}

// $0792: [8-bit] Treasure Collected P1
function treasure_collected_p1() => byte(0x0792)

achievement(
    title = "Apprentice Adventurer", points = 10, type="progression",
    description = "Complete Level 20",
    id = 492106, badge = "557738", published = "1/15/2025 4:12:14 AM", modified = "1/15/2025 4:12:14 AM",
    trigger = p1_state_handler() == 0xFD && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x14 && current_level_state_2() == 0x15
)

achievement(
    title = "Skilled Seeker", points = 10, type="progression",
    description = "Complete Level 40",
    id = 492107, badge = "557739", published = "1/15/2025 4:12:15 AM", modified = "1/15/2025 4:12:15 AM",
    trigger = p1_state_handler() == 0xFD && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x28 && current_level_state_2() == 0x29
)

achievement(
    title = "Veteran Conqueror", points = 10, type="progression",
    description = "Complete Level 60",
    id = 492108, badge = "557740", published = "1/15/2025 4:12:15 AM", modified = "1/15/2025 4:12:15 AM",
    trigger = p1_state_handler() == 0xFD && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x3C && current_level_state_2() == 0x3D
)

achievement(
    title = "Elite Explorer", points = 25, type="progression",
    description = "Complete Level 80",
    id = 492109, badge = "557741", published = "1/15/2025 4:12:15 AM", modified = "1/15/2025 4:12:15 AM",
    trigger = p1_state_handler() == 0xFD && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x50 && current_level_state_2() == 0x51
)

achievement(
    title = "Master of the Gauntlet", points = 50, type="win_condition",
    description = "Complete Level 102",
    id = 492110, badge = "557742", published = "1/15/2025 4:12:15 AM", modified = "4/6/2025 4:28:19 PM",
    trigger = p1_state_handler() == 0x0B && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && current_level_state_2() == 0x66 && prev(p1_state()) == 0xFF &&
              p1_state() == 0x06
)

achievement(
    title = "Warrior's Wrath", points = 5,
    description = "Complete Level 10 as the Warrior",
    id = 492111, badge = "557743", published = "1/15/2025 4:12:16 AM", modified = "1/15/2025 4:12:16 AM",
    trigger = p1_character() == 0x02 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x0A && current_level_state_2() == 0x0B
)

achievement(
    title = "Valkyrie's Vow", points = 5,
    description = "Complete Level 10 as the Valkyrie",
    id = 492112, badge = "557744", published = "1/15/2025 4:12:16 AM", modified = "1/15/2025 4:12:16 AM",
    trigger = p1_character() == 0x03 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x0A && current_level_state_2() == 0x0B
)

achievement(
    title = "Spellcaster", points = 5,
    description = "Complete Level 10 as the Wizard",
    id = 492113, badge = "557745", published = "1/15/2025 4:12:16 AM", modified = "1/15/2025 4:12:16 AM",
    trigger = p1_character() == 0x00 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x0A && current_level_state_2() == 0x0B
)

achievement(
    title = "The Agile", points = 5,
    description = "Complete Level 10 as the Elf",
    id = 492114, badge = "557746", published = "1/15/2025 4:12:16 AM", modified = "1/15/2025 4:12:16 AM",
    trigger = p1_character() == 0x01 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x0A && current_level_state_2() == 0x0B
)

achievement(
    title = "Strategic Wait", points = 5,
    description = "Transform the walls into exits",
    id = 492115, badge = "557747", published = "1/15/2025 4:12:16 AM", modified = "3/27/2025 6:48:36 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(walls_transforming_timer()) == 0x01 &&
              walls_transforming_timer() == 0x00
)

achievement(
    title = "Secret Exit", points = 2,
    description = "Go through the hidden exit on level 1",
    id = 492116, badge = "557748", published = "1/15/2025 4:12:17 AM", modified = "1/15/2025 4:12:17 AM",
    trigger = p1_state_handler() == 0xFD && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(current_level_state_2()) == 0x01 && current_level_state_2() == 0x06
)

achievement(
    title = "Amulet of Power", points = 5,
    description = "Obtain the Invulnerability Amulet",
    id = 492117, badge = "557749", published = "1/15/2025 4:12:17 AM", modified = "3/27/2025 6:48:36 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(invulnerability_amulet_p1()) == 0x00 &&
              invulnerability_amulet_p1() == 0x3C
)

achievement(
    title = "Amulet of Rejection", points = 5,
    description = "Obtain the Repulsiveness Amulet",
    id = 492118, badge = "557750", published = "1/15/2025 4:12:17 AM", modified = "3/27/2025 6:48:36 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(repulsiveness_amulet_p1()) == 0x00 && repulsiveness_amulet_p1() == 0x3C
)

achievement(
    title = "Amulet of Reflection", points = 5,
    description = "Obtain the Reflective Shots Amulet",
    id = 492119, badge = "557751", published = "1/15/2025 4:12:17 AM", modified = "3/27/2025 6:48:37 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(reflective_shots_amulet_p1()) == 0x00 &&
              reflective_shots_amulet_p1() == 0x3C
)

achievement(
    title = "Amulet of Might", points = 5,
    description = "Obtain the Super Shots Amulet",
    id = 492120, badge = "557752", published = "1/15/2025 4:12:18 AM", modified = "3/27/2025 6:48:37 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(super_shots_amulet_p1()) == 0x00 && super_shots_amulet_p1() == 0x0A
)

achievement(
    title = "Amulet of Movement", points = 5,
    description = "Obtain the Transportability Amulet",
    id = 492121, badge = "557753", published = "1/15/2025 4:12:18 AM", modified = "3/27/2025 6:48:37 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(transportability_amulet_p1()) == 0x00 &&
              transportability_amulet_p1() == 0x3C
)

achievement(
    title = "Amulet of Invisibility", points = 5,
    description = "Obtain the Invisibility Amulet",
    id = 492122, badge = "557754", published = "1/15/2025 4:12:19 AM", modified = "3/27/2025 6:48:37 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && prev(invisibility_amulet_p1()) == 0x00 && invisibility_amulet_p1() == 0x3C
)

achievement(
    title = "Two for One", points = 10,
    description = "Obtain at least two unique Power Ups without dying",
    id = 492123, badge = "557755", published = "1/15/2025 4:12:19 AM", modified = "3/27/2025 6:48:38 PM",
    trigger = p1_state_handler() == 0xA8 &&
              measured(tally(2,
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_armor()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_armor() == 0x01),
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_pick_up()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_pick_up() == 0x01),
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_fight()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_fight() == 0x01),
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_magic()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_magic() == 0x01),
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_shot_power()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_shot_power() == 0x01),
                  once(prev(_8_bit_bitflags_power_ups_p1_extra_speed()) != 0x01 &&
                  _8_bit_bitflags_power_ups_p1_extra_speed() == 0x01))
              ) && unless((p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94)) &&
              never(p1_state_handler() == 0x94)
)

achievement(
    title = "Treasure Hunter", points = 10,
    description = "Collect 500 treasures without dying",
    id = 492124, badge = "557756", published = "1/15/2025 4:12:19 AM", modified = "3/27/2025 6:48:38 PM",
    trigger = measured(repeated(500,
                  p1_state_handler() == 0xA8 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())
              ) && unless((p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94)) &&
              never(p1_state_handler() == 0x94)
)

achievement(
    title = "Loot Rush", points = 5,
    description = "During a treasure room level, collect at least 30 treasures before exiting",
    id = 492125, badge = "557757", published = "1/15/2025 4:12:19 AM", modified = "3/27/2025 6:48:38 PM",
    trigger = p1_state() == 0xFF && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && never(p1_state_handler() == 0xFD) &&
              ((repeated(30, current_level_state() == 0x69 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6A && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6B && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6C && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6D && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6E && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x6F && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x70 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x71 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x72 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())) ||
               (repeated(30, current_level_state() == 0x73 && (0x01 + prev(treasure_collected_p1())) == treasure_collected_p1())))
)

achievement(
    title = "The Janitor", points = 5,
    description = "Use 150 keys without dying",
    id = 492126, badge = "557758", published = "1/15/2025 4:12:20 AM", modified = "1/15/2025 4:12:20 AM",
    trigger = measured(repeated(150, p1_state_handler() == 0xA8 && (0x01 + keys_collected_p1()) == prev(keys_collected_p1()))) &&
              unless((p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94)) &&
              never(p1_state_handler() == 0x94)
)

achievement(
    title = "50K Milestone", points = 10,
    description = "Earn 50,000 points",
    id = 492127, badge = "557759", published = "1/15/2025 4:12:20 AM", modified = "3/28/2025 3:13:13 AM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 &&
              (prev(points_earned_p1()) * 0x0A + prev(set_of_points_earned_p1()) * 0xA00 + 0x00) < 0xC350 &&
              (points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00 + 0x00) >= 0xC350
)

achievement(
    title = "End of the Dragon", points = 10,
    description = "Defeat the Dragon",
    id = 492128, badge = "557760", published = "1/15/2025 4:12:21 AM", modified = "3/27/2025 6:48:39 PM",
    trigger = p1_state_handler() == 0xA8 && p2_state_handler() == 0x94 && p3_state_handler() == 0x94 &&
              p4_state_handler() == 0x94 && game_state() != 0xFF &&
              ((prev(enemy_spawn_state_1()) == 0x20 && enemy_spawn_state_1() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_2()) == 0x20 && enemy_spawn_state_2() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_3()) == 0x20 && enemy_spawn_state_3() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_4()) == 0x20 && enemy_spawn_state_4() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_5()) == 0x20 && enemy_spawn_state_5() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_6()) == 0x20 && enemy_spawn_state_6() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_7()) == 0x20 && enemy_spawn_state_7() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_8()) == 0x20 && enemy_spawn_state_8() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_9()) == 0x20 && enemy_spawn_state_9() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_10()) == 0x20 && enemy_spawn_state_10() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_11()) == 0x20 && enemy_spawn_state_11() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_12()) == 0x20 && enemy_spawn_state_12() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_13()) == 0x20 && enemy_spawn_state_13() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_14()) == 0x20 && enemy_spawn_state_14() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_15()) == 0x20 && enemy_spawn_state_15() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_16()) == 0x20 && enemy_spawn_state_16() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_17()) == 0x20 && enemy_spawn_state_17() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_18()) == 0x20 && enemy_spawn_state_18() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_19()) == 0x20 && enemy_spawn_state_19() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_20()) == 0x20 && enemy_spawn_state_20() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_21()) == 0x20 && enemy_spawn_state_21() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_22()) == 0x20 && enemy_spawn_state_22() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_23()) == 0x20 && enemy_spawn_state_23() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_24()) == 0x20 && enemy_spawn_state_24() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_25()) == 0x20 && enemy_spawn_state_25() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_26()) == 0x20 && enemy_spawn_state_26() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_27()) == 0x20 && enemy_spawn_state_27() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_28()) == 0x20 && enemy_spawn_state_28() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_29()) == 0x20 && enemy_spawn_state_29() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13) ||
               (prev(enemy_spawn_state_30()) == 0x20 && enemy_spawn_state_30() == 0x00 && prev(event_tracker()) != 0x13 &&
                event_tracker() == 0x13))
)

leaderboard(
    id = 124715, title = "Most Points Earned as the Warrior (1P)",
    description = "Earn the most points as the Warrior",
    start  = prev(p1_state_handler()) != 0xA8 && p1_state_handler() == 0xA8 &&
             prev(game_state()) != 0x01 && game_state() == 0x01 &&
             p1_character() == 0x02,
    cancel = p1_state_handler() == 0x04 &&
             (p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94),
    submit = prev(p1_state_handler()) != 0x94 && p1_state_handler() == 0x94 && p1_character() == 0x02,
    value  = measured((points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00 + 0x00)),
    format = "VALUE"
)

leaderboard(
    id = 124716, title = "Most Points Earned as the Valkyrie (1P)",
    description = "Earn the most points as the Valkyrie",
    start  = prev(p1_state_handler()) != 0xA8 && p1_state_handler() == 0xA8 &&
             prev(game_state()) != 0x01 && game_state() == 0x01 &&
             p1_character() == 0x03,
    cancel = p1_state_handler() == 0x04 &&
             (p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94),
    submit = prev(p1_state_handler()) != 0x94 && p1_state_handler() == 0x94 && p1_character() == 0x03,
    value  = measured((points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00 + 0x00)),
    format = "VALUE"
)

leaderboard(
    id = 124717, title = "Most Points Earned as the Wizard (1P)",
    description = "Earn the most points as the Wizard",
    start  = prev(p1_state_handler()) != 0xA8 && p1_state_handler() == 0xA8 &&
             prev(game_state()) != 0x01 && game_state() == 0x01 &&
             p1_character() == 0x00,
    cancel = p1_state_handler() == 0x04 &&
             (p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94),
    submit = prev(p1_state_handler()) != 0x94 && p1_state_handler() == 0x94 && p1_character() == 0x00,
    value  = measured((points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00 + 0x00)),
    format = "VALUE"
)

leaderboard(
    id = 124718, title = "Most Points Earned as the Elf (1P)",
    description = "Earn the most points as the Elf",
    start  = prev(p1_state_handler()) != 0xA8 && p1_state_handler() == 0xA8 &&
             prev(game_state()) != 0x01 && game_state() == 0x01 &&
             p1_character() == 0x01,
    cancel = p1_state_handler() == 0x04 &&
             (p2_state_handler() != 0x94 || p3_state_handler() != 0x94 || p4_state_handler() != 0x94),
    submit = prev(p1_state_handler()) != 0x94 && p1_state_handler() == 0x94 && p1_character() == 0x01,
    value  = measured((points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00 + 0x00)),
    format = "VALUE"
)

leaderboard(
    id = 124719, title = "Most Treasures Collected in a Treasure Room",
    description = "Collect the most treasures in a treasure room",
    start  = p1_state_handler() == 0xA8 &&
             ((prev(current_level_state()) == 0x69 && current_level_state() == 0x69) ||
              (prev(current_level_state()) == 0x6A && current_level_state() == 0x6A) ||
              (prev(current_level_state()) == 0x6B && current_level_state() == 0x6B) ||
              (prev(current_level_state()) == 0x6C && current_level_state() == 0x6C) ||
              (prev(current_level_state()) == 0x6D && current_level_state() == 0x6D) ||
              (prev(current_level_state()) == 0x6E && current_level_state() == 0x6E) ||
              (prev(current_level_state()) == 0x6F && current_level_state() == 0x6F) ||
              (prev(current_level_state()) == 0x70 && current_level_state() == 0x70) ||
              (prev(current_level_state()) == 0x71 && current_level_state() == 0x71) ||
              (prev(current_level_state()) == 0x72 && current_level_state() == 0x72) ||
              (prev(current_level_state()) == 0x73 && current_level_state() == 0x73)),
    cancel = p1_state_handler() == 0x04,
    submit = prev(p1_state_handler()) != 0xFD && p1_state_handler() == 0xFD,
    value  = measured(tally(0, 0x01 + prev(treasure_collected_p1())) == treasure_collected_p1()),
    format = "VALUE",
)

rich_presence_conditional_display(p1_state() == 0x00, "Main Menu")

rich_presence_display("{0}{1} | ❤️HP: {2} | 🚩Lvl {3} | 🪙Pts: {4} | 🔑Keys: {5} | 🧴Potions: {6} | Power Ups: {7}",
    rich_presence_lookup("Paused", p1_state_handler(), PausedLookup),
    rich_presence_lookup("Characters", p1_character(), CharactersLookup),
    rich_presence_value("Number", health_counter_p1() + health_status_p1() * 0x100),
    rich_presence_value("Number", current_level_state_2()),
    rich_presence_value("Number", points_earned_p1() * 0x0A + set_of_points_earned_p1() * 0xA00),
    rich_presence_value("Number", keys_collected_p1()),
    rich_presence_value("Number", potions_collected_p1()),
    rich_presence_lookup("Items", _8_bit_bitflags_power_ups_p1(), ItemsLookup)
)
