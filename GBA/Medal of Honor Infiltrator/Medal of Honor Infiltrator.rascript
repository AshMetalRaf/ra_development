// Medal of Honor: Infiltrator
// #ID = 5657

// $00B7F4: [8-bit] Current Game State
//          0x00 = Cutscene (start of Mission 3)
//          0x01 = Cutscene (start of Mission 1 & 4)
//          0x03 = Cutscene (start of Mission 5)
//          0x07 = Cutscene (start of Mission 2)
//          0x09 = Mission/Level Brief Screen
//          0x0a = Mission Failed (Game Over)
//          0x0b = Menus
//          0xff = In-game
function current_game_state() => byte(0x00B7F4)

// $00BC10: [16-bit] Game Runtime Counter (1/2)
function game_runtime_counter() => word(0x00BC10)

// $00BC12: [16-bit] Game Runtime Counter (2/2)
function game_runtime_counter_2() => word(0x00BC12)

// $00BC33: [8-bit] Game Pause Flag
//          0x00 = False
//          0x01 = True
function game_pause_flag() => byte(0x00BC33)

PauseLookup = {
    0: "",
    1: "▌▌",
}

// $00BC34: [8-bit] Demo Flag
//          0x00 = False
//          0x01 = True
function demo_flag() => byte(0x00BC34)

// $00BC36: [8-bit] Mission Result Flag
//          0x00 = None
//          0x01 = Game Over (Player lives ran out)
//          0x02 = Mission Complete
function mission_result_flag() => byte(0x00BC36)

// $00BC38: [8-bit] Player Lives
function player_lives() => byte(0x00BC38)

// $00BC42: [8-bit] Sound Alarm Active Flag
//          0x00 = False
//          0x01 = True
function sound_alarm_active_flag() => byte(0x00BC42)

// $00BC50: [16-bit] Enemies Killed (Explosive barrels and bunker turrets counts too)
function enemies_killed() => word(0x00BC50)

// $00BC74: [16-bit] Screen X-Axis Offset (Camera Position)
function screen_xaxis_offset() => word(0x00BC74)

// $00BC78: [16-bit] Screen Y-Axis Offset (Camera Position)
function screen_yaxis_offset() => word(0x00BC78)

// $00FA50: [8-bit] Survival Mode Active Flag
//          0x00 = False
//          0x01 = True
function survival_mode_active_flag() => byte(0x00FA50)

// $00FA54: [8-bit] Game Mode Identifier (1/2)
//          0x00 = Campaign Mode
//          0x03 = Survival Mode
//          0x04 = Quick Start
function game_mode_identifier() => byte(0x00FA54)

ModeLookup = {
    0: "Campaign",
    4: "Quick Start",
}

// $00FA58: [8-bit] Mission ID
//          0x00 = Mission 1
//          0x01 = Mission 2
//          0x02 = Mission 3
//          0x03 = Mission 4
//          0x04 = Mission 5
//          0x05 = Campaign Complete
function mission_id() => byte(0x00FA58)

// $00FA59: [8-bit] Level ID
//          0x01 = The Beachhead
//          0x02 = Deck Gunner (FPV)
//          0x03 = Air Raid
//          0x04 = Defection
//          0x05 = Escape
//          0x06 = Covering Fire (FPV)
//          0x07 = Break and Cover
//          0x08 = Unexpected Party (FPV)
//          0x09 = Stealing the Fire
//          0x0a = Tail Gunner (FPV)
//          0x0b = Missing In Action
//          0x0c = Lone Wolf
//          0x0d = The Hunt
//          0x0e = Shoot Out (FPV)
//          0x0f = End Game
function level_id() => byte(0x00FA59)

LvlLookup = {
    1: "1-1: The Beachhead",
    2: "1-2: Deck Gunner",
    3: "1-3: Air Raid",
    4: "2-1: Defection",
    5: "2-2: Escape",
    6: "2-3: Covering Fire",
    7: "3-1: Break and Cover",
    8: "3-2: Unexpected Party",
    9: "3-3: Stealing the Fire",
    10: "4-1: Tail Gunner",
    11: "4-2: Missing In Action",
    12: "4-3: Lone Wolf",
    13: "5-1: The Hunt",
    14: "5-2: Shoot Out",
    15: "5-3: End Game",
}

// $00FA5A: [8-bit] Gold Medals Collected
//          0x00 = None
//          0x01 - 0x0f = Level 1 - 15 (Increments by 1 for each completed level)
//          Note: Value updates after completing a level and reaching the save screen. It reflects the selected campaign data slot, regardless of whether you save or not. Same behavior applies to silver medals address
function gold_medals_collected() => byte(0x00FA5A)

// $00FA5B: [8-bit] Silver Medals Collected (See gold medals for behavior)
//          0x00 = None
//          0x01 - 0x09 = Increments by 1 each time all sub objectives are completed in a level
//          Note: A value of 0x09 at the end of the campaign is required to unlock Max-GI Mode.
function silver_medals_collected() => byte(0x00FA5B)

// $00FA60: [8-bit] Campaign Data Slot Selected/Loaded
//          0x00 = First Slot
//          0x01 = Second Slot
//          0x02 = Third Slot
//          0xff = Max-GI Mode
function campaign_data_slot_selected_loaded() => byte(0x00FA60)

// $00FA64: [8-bit] UI State (Menu/Options/etc)
//          0x01 = Select Language
//          0x02 = Intro Screen / NGC Link Up / In-game
//          0x03 = Main Menu
//          0x04 = Selecting a Game (Multiplayer)
//          0x05 = Allied Assault (Multiplayer)
//          0x06 = Deathmatch (Multiplayer)
//          0x07 = Waiting for Players (Multiplayer)
//          0x08 = Extras
//          0x09 = Options
//          0x0a = Campaign Data
//          0x0b = Map Test Screen (Dev-Only Entry)
//          0x0c = Mission Brief
//          0x0d = Level Brief
//          0x0e = Level Objectives Brief
//          0x0f = Level Complete Screen
//          0x10 = Mission Failed (Game Over)
//          0x11 = Mission Complete Screen
//          0x12 = Campaign Complete
//          0x13 = Save Progress Screen
//          0x14 = Saving Game
//          0x15 = Saving
//          0x16 = Saving Profile
//          0x17 = Survival Mode Saving Score
//          0x18 = Save Completed
//          0x1b = Survival Mode
//          0x1c = Survival Mode Result Screen
//          0x1d = Credits
//          0x27 = Multiplayer
//          0x28 = Quit to Title Screen
//          0x29 = Quick Start
function ui_state() => byte(0x00FA64)

// $0105E5: [8-bit] Player Uniform
//          0x00 = Default (used in Campaign / Quick Start / Survival Mode)
//          0x01 = Grey Outfit (used only in Max-GI Mode)
//          Note: Values determines the outcome screen shown after completing the campaign between standard and Max-GI ending
function player_uniform() => byte(0x0105E5)

// $01073C: [8-bit] Selected Loadout (Weapons)
//          0x00 = M1A1 Thompson & Hand Grenades
//          0x01 = BAR & Hand Grenades
//          0x02 = M1911 Colt & M1 Bazooka
//          0x03 = M1 Garand & Demolition Charges
function selected_loadout() => byte(0x01073C)

WeaponLookup = {
    0: "Thompson",
    1: "BAR",
    2: "Pistol",
    3: "M1 Garand",
}

// $010778: [16-bit] Kill Value Accumulator (barrels, enemies, vehicles, tanks - FPV stage)
//          0x05 = Barrel (close range)
//          0x0a = Enemy (close) or barrel (far)
//          0x14 = Enemy (far)
//          0x1e = Enemy in watchtower/hanger/indoor
//          0x7d = Military Vehicle
//          0x190 = Tank
//          0x20d = Tank and Vehicle destroyed at the same time
function kill_value_accumulator() => word(0x010778)

// $01079C: [8-bit] Mounted Machine Gun Flag
//          0x00 = False
//          0x01 = True
function mounted_machine_gun_flag() => byte(0x01079C)

// $0107A0: [8-bit] Operating a Tank Flag
//          0x00 = False
//          0x01 = True
function operating_a_tank_flag() => byte(0x0107A0)

// $010818: [8-bit] Level Timer (In Seconds - FPV & Survival Mode)
function level_timer_in_seconds_fpv_survival_mode() => byte(0x010818)

// $01081C: [8-bit] Level Timer (In Minutes - FPV & Survival Mode)
function level_timer_in_minutes_fpv_survival_mode() => byte(0x01081C)

// $011074: [8-bit] Game Mode Identifier (2/2)
//          0x00 = Campaign Mode (Selected)
//          0x01 = Quick Start (Selected)
function game_mode_identifier_2() => byte(0x011074)

// $0127C5: [8-bit] Player Health (FPV)
//          0x64 = 99 HP (Max)
function player_health_fpv() => byte(0x0127C5)

// $0127C8: [8-bit] Missile/Grenade Ammo Count (FPV)
function missile_grenade_ammo_count() => byte(0x0127C8)

// $019CA4: [8-bit] Player Health
//          0x63 = 99 (Max)
function player_health() => byte(0x019CA4)

// $019EE1: [8-bit] Weapon Ammo Count
function weapon_ammo_count() => byte(0x019EE1)

// $019EE5: [8-bit] Secondary Weapon (Grenade, Demolition Charge, Rocket Launcher) Status
//          0x00 = Used
//          0x01 = Ready
function secondary_weapon_grenade_demolition_charge_rocket_launcher_status() => byte(0x019EE5)

// $02669C: [8-bit] End Game - Main Objective 1 of 1
//          0x00 = Incomplete
//          0x01 = Complete
function end_game_main_objective_1_of_1() => byte(0x02669C)

// $02D09C: [8-bit] Lone Wolf - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function lone_wolf_main_objective_1_of_3() => byte(0x02D09C)

// $02D0A4: [8-bit] Lone Wolf - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function lone_wolf_main_objective_2_of_3() => byte(0x02D0A4)

// $02D0AC: [8-bit] Lone Wolf - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function lone_wolf_main_objective_3_of_3() => byte(0x02D0AC)

// $02D0EC: [8-bit] Lone Wolf - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function lone_wolf_sub_objective_1_of_2() => byte(0x02D0EC)

// $02D0F4: [8-bit] Lone Wolf - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function lone_wolf_sub_objective_2_of_2() => byte(0x02D0F4)

// $02FEA0: [16-bit] Player Health (1/2) - Tail Gunner FPV
//          0x400 = Left bomber aircraft health (shown as 99% in-game). Hp drops alternate between -20 and -21 per 1% hp
//          0xffff = Aircraft down (49-50 % HP)
//          Breakdown Logic: 0xe6 × 0x800 = 0x738 (used 0x733 as structural base in achievement logic, combines this address and 0x2fea4)
function player_health_tail_gunner_fpv() => word(0x02FEA0)

// $02FEA4: [16-bit] Player Health (2/2) - Tail Gunner FPV
//          0x400 = Right bomber aircraft health (shown as 99% in-game). Hp drops alternate between -20 and -21 per 1% hp
//          0xffff = Aircraft down (49-50 % HP)
function player_health_tail_gunner_fpv_2() => word(0x02FEA4)

// $031FDC: [8-bit] The Hunt - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_hunt_main_objective_1_of_3() => byte(0x031FDC)

// $031FE4: [8-bit] The Hunt - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_hunt_main_objective_2_of_3() => byte(0x031FE4)

// $031FEC: [8-bit] The Hunt - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_hunt_main_objective_3_of_3() => byte(0x031FEC)

// $03202C: [8-bit] The Hunt - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function the_hunt_sub_objective_1_of_2() => byte(0x03202C)

// $032034: [8-bit] The Hunt - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function the_hunt_sub_objective_2_of_2() => byte(0x032034)

// $032844: [8-bit] Break and Cover - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function break_and_cover_main_objective_1_of_3() => byte(0x032844)

// $03284C: [8-bit] Break and Cover - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function break_and_cover_main_objective_2_of_3() => byte(0x03284C)

// $032854: [8-bit] Break and Cover - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function break_and_cover_main_objective_3_of_3() => byte(0x032854)

// $032894: [8-bit] Break and Cover - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function break_and_cover_sub_objective_1_of_2() => byte(0x032894)

// $03289C: [8-bit] Break and Cover - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function break_and_cover_sub_objective_2_of_2() => byte(0x03289C)

// $0330F8: [8-bit] Defection - Main Objective 1 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function defection_main_objective_1_of_4() => byte(0x0330F8)

// $033100: [8-bit] Defection - Main Objective 2 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function defection_main_objective_2_of_4() => byte(0x033100)

// $033108: [8-bit] Defection - Main Objective 3 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function defection_main_objective_3_of_4() => byte(0x033108)

// $033110: [8-bit] Defection - Main Objective 4 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function defection_main_objective_4_of_4() => byte(0x033110)

// $033148: [8-bit] Defection - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function defection_sub_objective_1_of_2() => byte(0x033148)

// $033150: [8-bit] Defection - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function defection_sub_objective_2_of_2() => byte(0x033150)

// $033DE4: [8-bit] Escape - Main Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function escape_main_objective_1_of_2() => byte(0x033DE4)

// $033DEC: [8-bit] Escape - Main Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function escape_main_objective_2_of_2() => byte(0x033DEC)

// $033E34: [8-bit] Escape - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function escape_sub_objective_1_of_2() => byte(0x033E34)

// $033E3C: [8-bit] Escape - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function escape_sub_objective_2_of_2() => byte(0x033E3C)

// $034BA0: [8-bit] Stealing the Fire - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function stealing_the_fire_main_objective_1_of_3() => byte(0x034BA0)

// $034BA8: [8-bit] Stealing the Fire - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function stealing_the_fire_main_objective_2_of_3() => byte(0x034BA8)

// $034BB0: [8-bit] Stealing the Fire - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function stealing_the_fire_main_objective_3_of_3() => byte(0x034BB0)

// $034BF0: [8-bit] Stealing the Fire - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function stealing_the_fire_sub_objective_1_of_2() => byte(0x034BF0)

// $034BF8: [8-bit] Stealing the Fire - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function stealing_the_fire_sub_objective_2_of_2() => byte(0x034BF8)

// $034F2C: [8-bit] Missing In Action - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function missing_in_action_main_objective_1_of_3() => byte(0x034F2C)

// $034F34: [8-bit] Missing In Action - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function missing_in_action_main_objective_2_of_3() => byte(0x034F34)

// $034F3C: [8-bit] Missing In Action - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function missing_in_action_main_objective_3_of_3() => byte(0x034F3C)

// $034F7C: [8-bit] Missing In Action - Sub Objective 1 of 1
//          0x00 = Incomplete
//          0x01 = Complete
function missing_in_action_sub_objective_1_of_1() => byte(0x034F7C)

// $03501C: [8-bit] The Beachhead - Main Objective 1 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_beachhead_main_objective_1_of_3() => byte(0x03501C)

// $035024: [8-bit] The Beachhead - Main Objective 2 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_beachhead_main_objective_2_of_3() => byte(0x035024)

// $03502C: [8-bit] The Beachhead - Main Objective 3 of 3
//          0x00 = Incomplete
//          0x01 = Complete
function the_beachhead_main_objective_3_of_3() => byte(0x03502C)

// $03506C: [8-bit] The Beachhead - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function the_beachhead_sub_objective_1_of_2() => byte(0x03506C)

// $035074: [8-bit] The Beachhead - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function the_beachhead_sub_objective_2_of_2() => byte(0x035074)

// $03562F: [8-bit] Inside the first bunker in Air Raid level
//          0x00 = Outside bunker
//          0x80 = Inside bunker
function inside_the_first_bunker_in_air_raid_level() => byte(0x03562F)

// $0363C4: [8-bit] Air Raid - Main Objective 1 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_main_objective_1_of_4() => byte(0x0363C4)

// $0363CC: [8-bit] Air Raid - Main Objective 2 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_main_objective_2_of_4() => byte(0x0363CC)

// $0363D4: [8-bit] Air Raid - Main Objective 3 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_main_objective_3_of_4() => byte(0x0363D4)

// $0363DC: [8-bit] Air Raid - Main Objective 4 of 4
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_main_objective_4_of_4() => byte(0x0363DC)

// $036414: [8-bit] Air Raid - Sub Objective 1 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_sub_objective_1_of_2() => byte(0x036414)

// $03641C: [8-bit] Air Raid - Sub Objective 2 of 2
//          0x00 = Incomplete
//          0x01 = Complete
function air_raid_sub_objective_2_of_2() => byte(0x03641C)

achievement(
    title = "Secure the Shore", points = 5, type="progression",
    description = "Complete Mission 1-1: The Beachhead, in Campaign mode",
    id = 521043, badge = "590271", published = "5/18/2025 10:10:07 AM", modified = "6/25/2025 8:14:31 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x01 && the_beachhead_main_objective_1_of_3() == 0x01 &&
              the_beachhead_main_objective_2_of_3() == 0x01 && the_beachhead_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Disrupt and Discover", points = 5, type="missable",
    description = "Finish The Beachhead level with all sub-objectives completed, in Campaign mode",
    id = 521044, badge = "590272", published = "5/18/2025 10:10:07 AM", modified = "6/25/2025 8:14:31 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x01 && the_beachhead_sub_objective_1_of_2() == 0x01 &&
              the_beachhead_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Lock and Load", points = 5,
    description = "Finish The Beachhead level using only your primary loadout, and without using the Mounted Machine Gun, in any mode",
    id = 521045, badge = "590273", published = "5/18/2025 10:10:07 AM", modified = "6/25/2025 8:14:32 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              trigger_when(mission_result_flag() == 0x02) &&
              disable_when(repeated(50, selected_loadout() != 0x00 || mounted_machine_gun_flag() > 0x00),
                  until=current_game_state() != 0xFF
              )
)

achievement(
    title = "Guardian of the Dallas", points = 5, type="progression",
    description = "Complete Mission 1-2: Deck Gunner, in Campaign mode",
    id = 521046, badge = "590274", published = "5/18/2025 10:10:07 AM", modified = "6/25/2025 8:14:32 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x02 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Deck Defender", points = 10,
    description = "Finish Deck Gunner level without letting your health drop below 90%, in any mode",
    id = 521047, badge = "590275", published = "5/18/2025 10:10:08 AM", modified = "6/25/2025 11:29:48 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              (current_game_state() == 0xFF && level_id() == 0x02) &&
              trigger_when((prev(level_timer_in_minutes_fpv_survival_mode()) == 0x00 &&
                  prev(level_timer_in_seconds_fpv_survival_mode()) == 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() == 0x00)
              ) && disable_when(player_health_fpv() > 0x01 && player_health_fpv() < 0x5A) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Airbase Blackout", points = 5, type="progression",
    description = "Complete Mission 1-3: Air Raid, in Campaign mode",
    id = 521048, badge = "590276", published = "5/18/2025 10:10:08 AM", modified = "6/25/2025 8:14:32 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x03 && air_raid_main_objective_1_of_4() == 0x01 &&
              air_raid_main_objective_2_of_4() == 0x01 && air_raid_main_objective_3_of_4() == 0x01 &&
              air_raid_main_objective_4_of_4() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Fuel and Files", points = 5, type="missable",
    description = "Finish Air Raid level with all sub-objectives completed, in Campaign mode",
    id = 521049, badge = "590277", published = "5/18/2025 10:10:08 AM", modified = "6/25/2025 8:14:33 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x03 && air_raid_sub_objective_1_of_2() == 0x01 &&
              air_raid_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Silent Entry", points = 5,
    description = "Reach the bunker without triggering the sound alarm on Air Raid level, in any mode",
    id = 521050, badge = "590278", published = "5/18/2025 10:10:08 AM", modified = "6/25/2025 8:14:33 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x03 &&
              prev(inside_the_first_bunker_in_air_raid_level()) != 0x80 &&
              trigger_when(inside_the_first_bunker_in_air_raid_level() == 0x80) &&
              disable_when(repeated(50, sound_alarm_active_flag() == 0x01), until=current_game_state() != 0xFF)
)

achievement(
    title = "Meeting Diesler", points = 5, type="progression",
    description = "Complete Mission 2-1: Defection, in Campaign mode",
    id = 521051, badge = "590279", published = "5/18/2025 10:10:09 AM", modified = "6/25/2025 8:14:33 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x04 && defection_main_objective_1_of_4() == 0x01 &&
              defection_main_objective_2_of_4() == 0x01 && defection_main_objective_3_of_4() == 0x01 &&
              defection_main_objective_4_of_4() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Intel Heist", points = 5, type="missable",
    description = "Finish Defection level with all sub-objectives completed, in Campaign mode",
    id = 521052, badge = "590280", published = "5/18/2025 10:10:09 AM", modified = "6/25/2025 8:14:33 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x04 && defection_sub_objective_1_of_2() == 0x01 &&
              defection_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "No One Had to Die... Yet", points = 5,
    description = "Reach Diesler's HQ without killing anyone or triggering the sound alarm on Defection level, in any mode",
    id = 521053, badge = "590281", published = "5/18/2025 10:10:09 AM", modified = "6/25/2025 8:14:34 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x04 && prev(defection_main_objective_3_of_4()) != 0x01 &&
              trigger_when(defection_main_objective_3_of_4() == 0x01) &&
              disable_when(repeated(50, sound_alarm_active_flag() == 0x01 || enemies_killed() > 0x00),
                  until=current_game_state() != 0xFF
              )
)

achievement(
    title = "Breakout", points = 5, type="progression",
    description = "Complete Mission 2-2: Escape, in Campaign mode",
    id = 521054, badge = "590282", published = "5/18/2025 10:10:09 AM", modified = "6/25/2025 8:14:34 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x05 && escape_main_objective_1_of_2() == 0x01 &&
              escape_main_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Sneaky Business", points = 5, type="missable",
    description = "Finish Escape level with all sub-objectives completed, in Campaign mode",
    id = 521055, badge = "590283", published = "5/18/2025 10:10:10 AM", modified = "6/25/2025 8:14:34 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x05 && escape_sub_objective_1_of_2() == 0x01 &&
              escape_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Safe Zone Secured", points = 5,
    description = "Finish Escape level by killing all enemies and destroying all explosive barrels without dying, in any mode",
    id = 521056, badge = "590284", published = "5/18/2025 10:10:10 AM", modified = "6/26/2025 1:05:53 AM",
    trigger = measured(tally(110,
                  (game_mode_identifier_2() <= 0x01 && level_id() == 0x05 &&
                  (enemies_killed() - prev(enemies_killed())) == 0x01), (enemies_killed() - prev(enemies_killed())) == 0x02,
                  (enemies_killed() - prev(enemies_killed())) == 0x02, (enemies_killed() - prev(enemies_killed())) == 0x03,
                  (enemies_killed() - prev(enemies_killed())) == 0x03, (enemies_killed() - prev(enemies_killed())) == 0x03,
                  (enemies_killed() - prev(enemies_killed())) == 0x04, (enemies_killed() - prev(enemies_killed())) == 0x04,
                  (enemies_killed() - prev(enemies_killed())) == 0x04, (enemies_killed() - prev(enemies_killed())) == 0x04,
                  (enemies_killed() - prev(enemies_killed())) == 0x05, (enemies_killed() - prev(enemies_killed())) == 0x05,
                  (enemies_killed() - prev(enemies_killed())) == 0x05, (enemies_killed() - prev(enemies_killed())) == 0x05,
                  (enemies_killed() - prev(enemies_killed())) == 0x05)
              ) && prev(mission_result_flag()) != 0x02 && trigger_when(mission_result_flag() == 0x02) &&
              disable_when(repeated(50,
                  once(once(level_id() != 0x05 || demo_flag() == 0x01) || survival_mode_active_flag() == 0x01) ||
                  player_health() < 0x01) || player_health() > 0x63
              ) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Hold the Line", points = 5, type="progression",
    description = "Complete Mission 2-3: Covering Fire, in Campaign mode",
    id = 521057, badge = "590285", published = "5/18/2025 10:10:10 AM", modified = "6/25/2025 8:14:35 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x06 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "One and Done", points = 10,
    description = "Use a single grenade to destroy both the tank and the military vehicle at once on Covering Fire level, in any mode",
    id = 521058, badge = "590286", published = "5/18/2025 10:10:10 AM", modified = "6/25/2025 8:14:35 PM",
    trigger = game_mode_identifier_2() <= 0x01 && survival_mode_active_flag() != 0x01 && demo_flag() != 0x01 &&
              level_id() == 0x06 &&
              trigger_when((level_timer_in_seconds_fpv_survival_mode() > 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() <= 0x3A &&
                  (kill_value_accumulator() - prev(kill_value_accumulator())) >= 0x20D)
              ) && disable_when(level_id() != 0x06) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Through Fire and Steel", points = 5, type="progression",
    description = "Complete Mission 3-1: Break and Cover, in Campaign mode",
    id = 521059, badge = "590287", published = "5/18/2025 10:10:11 AM", modified = "6/25/2025 8:14:35 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x07 && break_and_cover_main_objective_1_of_3() == 0x01 &&
              break_and_cover_main_objective_2_of_3() == 0x01 && break_and_cover_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Big Shots Down", points = 5, type="missable",
    description = "Finish Break and Cover level with all sub-objectives completed, in Campaign mode",
    id = 521060, badge = "590288", published = "5/18/2025 10:10:11 AM", modified = "6/25/2025 8:14:35 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x07 && break_and_cover_sub_objective_1_of_2() == 0x01 &&
              break_and_cover_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Colt-Blooded", points = 10,
    description = "On Break and Cover, switch to the Pistol at the nearest loadout station after breaking through enemy lines, then finish the level using just the pistol, without using any secondary weapons or the Mounted Machine Gun, in any mode",
    id = 521061, badge = "590289", published = "5/18/2025 10:10:11 AM", modified = "6/25/2025 8:14:36 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              level_id() == 0x07 &&
              (break_and_cover_main_objective_1_of_3() == 0x01 && break_and_cover_main_objective_2_of_3() == 0x01 &&
                  selected_loadout() == 0x02 && prev(mission_result_flag()) != 0x02
              ) && trigger_when(mission_result_flag() == 0x02) &&
              disable_when(repeated(40,
                  screen_yaxis_offset() < 0x2CE && break_and_cover_main_objective_2_of_3() == 0x01 &&
                  selected_loadout() != 0x02)
              ) &&
              disable_when(break_and_cover_main_objective_2_of_3() == 0x01 &&
                  prev(secondary_weapon_grenade_demolition_charge_rocket_launcher_status()) == 0x01 &&
                  secondary_weapon_grenade_demolition_charge_rocket_launcher_status() == 0x00
              ) && disable_when(repeated(40, mounted_machine_gun_flag() > 0x00)) &&
              disable_when(break_and_cover_main_objective_2_of_3() == 0x01 && selected_loadout() != 0x02 &&
                  weapon_ammo_count() < prev(weapon_ammo_count())
              ) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Not Your Average Party", points = 5, type="progression",
    description = "Complete Mission 3-2: Unexpected Party, in Campaign mode",
    id = 521062, badge = "590290", published = "5/18/2025 10:10:12 AM", modified = "6/25/2025 8:14:36 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x08 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Precision Only", points = 5,
    description = "Finish Unexpected Party level without using any grenades, in any mode",
    id = 521063, badge = "590291", published = "5/18/2025 10:10:12 AM", modified = "6/25/2025 8:14:37 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x08 &&
              trigger_when((prev(level_timer_in_minutes_fpv_survival_mode()) == 0x00 &&
                  prev(level_timer_in_seconds_fpv_survival_mode()) == 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() == 0x00)
              ) &&
              disable_when(level_timer_in_seconds_fpv_survival_mode() > 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() <= 0x3A &&
                  missile_grenade_ammo_count() < prev(missile_grenade_ammo_count()), until=current_game_state() != 0xFF
              )
)

achievement(
    title = "Panzer? I Hardly Know Her", points = 5, type="progression",
    description = "Complete Mission 3-3: Stealing the Fire, in Campaign mode",
    id = 521064, badge = "590292", published = "5/18/2025 10:10:12 AM", modified = "6/25/2025 8:14:37 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x09 && stealing_the_fire_main_objective_1_of_3() == 0x01 &&
              stealing_the_fire_main_objective_2_of_3() == 0x01 && stealing_the_fire_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Spare Parts Now", points = 5, type="missable",
    description = "Finish Stealing the Fire level with all sub-objectives completed, in Campaign mode",
    id = 521065, badge = "590293", published = "5/18/2025 10:10:13 AM", modified = "6/25/2025 8:14:37 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x09 && stealing_the_fire_sub_objective_1_of_2() == 0x01 &&
              stealing_the_fire_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Speed the Collapse", points = 10,
    description = "Finish Stealing the Fire level in under 3 minutes and 20 seconds, in any mode",
    id = 521066, badge = "590294", published = "5/18/2025 10:10:13 AM", modified = "6/25/2025 8:14:37 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x09 && game_runtime_counter_2() == 0x00 &&
              prev(mission_result_flag()) != 0x02 && trigger_when(mission_result_flag() == 0x02) &&
              disable_when(game_runtime_counter() > 0x2EE0, until=game_runtime_counter() == 0x00)
)

achievement(
    title = "Wingman Duty", points = 5, type="progression",
    description = "Complete Mission 4-1: Tail Gunner, in Campaign mode",
    id = 521067, badge = "590295", published = "5/18/2025 10:10:13 AM", modified = "6/25/2025 8:14:38 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0A && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Airborne Ace", points = 10,
    description = "Finish Tail Gunner level with both ally bomber aircraft at above 90% health, in any mode",
    id = 521068, badge = "590296", published = "5/18/2025 10:10:13 AM", modified = "6/25/2025 11:46:21 PM",
    trigger = demo_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              (current_game_state() == 0xFF && level_id() == 0x0A) &&
              trigger_when((prev(level_timer_in_minutes_fpv_survival_mode()) == 0x00 &&
                  prev(level_timer_in_seconds_fpv_survival_mode()) == 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() == 0x00)
              ) &&
              disable_when(repeated(20, (0x733 - player_health_tail_gunner_fpv() + player_health_tail_gunner_fpv_2()) <= 0x733)) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Down but Dangerous", points = 5, type="progression",
    description = "Complete Mission 4-2: Missing in Action, in Campaign mode",
    id = 521069, badge = "590297", published = "5/18/2025 10:10:15 AM", modified = "6/25/2025 8:14:39 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0B && missing_in_action_main_objective_1_of_3() == 0x01 &&
              missing_in_action_main_objective_2_of_3() == 0x01 && missing_in_action_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Secrets in the Wreck", points = 5, type="missable",
    description = "Finish Missing in Action level with all sub-objectives completed, in Campaign mode",
    id = 521070, badge = "590298", published = "5/18/2025 10:10:15 AM", modified = "6/25/2025 8:14:39 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0B && missing_in_action_sub_objective_1_of_1() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "The .30-06 Run", points = 10,
    description = "On Missing in Action, kill the two guards near the first loadout station then switch to the M1 Garand Rifle and complete the level using just the rifle, without using the Mounted Machine Gun or the Tank, in any mode",
    id = 521071, badge = "590299", published = "5/18/2025 10:10:15 AM", modified = "6/25/2025 8:14:40 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              level_id() == 0x0B &&
              (current_game_state() == 0xFF && selected_loadout() == 0x03 && prev(mission_result_flag()) != 0x02) &&
              trigger_when(mission_result_flag() == 0x02) &&
              disable_when(enemies_killed() >= 0x02 && game_runtime_counter() >= 0x10 && selected_loadout() != 0x03 &&
                  weapon_ammo_count() < prev(weapon_ammo_count())
              ) && disable_when((once(operating_a_tank_flag() == 0x01)) || mounted_machine_gun_flag() == 0x01) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Bridge Burner", points = 5, type="progression",
    description = "Complete Mission 4-3: Lone Wolf, in Campaign mode",
    id = 521072, badge = "590300", published = "5/18/2025 10:10:15 AM", modified = "6/25/2025 8:14:40 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0C && lone_wolf_main_objective_1_of_3() == 0x01 &&
              lone_wolf_main_objective_2_of_3() == 0x01 && lone_wolf_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Cache Found", points = 5, type="missable",
    description = "Finish Lone Wolf level with all sub-objectives completed, in Campaign mode",
    id = 521073, badge = "590301", published = "5/18/2025 10:10:16 AM", modified = "6/25/2025 8:14:40 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0C && lone_wolf_sub_objective_1_of_2() == 0x01 &&
              lone_wolf_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Anyone Else?", points = 10,
    description = "Finish Lone Wolf level without receiving damage, in any mode",
    id = 521074, badge = "590302", published = "5/18/2025 10:10:16 AM", modified = "6/25/2025 8:14:40 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x0C && prev(mission_result_flag()) != 0x02 &&
              trigger_when(mission_result_flag() == 0x02) &&
              disable_when(player_health() > 0x01 && player_health() < 0x63, until=current_game_state() != 0xFF)
)

achievement(
    title = "Marked Man", points = 5, type="progression",
    description = "Complete Mission 5-1: The Hunt, in Campaign mode",
    id = 521075, badge = "590303", published = "5/18/2025 10:10:16 AM", modified = "6/25/2025 8:14:41 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0D && the_hunt_main_objective_1_of_3() == 0x01 &&
              the_hunt_main_objective_2_of_3() == 0x01 && the_hunt_main_objective_3_of_3() == 0x01 &&
              prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02
)

achievement(
    title = "Sunk Before It Could Float", points = 5, type="missable",
    description = "Finish The Hunt level with all sub-objectives completed, in Campaign mode",
    id = 521076, badge = "590304", published = "5/18/2025 10:10:16 AM", modified = "6/25/2025 8:14:41 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0D && the_hunt_sub_objective_1_of_2() == 0x01 &&
              the_hunt_sub_objective_2_of_2() == 0x01 && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Symphony of Destruction", points = 10,
    description = "On The Hunt level, orchestrate a perfectly-timed chain reaction by using one grenade to ignite four explosive barrels and take out four enemies in the blast within 3 seconds of throwing it, in any mode",
    id = 521077, badge = "590305", published = "5/18/2025 10:10:17 AM", modified = "6/25/2025 8:14:41 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x0D &&
              (screen_xaxis_offset() >= 0x2C0 && screen_yaxis_offset() >= 0x21B) &&
              trigger_when(tally(8, (enemies_killed() - prev(enemies_killed())) == 0x01,
                  (enemies_killed() - prev(enemies_killed())) == 0x02, (enemies_killed() - prev(enemies_killed())) == 0x02,
                  (enemies_killed() - prev(enemies_killed())) == 0x03, (enemies_killed() - prev(enemies_killed())) == 0x03,
                  (enemies_killed() - prev(enemies_killed())) == 0x03, (enemies_killed() - prev(enemies_killed())) == 0x04,
                  (enemies_killed() - prev(enemies_killed())) == 0x04, (enemies_killed() - prev(enemies_killed())) == 0x04,
                  (enemies_killed() - prev(enemies_killed())) == 0x04, (enemies_killed() - prev(enemies_killed())) == 0x05,
                  (enemies_killed() - prev(enemies_killed())) == 0x05, (enemies_killed() - prev(enemies_killed())) == 0x05,
                  (enemies_killed() - prev(enemies_killed())) == 0x05, (enemies_killed() - prev(enemies_killed())) == 0x05,
                  (enemies_killed() - prev(enemies_killed())) == 0x06, (enemies_killed() - prev(enemies_killed())) == 0x06,
                  (enemies_killed() - prev(enemies_killed())) == 0x06, (enemies_killed() - prev(enemies_killed())) == 0x06,
                  (enemies_killed() - prev(enemies_killed())) == 0x06, (enemies_killed() - prev(enemies_killed())) == 0x06,
                  (enemies_killed() - prev(enemies_killed())) == 0x07, (enemies_killed() - prev(enemies_killed())) == 0x07,
                  (enemies_killed() - prev(enemies_killed())) == 0x07, (enemies_killed() - prev(enemies_killed())) == 0x07,
                  (enemies_killed() - prev(enemies_killed())) == 0x07, (enemies_killed() - prev(enemies_killed())) == 0x07,
                  (enemies_killed() - prev(enemies_killed())) == 0x07, (enemies_killed() - prev(enemies_killed())) == 0x08,
                  (enemies_killed() - prev(enemies_killed())) == 0x08, (enemies_killed() - prev(enemies_killed())) == 0x08,
                  (enemies_killed() - prev(enemies_killed())) == 0x08, (enemies_killed() - prev(enemies_killed())) == 0x08,
                  (enemies_killed() - prev(enemies_killed())) == 0x08, (enemies_killed() - prev(enemies_killed())) == 0x08,
                  (enemies_killed() - prev(enemies_killed())) == 0x08)
              ) &&
              disable_when(repeated(180,
                  once(weapon_ammo_count() < prev(weapon_ammo_count())) ||
                  secondary_weapon_grenade_demolition_charge_rocket_launcher_status() == 0x01)
              ) &&
              (always_false() || (never((level_id() == 0x0D && secondary_weapon_grenade_demolition_charge_rocket_launcher_status() == 0x00))))
)

achievement(
    title = "Not Today, Die!", points = 5, type="progression",
    description = "Complete Mission 5-2: Shoot Out, in Campaign mode",
    id = 521078, badge = "590306", published = "5/18/2025 10:10:17 AM", modified = "6/25/2025 8:14:41 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0E && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Self-Sustained", points = 10,
    description = "Finish Shoot Out level without letting your health drop below 50% and without picking up any health pack, in any mode",
    id = 521079, badge = "590307", published = "5/18/2025 10:10:17 AM", modified = "6/25/2025 11:51:11 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              (current_game_state() == 0xFF && level_id() == 0x0E) &&
              trigger_when((prev(level_timer_in_minutes_fpv_survival_mode()) == 0x00 &&
                  prev(level_timer_in_seconds_fpv_survival_mode()) == 0x01 &&
                  level_timer_in_seconds_fpv_survival_mode() == 0x00)
              ) &&
              disable_when(repeated(20,
                  (player_health_fpv() > 0x01 && player_health_fpv() > prev(player_health_fpv())) ||
                  player_health_fpv() < 0x32)
              ) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "End of the Line", points = 25, type="win_condition",
    description = "Complete Mission 5-3: End Game, in Campaign mode",
    id = 521080, badge = "590308", published = "5/18/2025 10:10:17 AM", modified = "6/25/2025 8:14:42 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && current_game_state() == 0xFF &&
              game_mode_identifier() == 0x00 && level_id() == 0x0F && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

achievement(
    title = "Final Countdown", points = 10,
    description = "Finish End Game level in under 1 minutes and 20 seconds, in any mode",
    id = 521081, badge = "590309", published = "5/18/2025 10:10:18 AM", modified = "6/25/2025 8:14:42 PM",
    trigger = demo_flag() != 0x01 && survival_mode_active_flag() != 0x01 && game_mode_identifier_2() <= 0x01 &&
              current_game_state() == 0xFF && level_id() == 0x0F && game_runtime_counter_2() == 0x00 &&
              prev(mission_result_flag()) != 0x02 && trigger_when(mission_result_flag() == 0x02) &&
              disable_when(game_runtime_counter() > 0x12C0, until=game_runtime_counter() == 0x00)
)

achievement(
    title = "Hard Mode Unlocked", points = 1, type="missable",
    description = "Unlock Max-GI Mode by earning all Gold and Silver medals in the campaign",
    id = 521082, badge = "590310", published = "5/18/2025 10:10:19 AM", modified = "6/25/2025 8:14:43 PM",
    trigger = level_id() == 0x0F && prev(mission_id()) == 0x04 && mission_id() == 0x05 &&
              gold_medals_collected() == 0x0F && silver_medals_collected() == 0x09 && player_uniform() == 0x00
)

achievement(
    title = "One Man Army", points = 10,
    description = "Survival Mode: Achieve and submit 100 kills without using the Mounted Machine Gun",
    id = 521083, badge = "590311", published = "5/18/2025 10:10:19 AM", modified = "8/7/2025 4:13:15 PM",
    trigger = demo_flag() != 0x01 && player_uniform() != 0x01 && survival_mode_active_flag() == 0x01 &&
              prev(enemies_killed()) > 0x5A && (enemies_killed() >= 0x64 && prev(mission_result_flag()) == 0x00) &&
              mission_result_flag() == 0x01 && disable_when(repeated(15, mounted_machine_gun_flag() == 0x01)) &&
              (always_false() || (never(current_game_state() != 0xFF)))
)

achievement(
    title = "Medal of Honor", points = 50,
    description = "Max-GI Mode: Complete all 5 Missions without dying or exiting to the main menu",
    id = 521084, badge = "590312", published = "5/18/2025 10:10:19 AM", modified = "6/25/2025 8:14:44 PM",
    trigger = demo_flag() != 0x01 && player_uniform() == 0x01 && current_game_state() == 0xFF &&
              campaign_data_slot_selected_loaded() == 0xFF && level_id() == 0x0F && prev(mission_result_flag()) != 0x02 &&
              mission_result_flag() == 0x02
)

leaderboard(
    id = 130897, title = "Time Trial: The Beachhead",
    description = "Fastest time to finish Mission 1-1: The Beachhead",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x01 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x01 && the_beachhead_main_objective_1_of_3() == 0x01 &&
             the_beachhead_main_objective_2_of_3() == 0x01 && the_beachhead_main_objective_3_of_3() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130898, title = "Time Trial: Air Raid",
    description = "Fastest time to finish Mission 1-3: Air Raid",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x03 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x03 && air_raid_main_objective_1_of_4() == 0x01 && air_raid_main_objective_2_of_4() == 0x01 &&
             air_raid_main_objective_3_of_4() == 0x01 && air_raid_main_objective_4_of_4() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130899, title = "Time Trial: Defection",
    description = "Fastest time to finish Mission 2-1: Defection",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x04 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x04 && defection_main_objective_1_of_4() == 0x01 &&
             defection_main_objective_2_of_4() == 0x01 && defection_main_objective_3_of_4() == 0x01 &&
             defection_main_objective_4_of_4() == 0x01 && prev(mission_result_flag()) != 0x02 &&
             mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130900, title = "Time Trial: Escape",
    description = "Fastest time to finish Mission 2-2: Escape",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x05 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x05 && escape_main_objective_1_of_2() == 0x01 && escape_main_objective_2_of_2() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130901, title = "Time Trial: Break and Cover",
    description = "Fastest time to finish Mission 3-1: Break and Cover",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x07 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x07 && break_and_cover_main_objective_1_of_3() == 0x01 &&
             break_and_cover_main_objective_2_of_3() == 0x01 && break_and_cover_main_objective_3_of_3() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130902, title = "Time Trial: Stealing the Fire",
    description = "Fastest time to finish Mission 3-3: Stealing the Fire",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x09 && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x09 && stealing_the_fire_main_objective_1_of_3() == 0x01 &&
             stealing_the_fire_main_objective_2_of_3() == 0x01 && stealing_the_fire_main_objective_3_of_3() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130903, title = "Time Trial: Missing In Action",
    description = "Fastest time to finish Mission 4-2: Missing In Action",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x0B && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x0B && missing_in_action_main_objective_1_of_3() == 0x01 &&
             missing_in_action_main_objective_2_of_3() == 0x01 && missing_in_action_main_objective_3_of_3() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130904, title = "Time Trial: Lone Wolf",
    description = "Fastest time to finish Mission 4-3: Lone Wolf",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x0C && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x0C && lone_wolf_main_objective_1_of_3() == 0x01 &&
             lone_wolf_main_objective_2_of_3() == 0x01 && lone_wolf_main_objective_3_of_3() == 0x01 &&
             prev(mission_result_flag()) != 0x02 && mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130905, title = "Time Trial: The Hunt",
    description = "Fastest time to finish Mission 5-1: The Hunt",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x0D && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x0D && the_hunt_main_objective_1_of_3() == 0x01 && the_hunt_main_objective_2_of_3() == 0x01 &&
             the_hunt_main_objective_3_of_3() == 0x01 && prev(mission_result_flag()) != 0x02 &&
             mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130906, title = "Time Trial: End Game",
    description = "Fastest time to finish Mission 5-3: End Game",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             level_id() == 0x0F && demo_flag() == 0x00 && survival_mode_active_flag() == 0x00,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = level_id() == 0x0F && end_game_main_objective_1_of_1() == 0x01 && prev(mission_result_flag()) != 0x02 &&
             mission_result_flag() == 0x02,
    value  = measured((game_runtime_counter() + game_runtime_counter_2() * 0xFFFF + 0x00)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 130907, title = "Survival Mode: Time",
    description = "Best Time Survived",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             demo_flag() == 0x00 && survival_mode_active_flag() == 0x01,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = prev(ui_state()) != 0x1C && ui_state() == 0x1C,
    value  = measured((level_timer_in_seconds_fpv_survival_mode() + level_timer_in_minutes_fpv_survival_mode() * 0x3C + 0x00)),
    format = "SECS"
)

leaderboard(
    id = 130908, title = "Survival Mode: Kills",
    description = "Most Enemies Eliminated",
    start  = prev(player_health()) == 0x00 && player_health() == 0x63 && current_game_state() == 0xFF &&
             demo_flag() == 0x00 && survival_mode_active_flag() == 0x01,
    cancel = prev(current_game_state()) == 0xFF && current_game_state() != 0xFF,
    submit = prev(ui_state()) != 0x1C && ui_state() == 0x1C,
    value  = measured((enemies_killed() + 0x00)),
    format = "VALUE"
)

rich_presence_conditional_display(demo_flag() == 0x01, "Playing the demo")

rich_presence_conditional_display(ui_state() == 0x1D, "Playing the credits")

rich_presence_conditional_display(current_game_state() != 0xFF, "In the menus")

rich_presence_conditional_display(survival_mode_active_flag() == 0x01, "{0}Survival Mode • Health: {1}% • Weapon: {2} • Kills: {3} • Time: {4}:{5}",
    rich_presence_lookup("Pause", game_pause_flag(), PauseLookup),
    rich_presence_value("Number", player_health()),
    rich_presence_lookup("Weapon", selected_loadout(), WeaponLookup),
    rich_presence_value("Number", enemies_killed()),
    rich_presence_value("Time", level_timer_in_minutes_fpv_survival_mode()),
    rich_presence_value("Time", level_timer_in_seconds_fpv_survival_mode())
)

rich_presence_conditional_display((game_mode_identifier() == 0x00 && player_uniform() == 0x01 && player_health() > 0x00), "{0}Max-GI mode • Mission: {1} • Health: {2}% • Weapon: {3} • Kills: {4}",
    rich_presence_lookup("Pause", game_pause_flag(), PauseLookup),
    rich_presence_lookup("Lvl", level_id(), LvlLookup),
    rich_presence_value("Number", player_health()),
    rich_presence_lookup("Weapon", selected_loadout(), WeaponLookup),
    rich_presence_value("Number", enemies_killed())
)

rich_presence_conditional_display((game_mode_identifier() == 0x00 && player_uniform() == 0x01 && player_health_fpv() > 0x00), "{0}Max-GI mode • Mission: {1} • Health: {2}%",
    rich_presence_lookup("Pause", game_pause_flag(), PauseLookup),
    rich_presence_lookup("Lvl", level_id(), LvlLookup),
    rich_presence_value("Number", player_health_fpv())
)

rich_presence_conditional_display((game_mode_identifier() == 0x00 || game_mode_identifier() == 0x04 || campaign_data_slot_selected_loaded() != 0xFF ||
    player_uniform() == 0x00) && player_health() > 0x00, "{0}{1} • Mission {2} • Health: {3}% • Lives: {4} • Weapon: {5} • Kills: {6}",
    rich_presence_lookup("Pause", game_pause_flag(), PauseLookup),
    rich_presence_lookup("Mode", game_mode_identifier(), ModeLookup),
    rich_presence_lookup("Lvl", level_id(), LvlLookup),
    rich_presence_value("Number", player_health()),
    rich_presence_value("Number", player_lives()),
    rich_presence_lookup("Weapon", selected_loadout(), WeaponLookup),
    rich_presence_value("Number", enemies_killed())
)

rich_presence_conditional_display((game_mode_identifier() == 0x00 || game_mode_identifier() == 0x04 || campaign_data_slot_selected_loaded() != 0xFF ||
    player_uniform() == 0x00) && player_health_fpv() > 0x00, "{0}{1} • Mission {2} • Health: {3}%",
    rich_presence_lookup("Pause", game_pause_flag(), PauseLookup),
    rich_presence_lookup("Mode", game_mode_identifier(), ModeLookup),
    rich_presence_lookup("Lvl", level_id(), LvlLookup),
    rich_presence_value("Number", player_health_fpv())
)

rich_presence_display("In the menus")
