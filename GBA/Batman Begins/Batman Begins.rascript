// Batman Begins
// #ID = 5287

// $00B834: [32-bit] Game State 1/2
//          0x00 = In-game
//          0x01 = In menus
function game_state_1_2() => dword(0x00B834)

// $010054: [8-bit] Cheat Code: Super Jump Active Flag
//          0x00 = False
//          0x01 = True
function cheat_code_super_jump_active_flag() => byte(0x010054)

// $010055: [8-bit] Cheat Code: Invincibility Active Flag
//          0x00 = False
//          0x01 = True
function cheat_code_invincibility_active_flag() => byte(0x010055)

// $010057: [8-bit] Cheat Code: Super Speed Active Flag
//          0x00 = False
//          0x01 = True
function cheat_code_super_speed_active_flag() => byte(0x010057)

// $010059: [8-bit] Cheat Code: Remove HUD Active Flag
//          0x00 = False
//          0x01 = True
function cheat_code_remove_hud_active_flag() => byte(0x010059)

// $010154: [24-bit Pointer] Ra's al ghul Health
//          +0x015b30 | [24-bit] Health
//          0xfa = Max
//          0xffff00 = Dead (last 2 bits can be anything, refer to batman's hp)
function ras_al_ghul_health() => tbyte(0x010154)
function health() => tbyte(ras_al_ghul_health() + 0x015B30)

// $010168: [32-bit] Act ID
//          0x00 = Act I, Stage 1: Prologue
//          0x01 = Act II, Stage 1: Monastery
//          0x02 = Act II, Stage 2: Monastery
//          0x03 = Act II, Stage 3: Monastery
//          0x04 = Act III, Stage 1: The Docks
//          0x05 = Act III, Stage 2: The Docks
//          0x06 = Act III, Stage 3: The Docks
//          0x07 = Act IV, Stage 1: Gotham City
//          0x08 = Act IV, Stage 2: Gotham City
//          0x09 = Act IV, Stage 3: Gotham City
//          0x0a = Act V, Stage 1: Arkham Asylum
//          0x0b = Act V, Stage 2: Arkham Asylum
//          0x0c = Act V, Stage 3: Arkham Asylum
//          0x0d = Act VI, Stage 1: Wayne Manor
//          0x0e = Act VII, Stage 1: Finale
//          0x0f = Act VII, Stage 2: Finale
function act_id() => dword(0x010168)

ActLookup = {
    0x00: "Act I, Stage 1: Prologue",
    0x01: "Act II, Stage 1: Monastery",
    0x02: "Act II, Stage 2: Monastery",
    0x03: "Act II, Stage 3: Monastery",
    0x04: "Act III, Stage 1: The Docks",
    0x05: "Act III, Stage 2: The Docks",
    0x06: "Act III, Stage 3: The Docks",
    0x07: "Act IV, Stage 1: Gotham City",
    0x08: "Act IV, Stage 2: Gotham City",
    0x09: "Act IV, Stage 3: Gotham City",
    0x0a: "Act V, Stage 1: Arkham Asylum",
    0x0b: "Act V, Stage 2: Arkham Asylum",
    0x0c: "Act V, Stage 3: Arkham Asylum",
    0x0d: "Act VI, Stage 1: Wayne Manor",
    0x0e: "Act VII, Stage 1: Finale",
    0x0f: "Act VII, Stage 2: Finale",
}

// $01016C: [32-bit] Level ID
//          Note: Values are shared across Acts.
//          0x00-0x04 = Checkpoints
function level_id() => dword(0x01016C)

// $010170: [32-bit] Batman Health
//          0x62 = Max
//          0x270f = Area Complete
//          0xffffffff = Dead (Last bit can be random depending on damage taken. e.g. each enemy hit often deduct 0x05, meaning if health is at 0x01 then it will become 0xfffffffc on death)
function batman_health() => dword(0x010170)

// $010174: [8-bit bitflags] Bat Symbols Collected 1/2
//          Bit0 = 1 Prologue
//          Bit1 = 2 Monastery
//          Bit2 = 3 Monastery
//          Bit3 = 4 Monastery
//          Bit4 = 5 The Docks
//          Bit5 = 6 The Docks
//          Bit6 = 7 The Docks
//          Bit7 = 8 Gotham City
function _8_bit_bitflags_bat_symbols_collected_1_2_1_prologue() => bit0(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_2_monastery() => bit1(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_3_monastery() => bit2(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_4_monastery() => bit3(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_5_the_docks() => bit4(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_6_the_docks() => bit5(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_7_the_docks() => bit6(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_8_gotham_city() => bit7(0x010174)
function _8_bit_bitflags_bat_symbols_collected_1_2_bitcount() => bitcount(0x010174)

// $010175: [8-bit bitflags] Bat Symbols Collected 2/2
//          Bit0 = 9 Gotham City
//          Bit1 = 10 Gotham City
//          Bit2 = 11 Arkham Asylum
//          Bit3 = 12 Arkham Asylum
//          Bit4 = 13 Arkham Asylum
//          Bit5 = 14 Wayne Manor
//          Bit6 = 15 Finale
//          Bit7 = 16 Finale
function _8_bit_bitflags_bat_symbols_collected_2_2_9_gotham_city() => bit0(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_10_gotham_city() => bit1(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_11_arkham_asylum() => bit2(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_12_arkham_asylum() => bit3(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_13_arkham_asylum() => bit4(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_14_wayne_manor() => bit5(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_15_finale() => bit6(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_16_finale() => bit7(0x010175)
function _8_bit_bitflags_bat_symbols_collected_2_2_bitcount() => bitcount(0x010175)

// $010178: [8-bit] Hard Mode Unlock Flag
//          0x00 = False
//          0x01 = True
function hard_mode_unlock_flag() => byte(0x010178)

DifficultyLookup = {
    0x00: "Normal",
    0x01: "Hard",
}

// $010179: [8-bit] Game Completed Once without all Collectibles Flag
//          0x00 = False
//          0x01 = True
function game_completed_once_without_all_collectibles_flag() => byte(0x010179)

// $01017A: [8-bit] Game Completed Twice without all Collectibles Flag
//          0x00 = False
//          0x01 = True
function game_completed_twice_without_all_collectibles_flag() => byte(0x01017A)

// $01017B: [8-bit] Gadgets: Flashbang in Inventory Flag
//          0x00 = False
//          0x01= True
function gadgets_flashbang_in_inventory_flag() => byte(0x01017B)

// $01017C: [8-bit] Gadgets: Smoke Grenade in Inventory Flag
//          0x00 = False
//          0x01= True
function gadgets_smoke_grenade_in_inventory_flag() => byte(0x01017C)

// $01017D: [8-bit] Gadgets: Bats in Inventory Flag
//          0x00 = False
//          0x01= True
function gadgets_bats_in_inventory_flag() => byte(0x01017D)

// $01018C: [8-bit] Stage Select Menu Unlock Flag
//          0x00 = False
//          0x01 = True
function stage_select_menu_unlock_flag() => byte(0x01018C)

// $014280: [32-bit] Runtime
function runtime() => dword(0x014280)

// $0169F8: [32-bit] Game State 2/2
//          0x01 = Main Menu
//          0x02 = Quit Level
//          0x03 = Sound/Sleep Options
//          0x04 = Select a Game / Language Selection
//          0x07 = Paused
//          0x09 = Select a Stage Menu
//          0x0b = In-game
//          0x0c = Dialogue
//          0x0d = Transitions
//          0x10 = Act Scenes / Game Intros
function game_state_2_2() => dword(0x0169F8)

// $016A14: [32-bit] Dialogues
//          0x806d118 = Gotham City intercom 1st dialogue
//          0x806d1b8 = Gotham City intercom 2nd dialogue
//          0x806d210 = Gotham City intercom 3rd dialogue
//          0x806d268 = Gotham City intercom 4th dialogue (scram!)
//          0x806d2c0 = Gotham City intercom 5th dialogue
function dialogues() => dword(0x016A14)

// $02F170: [32-bit] Batman's Position (Gotham City Parking Lot only)
function batmans_position() => dword(0x02F170)

achievement(
    title = "A Glimpse of Fear", points = 2, type="progression",
    description = "Complete Act I: Prologue on your first playthrough",
    id = 541650, badge = "615938", published = "9/4/2025 11:58:22 AM", modified = "9/4/2025 3:28:56 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x00 && act_id() == 0x01 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Shadows of the League", points = 4, type="progression",
    description = "Complete Act II: Monastery on your first playthrough",
    id = 541651, badge = "615939", published = "9/4/2025 11:58:22 AM", modified = "9/4/2025 3:28:57 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x03 && act_id() == 0x04 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "The Fall of Falcone", points = 10, type="progression",
    description = "Complete Act III: The Docks on your first playthrough",
    id = 541652, badge = "615940", published = "9/4/2025 11:58:23 AM", modified = "9/4/2025 3:28:57 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x06 && act_id() == 0x07 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Gotham at Dusk", points = 10, type="progression",
    description = "Complete Act IV: Gotham City on your first playthrough",
    id = 541653, badge = "615941", published = "9/4/2025 11:58:23 AM", modified = "9/4/2025 3:28:57 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x09 && act_id() == 0x0A &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Fear and Chaos", points = 10, type="progression",
    description = "Complete Act V: Arkham Asylum on your first playthrough",
    id = 541654, badge = "615942", published = "9/4/2025 11:58:23 AM", modified = "9/4/2025 3:28:57 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x0C && act_id() == 0x0D &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "No Place like Home", points = 10, type="progression",
    description = "Complete Act VI: Wayne Manor on your first playthrough",
    id = 541655, badge = "615943", published = "9/4/2025 11:58:23 AM", modified = "9/4/2025 3:28:58 PM",
    trigger = hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x0D && act_id() == 0x0E &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "End of the Line", points = 25, type="win_condition",
    description = "Complete Act VII: the Finale on your first playthrough",
    id = 541656, badge = "615944", published = "9/4/2025 11:58:24 AM", modified = "9/4/2025 3:28:58 PM",
    trigger = never(runtime() == 0x00) &&
              ((hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && prev(act_id()) == 0x0F &&
                act_id() == 0x00 && batman_health() != 0x270F &&
                disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                    cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                    cheat_code_remove_hud_active_flag() == 0x01
                )) ||
               (hard_mode_unlock_flag() == 0x00 && stage_select_menu_unlock_flag() == 0x00 && act_id() == 0x00 &&
                prev(game_completed_once_without_all_collectibles_flag()) == 0x00 &&
                game_completed_once_without_all_collectibles_flag() == 0x01 && batman_health() != 0x270F &&
                disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                    cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                    cheat_code_remove_hud_active_flag() == 0x01
                )))
)

achievement(
    title = "Emblem Collector", points = 10, type="missable",
    description = "Collect all 16 Bat Symbols on your first playthrough",
    id = 541657, badge = "615945", published = "9/4/2025 11:58:24 AM", modified = "9/4/2025 3:28:58 PM",
    trigger = game_state_1_2() == 0x00 && hard_mode_unlock_flag() == 0x00 &&
              (prev(_8_bit_bitflags_bat_symbols_collected_1_2_1_prologue()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_2_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_3_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_4_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_5_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_6_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_7_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_8_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_9_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_10_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_11_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_12_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_13_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_14_wayne_manor()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_15_finale()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_16_finale())) == 0x0F &&
              measured((_8_bit_bitflags_bat_symbols_collected_1_2_1_prologue() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_2_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_3_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_4_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_5_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_6_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_7_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_8_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_9_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_10_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_11_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_12_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_13_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_14_wayne_manor() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_15_finale() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_16_finale()) == 0x10
              )
)

achievement(
    title = "Face Your Fear", points = 3,
    description = "Complete Act I: Prologue on your second playthrough",
    id = 541658, badge = "615946", published = "9/4/2025 11:58:24 AM", modified = "9/4/2025 3:28:58 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x00 && act_id() == 0x01 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "League Proven", points = 5,
    description = "Complete Act II: Monastery on your second playthrough",
    id = 541659, badge = "615947", published = "9/4/2025 11:58:24 AM", modified = "9/4/2025 3:28:59 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x03 && act_id() == 0x04 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Falcone's Downfall", points = 10,
    description = "Complete Act III: The Docks on your second playthrough",
    id = 541660, badge = "615948", published = "9/4/2025 11:58:25 AM", modified = "9/4/2025 3:28:59 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x06 && act_id() == 0x07 &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "The Black Market", points = 10,
    description = "Complete Act IV: Gotham City on your second playthrough",
    id = 541661, badge = "615949", published = "9/4/2025 11:58:25 AM", modified = "9/4/2025 3:28:59 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x09 && act_id() == 0x0A &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Arkham's Nightmare", points = 10,
    description = "Complete Act V: Arkham Asylum on your second playthrough",
    id = 541662, badge = "615950", published = "9/4/2025 11:58:25 AM", modified = "9/4/2025 3:28:59 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x0C && act_id() == 0x0D &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Burning Legacy", points = 10,
    description = "Complete Act VI: Wayne Manor on your second playthrough",
    id = 541663, badge = "615951", published = "9/4/2025 11:58:25 AM", modified = "9/4/2025 3:28:59 PM",
    trigger = hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && batman_health() == 0x270F &&
              prev(act_id()) == 0x0D && act_id() == 0x0E &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never(runtime() == 0x00)))
)

achievement(
    title = "Final Stop", points = 25,
    description = "Complete Act VII: the Finale on your second playthrough",
    id = 541664, badge = "615952", published = "9/4/2025 11:58:26 AM", modified = "9/4/2025 3:29:00 PM",
    trigger = never(runtime() == 0x00) &&
              ((hard_mode_unlock_flag() == 0x01 && act_id() == 0x00 && prev(stage_select_menu_unlock_flag()) == 0x00 &&
                stage_select_menu_unlock_flag() == 0x01 && batman_health() != 0x270F &&
                disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                    cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                    cheat_code_remove_hud_active_flag() == 0x01
                )) ||
               (hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00 && act_id() == 0x00 &&
                prev(game_completed_twice_without_all_collectibles_flag()) == 0x00 &&
                game_completed_twice_without_all_collectibles_flag() == 0x01 && batman_health() != 0x270F &&
                disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                    cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                    cheat_code_remove_hud_active_flag() == 0x01
                )))
)

achievement(
    title = "Symbols of the Night", points = 10, type="missable",
    description = "Collect all 16 Bat Symbols on your second playthrough",
    id = 541665, badge = "615953", published = "9/4/2025 11:58:26 AM", modified = "9/4/2025 3:29:00 PM",
    trigger = game_state_1_2() == 0x00 && hard_mode_unlock_flag() == 0x01 &&
              (prev(_8_bit_bitflags_bat_symbols_collected_1_2_1_prologue()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_2_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_3_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_4_monastery()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_5_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_6_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_7_the_docks()) +
              prev(_8_bit_bitflags_bat_symbols_collected_1_2_8_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_9_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_10_gotham_city()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_11_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_12_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_13_arkham_asylum()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_14_wayne_manor()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_15_finale()) +
              prev(_8_bit_bitflags_bat_symbols_collected_2_2_16_finale())) == 0x0F &&
              measured((_8_bit_bitflags_bat_symbols_collected_1_2_1_prologue() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_2_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_3_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_4_monastery() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_5_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_6_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_7_the_docks() +
                  _8_bit_bitflags_bat_symbols_collected_1_2_8_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_9_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_10_gotham_city() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_11_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_12_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_13_arkham_asylum() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_14_wayne_manor() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_15_finale() +
                  _8_bit_bitflags_bat_symbols_collected_2_2_16_finale()) == 0x10
              )
)

achievement(
    title = "Survivor", points = 5,
    description = "Finish Act I: Prologue in Stage Select Menu without dying in a single run",
    id = 541670, badge = "615958", published = "9/4/2025 11:58:27 AM", modified = "9/4/2025 3:29:02 PM",
    trigger = trigger_when(tally(5,
                  once(game_state_1_2() == 0x00 && act_id() == 0x00 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x00 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x00 && prev(level_id()) == 0x02 && level_id() == 0x03),
                  once(game_state_1_2() == 0x00 && act_id() == 0x00 && prev(level_id()) == 0x03 && level_id() == 0x04),
                  once(act_id() == 0x00 && level_id() == 0x04 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless(act_id() != 0x00) && unless((act_id() == 0x00) && level_id() == 0x00 && game_state_1_2() == 0x01) &&
              unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x00 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "Monastery Marathon", points = 5,
    description = "Finish Act II: Monastery, stages 1 through 3 in Stage Select Menu without dying in a single run",
    id = 541671, badge = "615959", published = "9/4/2025 11:58:27 AM", modified = "9/4/2025 3:29:02 PM",
    trigger = trigger_when(tally(5,
                  once(game_state_1_2() == 0x00 && act_id() == 0x01 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x02 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x03 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x03 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(act_id() == 0x03 && level_id() == 0x02 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() < 0x01 || act_id() > 0x03)) &&
              unless((act_id() < 0x01 || act_id() > 0x03 || game_state_1_2() == 0x01)) &&
              unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x01 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "It's Not Over Yet", points = 10,
    description = "Finish Act III: The Docks, stages 1 through 3 in Stage Select Menu without dying in a single run",
    id = 541672, badge = "615960", published = "9/4/2025 11:58:28 AM", modified = "9/4/2025 3:29:02 PM",
    trigger = trigger_when(tally(6,
                  once(game_state_1_2() == 0x00 && act_id() == 0x04 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x04 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x05 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x06 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x06 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(act_id() == 0x06 && level_id() == 0x02 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() < 0x04 || act_id() > 0x06)) && unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x04 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "Clean Fight at the Docks", points = 5,
    description = "Finish Act III: The Docks in Stage Select Menu without using combat gadgets in a single run. grapple and batarang are allowed",
    id = 541667, badge = "615955", published = "9/4/2025 11:58:26 AM", modified = "9/4/2025 3:29:01 PM",
    trigger = trigger_when(tally(6,
                  once(game_state_1_2() == 0x00 && act_id() == 0x04 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x04 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x05 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x06 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x06 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(act_id() == 0x06 && level_id() == 0x02 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) && unless((act_id() < 0x04 || act_id() > 0x06)) && unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(gadgets_flashbang_in_inventory_flag() == 0x00 ||
                  gadgets_smoke_grenade_in_inventory_flag() == 0x00 || gadgets_bats_in_inventory_flag() == 0x00
              ) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x04 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "A Walk Through Gotham", points = 10,
    description = "Finish Act IV: Gotham City, stages 1 through 3 in Stage Select Menu without dying in a single run",
    id = 541673, badge = "615961", published = "9/4/2025 11:58:28 AM", modified = "9/4/2025 3:29:03 PM",
    trigger = trigger_when(tally(8,
                  once(game_state_1_2() == 0x00 && act_id() == 0x07 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x07 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x08 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x08 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x02 && level_id() == 0x03),
                  once(act_id() == 0x09 && level_id() == 0x03 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() < 0x07 || act_id() > 0x09)) && unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x07 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "Skills over Tools", points = 5,
    description = "Finish Act IV: Gotham City in Stage Select Menu without using combat gadgets in a single run. grapple and batarang are allowed",
    id = 541668, badge = "615956", published = "9/4/2025 11:58:27 AM", modified = "9/4/2025 3:29:01 PM",
    trigger = trigger_when(tally(8,
                  once(game_state_1_2() == 0x00 && act_id() == 0x07 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x07 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x08 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x08 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x09 && prev(level_id()) == 0x02 && level_id() == 0x03),
                  once(act_id() == 0x09 && level_id() == 0x03 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) && unless((act_id() < 0x07 || act_id() > 0x09)) && unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(gadgets_flashbang_in_inventory_flag() == 0x00 ||
                  gadgets_smoke_grenade_in_inventory_flag() == 0x00 || gadgets_bats_in_inventory_flag() == 0x00
              ) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x07 && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "Escapee", points = 10,
    description = "Finish Act V: Arkham Asylum, stages 1 through 3 in Stage Select Menu without dying in a single run",
    id = 541674, badge = "615962", published = "9/4/2025 11:58:29 AM", modified = "9/4/2025 3:29:04 PM",
    trigger = trigger_when(tally(8,
                  once(game_state_1_2() == 0x00 && act_id() == 0x0A && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0A && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0B && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0B && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0B && prev(level_id()) == 0x02 && level_id() == 0x03),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0C && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0C && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(act_id() == 0x0C && level_id() == 0x02 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() < 0x0A || act_id() > 0x0C)) && unless(stage_select_menu_unlock_flag() != 0x01) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x0A && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "This Place Is a Mausoleum", points = 5,
    description = "Finish Act VI: Wayne Manor in Stage Select Menu without dying in a single run",
    id = 541675, badge = "615963", published = "9/4/2025 11:58:29 AM", modified = "9/4/2025 3:29:04 PM",
    trigger = trigger_when(tally(3,
                  once(game_state_1_2() == 0x00 && act_id() == 0x0D && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0D && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(act_id() == 0x0D && level_id() == 0x02 && prev(batman_health()) <= 0x62 &&
                  batman_health() == 0x270F))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() != 0x0D || stage_select_menu_unlock_flag() != 0x01)) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x0D && level_id() == 0x00 && game_state_2_2() == 0x0C))))
)

achievement(
    title = "Monorail Tracks", points = 10,
    description = "Finish Act VII: Finale, stages 1 and 2 in Stage Select Menu without dying in a single run",
    id = 541676, badge = "615964", published = "9/4/2025 11:58:29 AM", modified = "9/4/2025 3:29:04 PM",
    trigger = trigger_when(tally(6,
                  once(game_state_1_2() == 0x00 && act_id() == 0x0E && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0E && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() != 0x00 && act_id() == 0x0E && level_id() == 0x02 && batman_health() == 0x270F &&
                  prev(game_state_2_2()) == 0x0D && game_state_2_2() == 0x10),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0F && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0F && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_2_2() == 0x0B && act_id() == 0x0F && level_id() == 0x02 && prev(health()) <= 0xFA &&
                  health() >= 0xFFFFF0))
              ) &&
              disable_when((prev(batman_health()) <= 0x62 && batman_health() >= 0xFFFFFF00) || batman_health() == 0x00) &&
              unless((act_id() < 0x0E || stage_select_menu_unlock_flag() != 0x01)) &&
              unless((game_state_2_2() == 0x01 || game_state_2_2() == 0x04 || game_state_2_2() == 0x09)) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x0E && level_id() == 0x00 && prev(game_state_2_2()) == 0x10 && game_state_2_2() == 0x0B))))
)

achievement(
    title = "Last Stand, No Tricks", points = 5,
    description = "Finish Act VII: Finale in Stage Select Menu without using combat gadgets in a single run. grapple and batarang are allowed",
    id = 541669, badge = "615957", published = "9/4/2025 11:58:27 AM", modified = "9/4/2025 3:29:01 PM",
    trigger = trigger_when(tally(6,
                  once(game_state_1_2() == 0x00 && act_id() == 0x0E && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0E && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_1_2() != 0x00 && act_id() == 0x0E && level_id() == 0x02 && batman_health() == 0x270F &&
                  prev(game_state_2_2()) == 0x0D && game_state_2_2() == 0x10),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0F && prev(level_id()) == 0x00 && level_id() == 0x01),
                  once(game_state_1_2() == 0x00 && act_id() == 0x0F && prev(level_id()) == 0x01 && level_id() == 0x02),
                  once(game_state_2_2() == 0x0B && act_id() == 0x0F && level_id() == 0x02 && prev(health()) <= 0xFA &&
                  health() >= 0xFFFFF0))
              ) && unless((act_id() < 0x0E || stage_select_menu_unlock_flag() != 0x01)) &&
              unless((game_state_2_2() == 0x01 || game_state_2_2() == 0x04 || game_state_2_2() == 0x09)) &&
              disable_when(gadgets_flashbang_in_inventory_flag() == 0x00 ||
                  gadgets_smoke_grenade_in_inventory_flag() == 0x00 || gadgets_bats_in_inventory_flag() == 0x00
              ) &&
              disable_when(cheat_code_super_jump_active_flag() == 0x01 ||
                  cheat_code_invincibility_active_flag() == 0x01 || cheat_code_super_speed_active_flag() == 0x01 ||
                  cheat_code_remove_hud_active_flag() == 0x01
              ) &&
              (always_false() || (never((act_id() == 0x0E && level_id() == 0x00 && game_state_2_2() == 0x10))))
)

achievement(
    title = "You Again, Scram!!", points = 1,
    description = "Provoke the guard through the intercom in Gotham City's Black Market parking lot",
    id = 541666, badge = "615954", published = "9/4/2025 11:58:26 AM", modified = "9/4/2025 3:29:00 PM",
    trigger = never(game_state_1_2() == 0x01) &&
              ((tally(4,
                    (act_id() == 0x07 && level_id() == 0x00 && game_state_1_2() == 0x00 && batmans_position() > 0xA81D &&
                    batmans_position() < 0xFF37 && prev(dialogues()) == 0x00 && dialogues() != 0x00)
                )) ||
               (tally(4,
                    (act_id() == 0x07 && level_id() == 0x00 && game_state_1_2() == 0x00 && batmans_position() > 0xA81D &&
                    batmans_position() < 0xFF37 && prev(game_state_2_2()) == 0x0B && game_state_2_2() == 0x0C)
                )))
)

rich_presence_conditional_display((batman_health() > 0x62 || game_state_1_2() == 0x01), "In the menus")

rich_presence_conditional_display((game_state_1_2() == 0x00 && hard_mode_unlock_flag() == 0x00), "🗺️{0} • 🦇Bat Symbols: {1}/16 • Difficulty: {2} • Health: {3}% • 🕒Time: {4}",
    rich_presence_lookup("Act", act_id(), ActLookup),
    rich_presence_value("Number", _8_bit_bitflags_bat_symbols_collected_1_2_bitcount() + _8_bit_bitflags_bat_symbols_collected_2_2_bitcount()),
    rich_presence_lookup("Difficulty", hard_mode_unlock_flag(), DifficultyLookup),
    rich_presence_value("Number", batman_health() + 2),
    rich_presence_value("Time", runtime(), format="FRAMES")
)

rich_presence_conditional_display((game_state_1_2() == 0x00 && hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x00), "🗺️{0} • 🦇Bat Symbols {1}/16 • Difficulty: {2} • Health: {3}% • 🕒Time: {4}",
    rich_presence_lookup("Act", act_id(), ActLookup),
    rich_presence_value("Number", _8_bit_bitflags_bat_symbols_collected_1_2_bitcount() + _8_bit_bitflags_bat_symbols_collected_2_2_bitcount()),
    rich_presence_lookup("Difficulty", hard_mode_unlock_flag(), DifficultyLookup),
    rich_presence_value("Number", batman_health() + 2),
    rich_presence_value("Time", runtime(), format="FRAMES")
)

rich_presence_conditional_display((game_state_1_2() == 0x00 && hard_mode_unlock_flag() == 0x01 && stage_select_menu_unlock_flag() == 0x01), "🗺️{0} • Health: {1}% • Mode: Stage Select • 🕒Time: {2}",
    rich_presence_lookup("Act", act_id(), ActLookup),
    rich_presence_value("Number", batman_health() + 2),
    rich_presence_value("Time", runtime(), format="FRAMES")
)

rich_presence_display("In the menus")
