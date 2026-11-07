// Alone in the Dark
// #ID = 19226

// $6BB304: [21 bytes ASCII BE] Serial
//          cdrom0:\SLUS_216.90;1 = 0x6364726f, 0x6d303a5c, 0x534c5553, 0x5f323136, 0x2e39303b, 0x31000000
function _21_bytes_ascii_be_serial() => dword_be(0x6BB304)

// $76656C: [32-bit Pointer] Enemy Data
//          +0x704
//          .+0x00
//          ..+0x10
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 1
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x14
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 2
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x18
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 3
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x1c
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 4
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x20
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 5
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x24
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 6
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x28
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 7
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x2c
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 8
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x30
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 9
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x34
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 10
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
//          ──────────────────────────────────────────────────────────────────────
//          ..+0x38
//          ...+0x00
//          ....+0x38c | [32-bit float] Enemy Health 11
//          10.0 = Ratz
//          20.0 = Vampirez (flying bats in EP3 mostly)
//          40.0 = Humanz (regular zombie)
//          150.0 = Special (Monster in EP4-CH2)
//          250.0 = Special (mother vampirez, evolved humanz in EP6-CH3)
//          0.0 = Dead
//          ....+0x42c | [8-bit] Enemy Death by Burning (Spray + Lighter) Flag
//          0x00 = False
//          0x01 = True
function enemy_data() => dword(0x76656C)
function _0x00() => dword((enemy_data() & 0x1FFFFFF) + 0x000704)

// $7A3004: [32-bit Pointer] Car Data
//          +0x9f8
//          .+0x18
//          ..+0x384
//          ...+0x00
//          ....+0x24 | [8-bit] Car Interior Mesh Mode
//          0x00 = Exterior Shell (when outside)
//          0x01 = Interactive Interior (when inside)
//          ────────────────────────────────────────────────────────────────
//          ....+0x5c | [32-bit float] Hotwire Car | Left Hand Action
//          Note: only functional in a car
//          0.0 = Default
//          1.24 = Hotwiring
//          ────────────────────────────────────────────────────────────────
//          ....+0x60 | [32-bit float] Hotwire Car | Right Hand Action
//          Note: only functional in a car
//          0.0 = Default
//          1.25 = Hotwiring
//          ────────────────────────────────────────────────────────────────
//          ....+0x74 | [32-bit] Hotwire Car | Left Hand Current Wire Selected
//          Note: only functional in a car
//          0x00 = Blue
//          0x01 = Red
//          0x02 = Green
//          ────────────────────────────────────────────────────────────────
//          ....+0x78 [32-bit] Hotwire Car | Right Hand Current Wire Selected
//          Note: only functional in a car
//          0x00 = Blue
//          0x01 = Red
//          0x02 = Green
//          ────────────────────────────────────────────────────────────────
//          ....+0x7c | [16-bit] Hotwire Car | Counter Status
//          Note: only functional in a car
//          0x00 = Default
//          >0x900 = Start the ignition Prompt available
//          >0xba8 = Start the ignition Prompt missed
//          ────────────────────────────────────────────────────────────────
//          ....+0x80 | [32-bit float] Car Steering Left/Right
//          0.0 = Default (can't revert to this value after steering)
//          !0.0 = Steering
//          >0x00 = Hotwiring active
//          ────────────────────────────────────────────────────────────────
//          +0xa00
//          .+0x14
//          ..+0x384
//          ...+0x00
//          ....+0x554 | [8-bit] Car Acceleration Toggle Flag
//          0x00 = False
//          0x01 = True
//          ....+0x580 | [8-bit] Car Camera View
//          0x00 = Cockpit View
//          0x01 = Third Person View
function car_data() => dword(0x7A3004)
function _0x18() => dword((car_data() & 0x1FFFFFF) + 0x0009F8)
function _0x14() => dword((car_data() & 0x1FFFFFF) + 0x000A00)

// $7DCCA4: [32-bit Pointer] Enemy Data (Evolved Humanz)
//          +0x948
//          .+0x844
//          ..+0x00
//          ...+0x80c | [32-bit float] Evolved Humanz Health
//          250.0 = max
//          0.0 = dead
function enemy_data_evolved_humanz() => dword(0x7DCCA4)
function _0x844() => dword((enemy_data_evolved_humanz() & 0x1FFFFFF) + 0x000948)

// $84471C: [32-bit] Chapters Menu | Episode ID
//          Notes: 0xffffffff during New Game. always combine with 0x844720
//          
//          0x00 = Episode 1 - The Nightmare Begins
//          0x01 = Episode 2 - Close Encounters
//          0x02 = Episode 3 - Dark Central Park
//          0x03 = Episode 4 - Sewage Refuge
//          0x04 = Episode 5 - Unexpected Expeditions
//          0x05 = Episode 6 - The Manic Museum
//          0x06 = Episode 7 - Seeking Room 943
//          0x07 = Episode 8 - Location is Key
//          0x08 = Episode 9 - Concealed by the Park
//          0x09 = Episode 10 - The Light Carrier
function chapters_menu_episode_id() => dword(0x84471C)

// $86A700: [32-bit] Game State
//          0x00 = Main Menu
//          0x01 = In-Game
function game_state() => dword(0x86A700)

// $8B1694: [8 bytes ASCII BE] Episodes | Chapters ID
//          Note: The chapters menu is excluded from this documentation because it has its own address. This documentation covers New Game only.
//          
//          IGEBFEDU = 0x49474542, 0x46454455 | Main Menu / During Wake Up
//          ────────────── New Game {WIP} ──────────────
//          IGEBFEDU = 0x49474542, 0x46454455 | Episode 1 - Wake Up
//          A210FEDU = 0x41323130, 0x46454455 | Episode 1 - Vertigo
//          A310FEDU = 0x41333130, 0x46454455 | Continued
//          C310FEDU = 0x43333130, 0x46454455 | Episode 1 - Fire Escape
//          B310FEDU = 0x42333130, 0x46454455 | Continued
//          B410FEDU = 0x42343130, 0x46454455 | Continued
//          D120FEDU = 0x44313230, 0x46454455 | Episode 1 - Collapsing World
//          A120FEDU = 0x41313230, 0x46454455 | End
//          
//          B120FEDU = 0x42313230, 0x46454455 | Episode 2 - Don't Look Down!
//          A220FEDU = 0x41323230, 0x46454455 | Continued
//          B220FEDU = 0x42323230, 0x46454455 | Episode 2 - Off the Beaten Path
//          D220FEDU = 0x44323230, 0x46454455 | Continued
//          A320FEDU = 0x41333230, 0x46454455 | Continued
//          B320FEDU = 0x42333230, 0x46454455 | Continued
//          C320FEDU = 0x43333230, 0x46454455 | Episode 2 - Lifeless Reception
//          E320FEDU = 0x45333230, 0x46454455 | Episode 2 - Car Park Nightmare
//          G320FEDU = 0x47333230, 0x46454455 | Continued
//          A420E320 = 0x41343230, 0x45333230 | End
//          
//          C420E320 = 0x43343230, 0x45333230 | Episode 3 - Flat Out on 59th Street
//          E420E320 = 0x45343230, 0x45333230 | Continued
//          F420E320 = 0x46343230, 0x45333230 | Continued
//          G420E320 = 0x47343230, 0x45333230 | Continued
//          H420E320 = 0x48343230, 0x45333230 | Continued
//          I420E320 = 0x49343230, 0x45333230 | Continued
//          A130H420 = 0x41313330, 0x48343230 | Episode 3 - Life Line
//          0000H420 = 0x30303030, 0x48343230 | Continued
//          C130H420 = 0x43313330, 0x48343230 | Episode 3 - Blood Thirsty Rampage
//          1000H420 = 0x31303030, 0x48343230 | Episode 3 - Skyride Assault
//          C330H420 = 0x43333330, 0x48343230 | Continued
//          D330H420 = 0x44333330, 0x48343230 | End
//          
//          A230H420 = 0x41323330, 0x48343230 | Episode 4 - Deadly Underground
//          B230H420 = 0x42323330, 0x48343230 | Continued
//          F230H420 = 0x46323330, 0x48343230 | Continued
//          H230H420 = 0x48323330, 0x48343230 | Continued
//          J230H420 = 0x4a323330, 0x48343230 | Episode 4 - Draft to Survival
//          I230H420 = 0x49323330, 0x48343230 | Continued
//          2B23H420 = 0x32423233, 0x48343230 | Continued
//          C230H420 = 0x43323330, 0x48343230 | Continued
//          4100H420 = 0x34313030, 0x48343230 | Continued
//          B330H420 = 0x42333330, 0x48343230 | Episode 4 - Flaming Desire
//          
//          D430B330 = 0x44343330, 0x42333330 | Episode 5 - Blood Sucking Chase
//          E430B330 = 0x45343330, 0x42333330 | Continued (starts)
//          F430B330 = 0x46343330, 0x42333330 | Continued (end can be any of the values below)
//          G430B330 = 0x47343330, 0x42333330 | Continued ↕
//          H430B330 = 0x48343330, 0x42333330 | Continued ↕
//          I430B330 = 0x49343330, 0x42333330 | Continued ↕
//          J430B330 = 0x4a343330, 0x42333330 | Continued ↕
//          K430B330 = 0x4b343330, 0x42333330 | Continued ↕
//          A430B330 = 0x41343330, 0x42333330 | Continued ↕
//          B430B330 = 0x42343330, 0x42333330 | Continued ↕
//          C430B330 = 0x43343330, 0x42333330 | Continued (end can be any of the values above)
//          A140F430 = 0x41313430, 0x46343330 | Episode 5 - Mind the Gap (first bit shared with EP6-CH1)
//          
//          A140F430 = 0x41313430, 0x46343330 | Episode 6 - Playground Peril (first bit is shared with EP5-CH3)
//          B140IGEB = 0x42313430, 0x49474542 | Episode 6 - Playground Peril (this is unique to Chapter select)
//          B240F430 = 0x42323430, 0x46343330 | Continued
//          A340F430 = 0x41333430, 0x46343330 | Episode 6 - Egyptian Art... Or Disaster
//          D340F430 = 0x44333430, 0x46343330 | Episode 6 - Terror Exhibition
//          A540F430 = 0x41353430, 0x46343330 | Continued
//          H340F430 = 0x48333430, 0x46343330 | Continued
//          I340F430 = 0x49333430, 0x46343330 | Continued
//          F340F430 = 0x46333430, 0x46343330 | Continued
//          L340F430 = 0x4c333430, 0x46343330 | Episode 6 - No Forkin' Brakes!
//          N340F430 = 0x4e333430, 0x46343330 | Continued
//          O340F430 = 0x4f333430, 0x46343330 | Continued
//          P340F430 = 0x50333430, 0x46343330 | Continued
//          R340F430 = 0x52333430, 0x46343330 | Continued
//          U340IGEB = 0x55333430, 0x49474542 | Continued (unique to chapter select)
//          Q340F430 = 0x51333430, 0x46343330 | Continued
//          T340F430 = 0x54333430, 0x46343330 | Continued
//          V340F430 = 0x56333430, 0x46343330 | End
//          
//          W340F430 = 0x57333430, 0x46343330 | Episode 7 - The Maze of Antiquities
//          X340F430 = 0x58333430, 0x46343330 | Episode 7 - The Maze of Antiquities
//          Y340F430 = 0x59333430, 0x46343330 | Episode 7 - A Medieval Execution
//          Z340F430 = 0x5a333430, 0x46343330 | Continued
//          A440F430 = 0x41343430, 0x46343330 | Continued
//          B440F430 = 0x42343430, 0x46343330 | Episode 7 - Deeper Underground
//          C440F430 = 0x43343430, 0x46343330 | Continued
//          D440F430 = 0x44343430, 0x46343330 | Episode 7 - Darkness in Room 943
//          E440F430 = 0x45343430, 0x46343330 | End
//          
//          A150E440 = 0x41313530, 0x45343430 | Episode 8 - Air Crash Survival
//          E150E440 = 0x45313530, 0x45343430 | Episode 8 - Dead End Track
//          G150E440 = 0x47313530, 0x45343430 | Continued
//          B150E440 = 0x42313530, 0x45343430 | Continued
//          2A15E440 = 0x32413135, 0x45343430 | Continued
//          2K25E440 = 0x324b3235, 0x45343430 | Continued
//          M250E440 = 0x4d323530, 0x45343430 | Continued
//          L250E440 = 0x4c323530, 0x45343430 | Episode 8 - The Belvedere...Free Entry
//          N250E440 = 0x4e323530, 0x45343430 | Episode 8 - Astronomical Revelation
//          
//          A250E440 = 0x41323530, 0x45343430 | Episode 9 - Alchemists on our Tail!
//          2M25E440 = 0x324d3235, 0x45343430 | Continued
//          2B25E440 = 0x32423235, 0x45343430 | Continued
//          3C25E440 = 0x33433235, 0x45343430 | Continued
//          2C25E440 = 0x32433235, 0x45343430 | Continued
//          3A25E440 = 0x33413235, 0x45343430 | Continued
//          E250E440 = 0x45323530, 0x45343430 | Continued
//          F250E440 = 0x46323530, 0x45343430 | Continued
//          G250E440 = 0x47323530, 0x45343430 | Continued
//          H250E440 = 0x48323530, 0x45343430 | Continued
//          I250E440 = 0x49323530, 0x45343430 | Continued
//          J250E440 = 0x4a323530, 0x45343430 | Continued
//          2A25E440 = 0x32413235, 0x45343430 | Continued
//          B250E440 = 0x42323530, 0x45343430 | Continued
//          C250E440 = 0x43323530, 0x45343430 | Continued
//          D250E440 = 0x44323530, 0x45343430 | Continued
//          2E25E440 = 0x32453235, 0x45343430 | Continued
//          2F25E440 = 0x32463235, 0x45343430 | Continued
//          2G25E440 = 0x32473235, 0x45343430 | Continued
//          2H25E440 = 0x32483235, 0x45343430 | Continued
//          2I25E440 = 0x32493235, 0x45343430 | Continued
//          2J25E440 = 0x324a3235, 0x45343430 | Continued
//          A350E440 = 0x41333530, 0x45343430 | Episode 9 - Beat Around The Bush
//          C350E440 = 0x43333530, 0x45343430 | Continued
//          A450E440 = 0x41343530, 0x45343430 | Episode 9 - Come to Light
//          
//          B450E440 = 0x42343530, 0x45343430 | Episode 10 - Light Initiation
//          P450E440 = 0x50343530, 0x45343430 | Episode 10 - Light Progression
//          G450E440 = 0x47343530, 0x45343430 | Continued
//          Q450E440 = 0x51343530, 0x45343430 | Continued
//          I450E440 = 0x49343530, 0x45343430 | Episode 10 - Light Confirmation
//          J450E440 = 0x4a343530, 0x45343430 | Continued
//          K450E440 = 0x4b343530, 0x45343430 | Episode 10 - Revelation
//          L450E440 = 0x4c343530, 0x45343430 | Ending
function _8_bytes_ascii_be_episodes_chapters_id() => dword_be(0x8B1694)

EPLookup = {
    0x49474542: "Episode 1 - The Nightmare Begins: Wake Up",
    0x41323130: "Episode 1 - The Nightmare Begins: Vertigo",
    0x41333130: "Episode 1 - The Nightmare Begins: Vertigo",
    0x43333130: "Episode 1 - The Nightmare Begins: Fire Escape",
    0x42333130: "Episode 1 - The Nightmare Begins: Fire Escape",
    0x42343130: "Episode 1 - The Nightmare Begins: Fire Escape",
    0x44313230: "Episode 1 - The Nightmare Begins: Collapsing World",
    0x41313230: "Episode 1 - The Nightmare Begins: Collapsing World",
    0x42313230: "Episode 2 - Close Encounters: Don't Look Down!",
    0x41323230: "Episode 2 - Close Encounters: Don't Look Down!",
    0x42323230: "Episode 2 - Close Encounters: Off the Beaten Path",
    0x44323230: "Episode 2 - Close Encounters: Off the Beaten Path",
    0x41333230: "Episode 2 - Close Encounters: Off the Beaten Path",
    0x42333230: "Episode 2 - Close Encounters: Off the Beaten Path",
    0x43333230: "Episode 2 - Close Encounters: Lifeless Reception",
    0x45333230: "Episode 2 - Close Encounters: Car Park Nightmare",
    0x47333230: "Episode 2 - Close Encounters: Car Park Nightmare",
    0x41343230: "Episode 2 - Close Encounters: Car Park Nightmare",
    0x43343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x45343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x46343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x47343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x48343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x49343230: "Episode 3 - Dark Central Park: Flat Out on 59th Street",
    0x41313330: "Episode 3 - Dark Central Park: Life Line",
    0x30303030: "Episode 3 - Dark Central Park: Life Line",
    0x43313330: "Episode 3 - Dark Central Park: Blood Thirsty Rampage",
    0x31303030: "Episode 3 - Dark Central Park: Skyride Assault",
    0x43333330: "Episode 3 - Dark Central Park: Skyride Assault",
    0x44333330: "Episode 3 - Dark Central Park: Skyride Assault",
    0x41323330: "Episode 4 - Sewage Refuge: Deadly Underground",
    0x42323330: "Episode 4 - Sewage Refuge: Deadly Underground",
    0x46323330: "Episode 4 - Sewage Refuge: Deadly Underground",
    0x48323330: "Episode 4 - Sewage Refuge: Deadly Underground",
    0x4a323330: "Episode 4 - Sewage Refuge: Draft to Survival",
    0x49323330: "Episode 4 - Sewage Refuge: Draft to Survival",
    0x32423233: "Episode 4 - Sewage Refuge: Draft to Survival",
    0x43323330: "Episode 4 - Sewage Refuge: Draft to Survival",
    0x34313030: "Episode 4 - Sewage Refuge: Draft to Survival",
    0x42333330: "Episode 4 - Sewage Refuge: Flaming Desire",
    0x44343330: "Episode 5 - Unexpected Expeditions: Blood Sucking Chase",
    0x45343330: "Episode 5 - Unexpected Expeditions: Blood Sucking Chase",
    0x46343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x47343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x48343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x49343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x4a343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x4b343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x41343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x42343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x43343330: "Episode 5 - Unexpected Expeditions: Monstrous Hitchhike",
    0x41313430: "Episode 5 - Unexpected Expeditions: Mind the Gap",
    0x42323430: "Episode 6 - The Manic Museum: Playground Peril",
    0x42313430: "Episode 6 - The Manic Museum: Playground Peril //chapter select",
    0x41333430: "Episode 6 - The Manic Museum: Egyptian Art... Or Disaster",
    0x44333430: "Episode 6 - The Manic Museum: Terror Exhibition",
    0x41353430: "Episode 6 - The Manic Museum: Terror Exhibition",
    0x48333430: "Episode 6 - The Manic Museum: Terror Exhibition",
    0x49333430: "Episode 6 - The Manic Museum: Terror Exhibition",
    0x46333430: "Episode 6 - The Manic Museum: Terror Exhibition",
    0x4c333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x4e333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x4f333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x50333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x52333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x55333430: "Episode 6 - The Manic Museum: No Forkin' Brakes! //chapter select",
    0x51333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x54333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x56333430: "Episode 6 - The Manic Museum: No Forkin' Brakes!",
    0x57333430: "Episode 7 - The Maze of Antiquities",
    0x58333430: "Episode 7 - The Maze of Antiquities",
    0x59333430: "Episode 7 - A Medieval Execution",
    0x5a333430: "Episode 7 - A Medieval Execution",
    0x41343430: "Episode 7 - A Medieval Execution",
    0x42343430: "Episode 7 - Deeper Underground",
    0x43343430: "Episode 7 - Deeper Underground",
    0x44343430: "Episode 7 - Darkness in Room 943",
    0x45343430: "Episode 7 - Darkness in Room 943",
    0x41313530: "Episode 8 - Air Crash Survival",
    0x45313530: "Episode 8 - Dead End Track",
    0x47313530: "Episode 8 - Dead End Track",
    0x42313530: "Episode 8 - Dead End Track",
    0x32413135: "Episode 8 - Dead End Track",
    0x324b3235: "Episode 8 - Dead End Track",
    0x4d323530: "Episode 8 - Dead End Track",
    0x4c323530: "Episode 8 - The Belvedere...Free Entry",
    0x4e323530: "Episode 8 - Astronomical Revelation",
    0x41323530: "Episode 8 - Astronomical Revelation",
    0x324d3235: "Episode 9 - Alchemists on our Tail!",
    0x32423235: "Episode 9 - Alchemists on our Tail!",
    0x33433235: "Episode 9 - Alchemists on our Tail!",
    0x32433235: "Episode 9 - Alchemists on our Tail!",
    0x33413235: "Episode 9 - Alchemists on our Tail!",
    0x45323530: "Episode 9 - Alchemists on our Tail!",
    0x46323530: "Episode 9 - Alchemists on our Tail!",
    0x47323530: "Episode 9 - Alchemists on our Tail!",
    0x48323530: "Episode 9 - Alchemists on our Tail!",
    0x49323530: "Episode 9 - Alchemists on our Tail!",
    0x4a323530: "Episode 9 - Alchemists on our Tail!",
    0x32413235: "Episode 9 - Alchemists on our Tail!",
    0x42323530: "Episode 9 - Alchemists on our Tail!",
    0x43323530: "Episode 9 - Alchemists on our Tail!",
    0x44323530: "Episode 9 - Alchemists on our Tail!",
    0x32453235: "Episode 9 - Alchemists on our Tail!",
    0x32463235: "Episode 9 - Alchemists on our Tail!",
    0x32473235: "Episode 9 - Alchemists on our Tail!",
    0x32483235: "Episode 9 - Alchemists on our Tail!",
    0x32493235: "Episode 9 - Alchemists on our Tail!",
    0x324a3235: "Episode 9 - Alchemists on our Tail!",
    0x41333530: "Episode 9 - Beat Around The Bush",
    0x43333530: "Episode 9 - Beat Around The Bush",
    0x41343530: "Episode 9 - Come to Light",
    0x42343530: "Episode 10 - Light Initiation",
    0x50343530: "Episode 10 - Light Progression",
    0x47343530: "Episode 10 - Light Progression",
    0x51343530: "Episode 10 - Light Progression",
    0x49343530: "Episode 10 - Light Confirmation",
    0x4a343530: "Episode 10 - Light Confirmation",
    0x4b343530: "Episode 10 - Revelation",
    0x4c343530: "Episode 10 - Revelation",
}

// $8B16A8: [8 bytes ASCII BE] FMV ID
//          1021 = 0x31303231 | EP1-CH2 scene 1
//          1041 = 0x31303431 | EP1 End scene
//          2042 = 0x32303432 | EP3-CH1 End scene
//          4045 = 0x34303435 | Spare Ending
//          5045 = 0x35303435 | Kill Ending
//          DERC = 0x44455243 | Credits
function _8_bytes_ascii_be_fmv_id() => dword_be(0x8B16A8)

// $8B6B5C: [8 bytes ASCII BE] Progression
//          0111 = 0x30313131 | EP1: CH1
//          0121 = 0x30313231 | EP1: CH2,3,4
//          0112 = 0x30313132 | EP2: All chapters
//          0142 = 0x30313432 | EP3: CH1
//          0113 = 0x30313133 | EP3: CH2
//          0123 = 0x30313233 | EP3: CH3,4
//          1123 = 0x31313233 | EP4: CH1
//          2123 = 0x32313233 | EP4: CH2
//          0133 = 0x30313333 | EP4: CH3
//          0143 = 0x30313433 | EP5: CH1,2
//          0114 = 0x30313134 | EP5: CH3 | EP6: CH1,2
//          0124 = 0x30313234 | EP6: CH3,4
//          1124 = 0x31313234 | EP6: CH3
//          1134 = 0x31313334 | EP6: CH4, EP7: All chapters
//          0115 = 0x30313135 | EP8: All chapters | EP9: All chapters
function _8_bytes_ascii_be_progression() => dword_be(0x8B6B5C)

// $8C50BC: [32-bit] PDA Dial Numbers | Active Flag
//          0x00 = False
//          0x01 = True
function pda_dial_numbers_active_flag() => dword(0x8C50BC)

// $8C50D0: [32-bit] PDA Dial Numbers | Status
//          0x00 = None
//          0x01 = Interacted with
//          0x02 = Interact Transition
//          0x04 = Back Out
//          0x05 = Calling
function pda_dial_numbers_status() => dword(0x8C50D0)

// $8C50D4: [32-bit] PDA Dial Numbers | Active Counter
//          0x00 = when you back out
//          0x00-0x7c1 = call threshold (increments from 0x00)
function pda_dial_numbers_active_counter() => dword(0x8C50D4)

// $8C50DC: [16 bytes ASCII BE] PDA Dial Numbers | Numbers Entered
//          Note: Calling from the Address Book adds - separators, while manually dialing a number stores only the digits.
//          
//          0x30-0x39 = ASCII digits 0-9
//          Address book:
//          212-149-9266    = 0x3231322d, 0x3134392d, 0x39323636 | Sarah
//          212-123-4937    = 0x3231322d, 0x3132332d, 0x34393337 | Peter
//          715-162-7287    = 0x3731352d, 0x3136322d, 0x37323837 | H. Friedman
//          202-168-7687    = 0x3230322d, 0x3136382d, 0x37363837 | Melting Pot Restaurant
//          212-135-7710    = 0x3231322d, 0x3133352d, 0x37373130 | Willy
//          337 910 041 659 = 0x33333720, 0x39313020, 0x30343120, 0x36353900 | J. Sauniere
//          212-133-4333    = 0x3231322d, 0x3133332d, 0x34333333 | Antonio's Pizzeria
//          911             = 0x39313100 | Police
function _16_bytes_ascii_be_pda_dial_numbers_numbers_entered() => dword_be(0x8C50DC)

// $91AF68: [32-bit] Molotov Counter State
//          0x00 = Default
//          >0x00-0x1a = Ready to be thrown
//          <0x1a = decrementing after thrown
function molotov_counter_state() => dword(0x91AF68)

// $91AF70: [32-bit] Molotov State
//          0x00 = Default (unlit, also when thrown)
//          0x01 = Lit
function molotov_state() => dword(0x91AF70)

// $91F6C8: [32-bit] Eye Blinking Active Flag
//          0x00 = False
//          0x01 = True
function eye_blinking_active_flag() => dword(0x91F6C8)

// $921E64: [8 bytes ASCII BE] Cutscene ID
//          1101 = 0x31313031 | EP1-CH1 | Wake Up scene 1
//          1102 = 0x31313032 | EP1-CH1 | Wake Up scene 2
//          1103 = 0x31313033 | EP1-CH1 | Wake Up scene 3
//          1104 = 0x31313034 | EP1-CH1 | Wake Up scene 4
//          1301 = 0x31333031 | EP1-CH2 | Dialogue 1
//          1302 = 0x31333031 | EP1-CH2 | Dialogue 2
//          ───────────────────────────────────────────────────────
//          2203 = 0x32323033 | EP2-CH2 | Dialogue scene 1
//          2201 = 0x32323031 | EP2-CH2 | Elevator scene
//          2302 = 0x32333032 | EP2-CH3 | Flashlight scene
//          2204 = 0x32323034 | EP2-CH3 | Dialogue 1
//          2301 = 0x32333031 | EP2-CH3 | Dialogue 2
//          2303 = 0x32333033 | EP2-CH4 | Reaching the fissure enemy
//          2304 = 0x32333034 | EP2-CH4 | Driving scene
//          ───────────────────────────────────────────────────────
//          3104 = 0x33313034 | EP3-CH2 | Bathroom scene
//          3105 = 0x33313035 | EP3-CH2 | Bathroom Door shot
//          3107 = 0x33313037 | EP3-CH2 | Bathroom Men Died scene
//          3202 = 0x33323032 | EP3-CH3 | Entering Building scene
//          3201 = 0x33323031 | EP4-CH1 | Intro scene
//          3401 = 0x33343031 | EP5-CH2 | Escaping with the ambulance scene
//          3402 = 0x33343032 | EP5-CH2 | End scene
//          4101 = 0x34313031 | EP5-CH3 | Intro scene
//          4103 = 0x34313033 | EP5-CH3 | Ramp Jump scene 1/2
//          4104 = 0x34313034 | EP5-CH3 | Ramp Jump scene 2/2
//          4102 = 0x34313032 | EP5-CH3 | Crane Jump scene
//          4201 = 0x34323031 | EP6-CH1 | Intro scene
//          4203 = 0x34323033 | EP6-CH3 | Cop scene
//          4202 = 0x34323032 | EP7-CH2 | Dead cop scene
//          5203 = 0x35323033 | EP8-CH3 | Telescope scene 1
//          5204 = 0x35323034 | EP8-CH3 | Telescope scene 2
//          5301 = 0x35333031 | EP9-CH1 | end car scene
//          5403 = 0x35343033 | EP9-CH2 | beam scene
function _8_bytes_ascii_be_cutscene_id() => dword(0x921E64)
function _8_bytes_ascii_be_cutscene_id_dword_be() => dword_be(0x921E64)

// $921F75: [8-bit] Cutscene Active Flag
//          0x00 = False
//          0x01 = True
function cutscene_active_flag() => byte(0x921F75)

// $AE69C4: [32-bit] Player Animations
//          Note: Numbers with brackets represent consecutive stages of a single animation sequence.
//          
//          ──────────────────────────────────────────────────────
//          Movement
//          ──────────────────────────────────────────────────────
//          0x01 = Idle
//          0x502 = Walking
//          0x503 = Running
//          0x506 = Running Recovery
//          0x516 = Running (Danger)
//          0x590 = Jumping
//          0x591 = Walking Jump
//          0x592 = Running Jump
//          0x540 = Falling
//          0x541 = Ledge Drop Recovery
//          0x10000001 = Getting Up from a Fall
//          0x80001 = Idle (Special Camera Angle)
//          0x80003 = Walking (Special Camera Angle)
//          0x80004 = Walking (Special Camera Angle)
//          
//          0x1001 = Dropping onto a Ladder
//          0x1006 = Getting onto a Ladder
//          0x1003 = Climbing Up a Ladder
//          0x1002 = Ladder Climb Finish
//          0x1004 = Hanging from a Ladder
//          0x1008 = Climbing Down a Ladder
//          0x1009 = Sliding Down a Ladder
//          0x1007 = Getting off a Ladder
//          0x100b = Sliding off a Ladder
//          
//          0x2001 = Dropping onto a Rope
//          0x2005 = Holding onto a Rope
//          0x2007 = Climbing Up a Rope
//          0x2006 = Climbing Down a Rope
//          0x2008 = Adjusting Position on a Rope
//          0x2009 = Adjusting Position on a Rope
//          0x200a = Swinging Left on a Rope
//          0x200c = Swinging Right on a Rope
//          0x200e = Jumping off a Rope
//          0x2011 = Jump onto a Rope
//          0x2015 = Push off the wall and a locked door (scripted in EP7-CH3)
//          
//          0x10001 = Ledge Grab
//          0x10002 = Hanging from a Ledge
//          0x10003 = Ledge Shimmy Left
//          0x10004 = Ledge Shimmy Right
//          0x10007 = Climbing Up a Ledge
//          0x10009 = Ledge Drop
//          0x1000a = Releasing a Ledge
//          ──────────────────────────────────────────────────────
//          Combat
//          ──────────────────────────────────────────────────────
//          0x4001 = Picking Up a Melee Weapon
//          0x4002 = Picking Up a Melee Weapon (mounted on the wall)
//          0x4003 = Idle with a Melee Weapon
//          0x4005 = Walking with a Melee Weapon
//          0x4006 = Running with a Melee Weapon
//          
//          0x4020 = Backward Melee Attack (1/3)
//          0x4021 = Backward Melee Attack (2/3)
//          0x4022 = Backward Melee Attack (3/3)
//          0x4023 = Backward Melee Attack Hit
//          
//          0x4030 = Forward Melee Attack (1/3)
//          0x4031 = Forward Melee Attack (2/3)
//          0x4032 = Forward Melee Attack (3/3)
//          0x4033 = Forward Melee Attack Hit
//          
//          0x4040 = Right Melee Attack (1/3)
//          0x4041 = Right Melee Attack (2/3)
//          0x4042 = Right Melee Attack (3/3)
//          0x4044 = Right Melee Attack (1/3)
//          0x4045 = Right Melee Attack (2/3)
//          0x4046 = Right Melee Attack (3/3)
//          0x4047 = Right Melee Attack Hit
//          
//          0x4050 = Left Melee Attack (1/3)
//          0x4051 = Left Melee Attack (2/3)
//          0x4052 = Left Melee Attack (3/3)
//          0x4054 = Left Melee Attack (1/3)
//          0x4055 = Left Melee Attack (2/3)
//          0x4056 = Left Melee Attack (3/3)
//          0x4057 = Left Melee Attack Hit
//          
//          0x570 = First Person View
//          0x4004 = First Person View with Fire Extinguisher
//          0x400a = First Person View with Fire Extinguisher
//          ──────────────────────────────────────────────────────
//          Interactions
//          ──────────────────────────────────────────────────────
//          0x700 = Interacting with a Switch
//          0x701 = Interacting with Fire Hose
//          0x720 = Handprint Machine
//          0x721 = Handprint Machine (severed hand)
//          0x740 = Keypad Interaction (1/2)
//          0x741 = Keypad Interaction (2/2)
//          0x742 = Pressing Keypad Buttons
//          0x743 = Exiting Keypad
//          0x750 = Interacting with Phonograph
//          0x751 = Breaking the wall (EP7-CH4)
//          0x752 = Interacting with a switch (EP7-CH4)
//          0x754 = Getting up after getting knocked by Sarah (EP7-CH4)
//          0x755 = Knocked by Sarah (scripted)
//          0x756 = Opening Elevator Doors
//          0x757 = Lifting Sarah Flores
//          0x770 = Hotwiring Keypad Panel
//          0x772 = Opening Hotwire Keypad Panel
//          
//          0x40001 = Getting into a Car (Driver's Seat)
//          0x40003 = Sitting in the Driver's Seat (Driving)
//          0x40006 = Preparing to push a Car
//          0x40007 = Pushing a Car
//          0x40010 = Car Horn
//          0x40014 = Turn Car Engine On
//          0x40016 = Car windshield Wipers
//          0x40050 = Getting into a Car (Passenger Seat)
//          0x40051 = Sitting in the Passenger Seat
//          0x40060 = Moving from the Driver's Seat to the Passenger Seat
//          0x40061 = Moving from the Passenger Seat to the Driver's Seat
//          0x40070 = Pulling a Gun in Passenger Seat
//          0x40071 = Aiming a Gun in Passenger Seat
//          0x40200 = Getting into a Forklift
//          0x40201 = Driving a Forklift
//          
//          0x40020 = Opening the Sun Visor
//          0x40021 = Checking the Sun Visor
//          0x40022 = Closing the Sun Visor
//          0x40023 = Picking Up an Item from the Sun Visor
//          
//          0x40030 = Opening the Glove Box (Driver's Seat)
//          0x40031 = Looking in the Glove Box (Driver's Seat)
//          0x40032 = Closing the Glove Box (Driver's Seat)
//          0x40034 = Picking Up an Item from the Glove Box (Passenger Seat)
//          0x40040 = Opening Car panel (hotwiring)
//          0x40041 = Hotwiring a Car
//          
//          0x40140 = Sitting in an Ambulance
//          0x40141 = Pulling a Gun in an Ambulance
//          0x40142 = Climbing throuh the Ambulance Hatch
//          0x40100 = Aiming a Gun in an Ambulance
//          0x40101 = Shooting a Gun in an Ambulance
//          0x40102 = Reloading a Gun in an Ambulance
//          0x40103 = Idle in an Ambulance
//          0x40104 = Picking up a Spray in an Ambulance
//          0x40105 = Holding a Spray in an Ambulance
//          0x40106 = Throwing a Spray in an Ambulance
//          0x40107 = Picking up a Blood Bag in an Ambulance
//          0x40108 = Holding a Blood Bag in an Ambulance
//          0x40109 = Throwing a Blood Bag in an Ambulance
//          0x40110 = Taking ammo in an Ambulance
//          0x40120 = Aiming a Gun through the Ambulance Hatch
//          0x40121 = Shooting a Gun through the Ambulance Hatch
//          0x40123 = Idle through the Ambulance Hatch
//          0x40124 = Taking ammo through the Ambulance Hatch
//          
//          0x400001 = Holding onto a Table
//          0x400002 = Pushing a Table Forward
//          0x400003 = Pushing a Table Backward
//          0x400004 = Pushing a Table Left
//          0x400005 = Pushing a Table Right
//          0x400006 = Climbing onto a Table
//          
//          0x1000001 = Operating a train (1/2)
//          0x1000002 = Operating a train (2/2)
//          ──────────────────────────────────────────────────────
//          Other
//          ──────────────────────────────────────────────────────
//          0x20001 = Fissure Drag Start
//          0x20004 = Being Dragged by a Fissure Enemy
//          0x20005 = Being Dragged by a Fissure Enemy
//          0x20020 = Leaning Right During Fissure Drag (1/3)
//          0x20021 = Leaning Right During Fissure Drag (2/3)
//          0x20022 = Leaning Right During Fissure Drag (3/3)
//          0x20023 = Grabbing Hold on the Right During Fissure Drag (1/2)
//          0x20024 = Grabbing Hold on the Right During Fissure Drag (2/2)
//          0x20026 = Escaping a Fissure Enemy (Right lean)
//          0x20040 = Leaning Left During Fissure Drag (1/3)
//          0x20041 = Leaning Left During Fissure Drag (2/3)
//          0x20042 = Leaning Left During Fissure Drag (3/3)
//          0x20043 = Grabbing Hold on the Left During Fissure Drag (1/2)
//          0x20044 = Grabbing Hold on the Left During Fissure Drag (2/2)
//          0x20007 = Struggling Against a Fissure Enemy
//          0x20046 = Escaping a Fissure Enemy (Left lean)
//          
//          0x300003 = Being swallowed by dark liquid
//          
//          0x14 = Dead
//          0x550 = Reacting to Ground Shaking
//          0x601 = Struggling to pick up Melee Weapon (injured)
//          0x8012 = Being grabbed by Evolved Humanz (EP6-CH3, EP7-CH2)
//          0x8014 = Being thrown by Evolved Humanz (EP6-CH3, EP7-CH2)
//          0x8015 = Hitting a Evolved Humanz with a syringe after being grabbed (EP6-CH3, EP7-CH2)
//          0x8018 = Getting up after being thrown by Evolved Humanz (EP6-CH3, EP7-CH2)
//          0x8019 = Grabbed by Evolved Humanz (EP6-CH3, EP7-CH2)
//          0x8030 = Grabbed by Fissure Humanz in EP6-CH1 (1/4)
//          0x8031 = Grabbed by Fissure Humanz in EP6-CH1 (2/4)
//          0x8032 = Grabbed by Fissure Humanz in EP6-CH1 (3/4)
//          0x8033 = Grabbed by Fissure Humanz in EP6-CH1 (4/4)
//          0x8050 = Taking Fire Damage
//          0x8002 = Grabbed by Vampirez (bats) 1
//          0x800a = Grabbed by Vampirez (bats) 2
//          0x800b = Suspended in the Air by Vampirez (bats)
//          0x800c = Being Dropped by Vampirez (bats)
//          0x800d = Dropped by Vampirez (bats)
//          0x800e = Recovering After Being Dropped by Vampirez (bats)
//          
//          
//          0x580 = In-Game Cutscene Active
//          0x754 = Cutscene (Getting Up)
//          0x755 = Cutscene (Downed)
//          0x730 = Cutting Electric Cable (EP4-CH2 scripted)
//          0x734 = Jumping inside a train (scripted in one of the EPs)
//          0x820 = Idle (scripted in EP10 beam)
//          0x821 = Touching the beam (scripted in EP10 beam) (1/2)
//          0x822 = Touching the beam (scripted in EP10 beam) (2/2)
function player_animations() => dword(0xAE69C4)

// $AE741C: [32-bit] Player Right Hand Animation
//          0x00 = Third Person View
//          0x01 = First Person View
//          0x02 = Equipping an Item
//          0x03 = Unequipping an Item
//          0x1001 = Removing the Magazine
//          0x1002 = Inspecting the Magazine
//          0x1003 = Reinserting the Magazine
//          0x1004 = Changing the Magazine
//          0x1005 = Hip-Fire Shooting 1/2
//          0x1006 = Hip-Fire Shooting 2/2
//          0x1011 = Pistol Aiming 1/2
//          0x1012 = Pistol Aiming 2/2 (ADS)
//          0x1013 = Shooting While Aiming
//          0x2001 = Checking the lighter
//          0x2002 = Using a lighter
//          0x2003 = Lighting up a Molotov (Lighter + Molotov)
//          0x4004 = Flashlight out of Battery
function player_right_hand_animation() => dword(0xAE741C)

// $AE7420: [32-bit] Player Left Hand Animation
//          0x00 = Third Person View
//          0x01 = First Person View
//          0x02 = Equipping an Item
//          0x03 = Unequipping an Item
//          0x04 = Picked up an Item 1/3
//          0x05 = Picked up an Item 2/3
//          0x06 = Picked up an Item 3/3
//          0x1001 = Removing the Magazine
//          0x1002 = Checking the Magazine
//          0x1003 = Reinserting the Magazine
//          0x1004 = Changing the Magazine
//          0x1011 = Aiming with a pistol
//          0x1012 = Aiming with a pistol
//          0x1013 = ADS Shooting
//          0x2001 = Throwing a bottle in air
//          0x2003 = Lighting up a Molotov (Lighter + Molotov)
//          0x4001 = Spraying
//          0x8001 = Equipping a Flashlight
//          0x8002 = Unequipping a Flashlight
//          0x8003 = Holding a Flashlight
//          0x8004 = Flashlight out of Battery
function player_left_hand_animation() => dword(0xAE7420)

// $AE7514: [8 bytes ASCII BE] Current Player Location
//          A320 = 0x41333230 | EP2: CH3 | Elevator
//          B320 = 0x42333230 | EP2: CH3 | Main Reception
//          C320 = 0x43333230 | EP2: CH3 | Reception Backroom
//          D320 = 0x44333230 | EP2: CH4 | Parking Lot 2nd floor
//          E320 = 0x45333230 | EP2: CH4 | Parking Lot 2nd floor
//          I320 = 0x49333230 | EP2: CH4 | Stairway / Spiral ramp
//          H320 = 0x48333230 | EP2: CH4 | Parking Lot 1st floor
//          G320 = 0x47333230 | EP2: CH4 | Parking Lot 1st floor
//          E320 = 0x45333230 | EP2: CH4 | Parking Lot 2nd floor
//          D320 = 0x44333230 | EP2: CH4 | Parking Lot 2nd floor
//          
//          B230 = 0x42323330 | EP4: CH3 | Gated alcove
//          C340 = 0x43333430 | EP6: CH3 | 1st evolved humanz encounter
//          D340 = 0x44333430 | EP6: CH3 | Kitchen
//          A540 = 0x41353430 | EP6: CH3 | 2nd evolved humanz encounter
//          Y340 = 0x59333430 | EP7: CH2 | Room after lasers
//          J340 = 0x4a333430 | E7: CH2 | Third evolved humanz encounter
//          D150 = 0x44313530 | EP8: CH2 | Ratz hallway
//          E150 = 0x45313530 | EP8: CH2 | Inside train
function _8_bytes_ascii_be_current_player_location() => dword_be(0xAE7514)

// $AE7620: [32-bit float] Player Torso Health State
//          Notes:
//          • 0.0 sets 0xae7628 to 0x02 (injured), 20.0 sets it to 0.00 (uninjured).
//          • Spray treatment regenerates 1.0 health per second, bandages regenerate health twice as fast.
//          20.0 = Full
//          0.0 = Injured
function player_torso_health_state() => float(0xAE7620)

// $AE7628: [32-bit] Player Torso Injury State (Found by NeonPug)
//          0x00 = No Injury
//          0x01 = Injury Sprayed
//          0x02 = Untreated Injury (requires medical spray)
//          0x04 = Injury Bandaged (can only be applied after injury sprayed)
function player_torso_injury_state() => dword(0xAE7628)

// $AE7630: [32-bit float] Player Right Arm Health State
//          Notes:
//          • 0.0 sets 0xae7638 to 0x02 (injured), 20.0 sets it to 0.00 (uninjured).
//          • Spray treatment regenerates 1.0 health per second, bandages regenerate health twice as fast.
//          20.0 = Full
//          0.0 = Injured
function player_right_arm_health_state() => float(0xAE7630)

// $AE7638: [32-bit] Player Right Arm Injury State (Found by NeonPug)
//          0x00 = No Injury
//          0x01 = Injury Sprayed
//          0x02 = Untreated Injury (requires medical spray)
//          0x04 = Injury Bandaged (can only be applied after injury sprayed)
function player_right_arm_injury_state() => dword(0xAE7638)

// $AE7640: [32-bit float] Player Left Arm Health State
//          Notes:
//          • 0.0 sets 0xae7648 to 0x02 (injured), 20.0 sets it to 0.00 (uninjured).
//          • Spray treatment regenerates 1.0 health per second, bandages regenerate health twice as fast.
//          20.0 = Full
//          0.0 = Injured
function player_left_arm_health_state() => float(0xAE7640)

// $AE7648: [32-bit] Player Left Arm Injury State (Found by NeonPug)
//          0x00 = No Injury
//          0x01 = Injury Sprayed
//          0x02 = Untreated Injury (requires medical spray)
//          0x04 = Injury Bandaged (can only be applied after injury sprayed)
function player_left_arm_injury_state() => dword(0xAE7648)

// $AE7650: [32-bit float] Player Right Leg Health State
//          Notes:
//          • 0.0 sets 0xae7658 to 0x02 (injured), 20.0 sets it to 0.00 (uninjured).
//          • Spray treatment regenerates 1.0 health per second, bandages regenerate health twice as fast.
//          20.0 = Full
//          0.0 = Injured
function player_right_leg_health_state() => float(0xAE7650)

// $AE7658: [32-bit] Player Right Leg Injury State (Found by NeonPug)
//          0x00 = No Injury
//          0x01 = Injury Sprayed
//          0x02 = Untreated Injury (requires medical spray)
//          0x04 = Injury Bandaged (can only be applied after injury sprayed)
function player_right_leg_injury_state() => dword(0xAE7658)

// $AE7660: [32-bit float] Player Left Leg Health State
//          Notes:
//          • 0.0 sets 0xae7668 to 0x02 (injured), 20.0 sets it to 0.00 (uninjured).
//          • Spray treatment regenerates 1.0 health per second, bandages regenerate health twice as fast.
//          20.0 = Full
//          0.0 = Injured
function player_left_leg_health_state() => float(0xAE7660)

// $AE7668: [32-bit] Player Left Leg Injury State (Found by NeonPug)
//          0x00 = No Injury
//          0x01 = Injury Sprayed
//          0x02 = Untreated Injury (requires medical spray)
//          0x04 = Injury Bandaged (can only be applied after injury sprayed)
function player_left_leg_injury_state() => dword(0xAE7668)

// $AE766C: [32-bit float] Player Health (Found by NeonPug)
//          Notes:
//          • Health begins to decrease once all body parts are injured.
//          • Health begins to increase once any body part is treated.
//          20.0 = Full
//          0.0 = Dead
function player_health() => float(0xAE766C)

// $AE7670: [32-bit] Session Time
//          / 10 is = 1 second
function session_time() => dword(0xAE7670)

// $10311D2: [16-bit] Puzzle: Locked Door | Unlock Status 2
//           Notes:
//           • active during EP2-CH3
//           • only active using the panel, for keypad method see 0x1030a20
//           0x00 = Unlocked
//           0x01 = Locked
function puzzle_locked_door_unlock_status_2() => word(0x10311D2)

// $14DCAA8: [32-bit] Puzzle: Metal Door Unlock Toggle
//           Note: active during EP4-CH2
//           0x00 = False
//           0x01 = True
function puzzle_metal_door_unlock_toggle() => dword(0x14DCAA8)

// $15FF17C: [8-bit] Alcohol Bottle Exploded Flag
//           Note: Only works in EP6: CH3
//           0x00 = False
//           0x01 = True
function alcohol_bottle_exploded_flag() => byte(0x15FF17C)

// $1629EBC: [8-bit] Alcohol Bottle Exploded Flag
//           Note: Only works in EP5: CH1
//           0x00 = False
//           0x01 = True
function alcohol_bottle_exploded_flag_2() => byte(0x1629EBC)

achievement(
    title = "Blindness", points = 2,
    description = "Finish the EP1 \"Wake Up\" sequence without blinking",
    id = 649111, badge = "741701", published = "11/4/2026 6:15:06 AM", modified = "11/4/2026 6:15:06 AM",
    trigger = game_state() == 0x01 &&
              once(prev(_8_bytes_ascii_be_cutscene_id_dword_be()) != 0x31313031 &&
                  _8_bytes_ascii_be_cutscene_id_dword_be() == 0x31313031
              ) &&
              trigger_when((_8_bytes_ascii_be_episodes_chapters_id() == 0x41323130 &&
                  prev(cutscene_active_flag()) != 0x01 && cutscene_active_flag() == 0x01)
              ) && disable_when(eye_blinking_active_flag() == 0x01) &&
              (always_false() || (never(game_state() == 0x00)))
)

achievement(
    title = "The Nightmare Begins", points = 10, type="progression",
    description = "Complete Episode 1 in New Game",
    id = 649112, badge = "741702", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x41313230 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x42313230
)

achievement(
    title = "Clean Hands", points = 2,
    description = "Unlock the door by hotwiring the keypad during EP2 \"Lifeless Reception\" sequence",
    id = 649113, badge = "741703", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = game_state() == 0x01 && _8_bytes_ascii_be_episodes_chapters_id() == 0x43333230 &&
              _8_bytes_ascii_be_current_player_location() == 0x42333230 &&
              prev(puzzle_locked_door_unlock_status_2()) == 0x01 && puzzle_locked_door_unlock_status_2() == 0x00
)

achievement(
    title = "What a Mess", points = 5,
    description = "Kill at least 10 Humanz without dying throughout Episode 2",
    id = 649114, badge = "741704", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = never((_8_bytes_ascii_be_progression() != 0x30313132 || game_state() == 0x00)) &&
              (always_false() || (measured(tally(10,
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0),
                    (player_left_hand_animation() == 0x1013 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0),
                    (player_animations() >= 0x4020 && player_animations() <= 0x4057 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C) == 0.0),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x14)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x14)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x18)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x18)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x1C)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x1C)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x20)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x20)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x24)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x24)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x28)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x28)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x2C)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x2C)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x30)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x30)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x34)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x34)) + 0x42C) == 0x01),
                    (player_animations() == 0x570 && prev(byte(dword(dword(dword(_0x00()) + 0x38)) + 0x42C)) == 0x00 &&
                    byte(dword(dword(dword(_0x00()) + 0x38)) + 0x42C) == 0x01),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0),
                    (player_animations() == 0x40003 && prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x38)) + 0x38C) == 0.0))
                ) && unless(_8_bytes_ascii_be_current_player_location() == 0x49333230)))
)

achievement(
    title = "Close Encounters", points = 10, type="progression",
    description = "Complete Episode 2 in New Game",
    id = 649115, badge = "741705", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x45333230 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x41343230
)

achievement(
    title = "Behind the Wheel", points = 5,
    description = "Finish the EP3 \"Flat Out on 59th Street\" sequence in cockpit view",
    id = 649116, badge = "741706", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = never((_8_bytes_ascii_be_progression() != 0x30313432 || game_state() == 0x00)) &&
              (always_false() || (_8_bytes_ascii_be_progression() == 0x30313432 && prev(_8_bytes_ascii_be_fmv_id()) != 0x32303432 &&
                trigger_when(_8_bytes_ascii_be_fmv_id() == 0x32303432) &&
                disable_when(_8_bytes_ascii_be_progression() == 0x30313432 &&
                    prev(byte(dword(dword(dword(_0x14() + 0x14) + 0x384)) + 0x580)) == 0x00 &&
                    byte(dword(dword(dword(_0x14() + 0x14) + 0x384)) + 0x580) == 0x01
                )))
)

achievement(
    title = "Still Breathing", points = 2,
    description = "Reach the public restroom before bleeding past 75% health in EP3 \"Life Line\" sequence",
    id = 649117, badge = "741707", published = "11/4/2026 6:15:07 AM", modified = "11/4/2026 6:15:07 AM",
    trigger = game_state() == 0x01 &&
              measured((once(prev(_8_bytes_ascii_be_progression()) != 0x30313133 &&
                  _8_bytes_ascii_be_progression() == 0x30313133) && player_health() <= 20.0),
                  when=(_8_bytes_ascii_be_progression() == 0x30313133 && player_health() > 15.0), format="percent"
              ) &&
              trigger_when((prev(_8_bytes_ascii_be_cutscene_id_dword_be()) != 0x33313034 &&
                  _8_bytes_ascii_be_cutscene_id_dword_be() == 0x33313034)
              ) && disable_when(player_health() < 15.0) &&
              (always_false() || (never(game_state() == 0x00)))
)

achievement(
    title = "Dark Central Park", points = 10, type="progression",
    description = "Complete Episode 3 in New Game",
    id = 649118, badge = "741708", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x41323330 &&
              prev(_8_bytes_ascii_be_cutscene_id_dword_be()) != 0x33323031 &&
              _8_bytes_ascii_be_cutscene_id_dword_be() == 0x33323031
)

achievement(
    title = "Carnby's Vision", points = 5,
    description = "Kill the Fissured Humanz in EP4 \"Draft to Survival\" without taking damage",
    id = 649119, badge = "741709", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = never(game_state() == 0x00) &&
              ((once(once(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_animations()) != 0x1002 && player_animations() == 0x1002) &&
                    prev(player_animations()) != 0x540 && player_animations() == 0x540
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0
                ) &&
                disable_when(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(once(game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x32313233 &&
                    prev(player_animations()) != 0x1002 && player_animations() == 0x1002) &&
                    prev(player_animations()) != 0x540 && player_animations() == 0x540
                ) &&
                trigger_when((prev(byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C)) == 0x00) &&
                    byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C) == 0x01
                ) &&
                disable_when(prev(game_state()) == 0x01 && prev(_8_bytes_ascii_be_progression()) == 0x32313233 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(prev(game_state()) == 0x01 && prev(_8_bytes_ascii_be_progression()) == 0x32313233 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(prev(game_state()) == 0x01 && prev(_8_bytes_ascii_be_progression()) == 0x32313233 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(prev(game_state()) == 0x01 && prev(_8_bytes_ascii_be_progression()) == 0x32313233 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(prev(game_state()) == 0x01 && prev(_8_bytes_ascii_be_progression()) == 0x32313233 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )))
)

achievement(
    title = "Worth the Ammo", points = 2,
    description = "Find a way inside the gated alcove in EP4 \"Draft to Survival\" sequence",
    id = 649120, badge = "741710", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = game_state() == 0x01 && prev(puzzle_metal_door_unlock_toggle()) == 0x01 &&
              puzzle_metal_door_unlock_toggle() == 0x00 &&
              ((_8_bytes_ascii_be_episodes_chapters_id() == 0x43323330) ||
               (_8_bytes_ascii_be_episodes_chapters_id() == 0x34313030))
)

achievement(
    title = "Sewage Refuge", points = 10, type="progression",
    description = "Complete Episode 4 in New Game",
    id = 649121, badge = "741711", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x42333330 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x44343330
)

achievement(
    title = "Vampirez Exterminator", points = 3,
    description = "Shoot down 10 bottles filled with flammable liquid during EP5 \"Blood Sucking Chase\" sequence",
    id = 649122, badge = "741712", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = game_state() == 0x01 && _8_bytes_ascii_be_progression() == 0x30313433 &&
              measured(repeated(10, prev(alcohol_bottle_exploded_flag_2()) == 0x00 && alcohol_bottle_exploded_flag_2() == 0x01)) &&
              never(game_state() == 0x00)
)

achievement(
    title = "Unexpected Expeditions", points = 10, type="progression",
    description = "Complete Episode 5 in New Game",
    id = 649123, badge = "741713", published = "11/4/2026 6:15:08 AM", modified = "11/4/2026 6:15:08 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x41313430 &&
              prev(_8_bytes_ascii_be_cutscene_id_dword_be()) != 0x34313033 &&
              _8_bytes_ascii_be_cutscene_id_dword_be() == 0x34313034
)

achievement(
    title = "Lethal Injection", points = 2,
    description = "Counter a Fissured Humanz pounce attack in EP6 \"Playground Peril\" sequence",
    id = 649124, badge = "741714", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = once(game_state() == 0x01 && _8_bytes_ascii_be_episodes_chapters_id() == 0x41333430 &&
                  prev(player_animations()) != 0x8030 && player_animations() == 0x8030
              ) && trigger_when((prev(player_animations()) == 0x8034 && player_animations() != 0x8034)) &&
              never(game_state() == 0x00)
)

achievement(
    title = "Those Things Are Evolving", points = 5,
    description = "Survive your first Evolved Humanz encounter without taking damage in EP6 \"Terror Exhibition\" sequence",
    id = 649125, badge = "741715", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = never((_8_bytes_ascii_be_current_player_location() != 0x43333430 || game_state() == 0x00)) &&
              ((once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x43333430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )))
)

achievement(
    title = "We Meet Again", points = 5,
    description = "Survive your second Evolved Humanz encounter without taking damage in EP6 \"Terror Exhibition\" sequence",
    id = 649126, badge = "741716", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = never((_8_bytes_ascii_be_current_player_location() != 0x41353430 || game_state() == 0x00)) &&
              ((once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x48333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x41353430 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )))
)

achievement(
    title = "The Manic Museum", points = 10, type="progression",
    description = "Complete Episode 6 in New Game",
    id = 649127, badge = "741717", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x56333430 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x57333430
)

achievement(
    title = "Old School Chop", points = 5,
    description = "Survive your third Evolved Humanz encounter using only the battle axe in EP7 \"A Medieval Execution\" sequence",
    id = 649128, badge = "741718", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = never(game_state() == 0x00) &&
              (always_false() || (trigger_when((game_state() == 0x01 && _8_bytes_ascii_be_episodes_chapters_id() == 0x5A333430 &&
                    _8_bytes_ascii_be_current_player_location() == 0x4A333430)
                ) &&
                trigger_when((once(once(player_animations() == 0x4002) && player_animations() >= 0x4020 &&
                    player_animations() <= 0x4057 && prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < 250.0) && player_animations() >= 0x4020 &&
                    player_animations() <= 0x4057 && prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0 &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0)
                ) && unless(_8_bytes_ascii_be_current_player_location() != 0x4A333430) &&
                disable_when(_8_bytes_ascii_be_current_player_location() == 0x4A333430 &&
                    player_animations() < 0x4020 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x10)) +
                    0x38C))
                )))
)

achievement(
    title = "Seeking Room 943", points = 10, type="progression",
    description = "Complete Episode 7 in New Game",
    id = 649129, badge = "741719", published = "11/4/2026 6:15:09 AM", modified = "11/4/2026 6:15:09 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x45343430 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x41313530
)

achievement(
    title = "Dark Power Manifestations", points = 5,
    description = "Defeat the Evolved Humanz without taking damage in EP8 \"Dead End Track\" sequence",
    id = 649130, badge = "741720", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = never(game_state() == 0x00) &&
              ((once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x2C)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x30)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) == 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) < 250.0
                ) &&
                trigger_when((prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) >= 1.0) &&
                    prev(float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C)) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x34)) + 0x38C) == 0.0
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )) ||
               (once((_8_bytes_ascii_be_current_player_location() == 0x44313530 ||
                    _8_bytes_ascii_be_current_player_location() == 0x45313530) &&
                    prev(float(dword(dword(_0x844() & 0x1FFFFFF + 0x844) & 0x1FFFFFF) & 0x1FFFFFF + 0x80C)) == 250.0 &&
                    float(dword(dword(_0x844() & 0x1FFFFFF + 0x844) & 0x1FFFFFF) & 0x1FFFFFF + 0x80C) < 250.0
                ) && prev(float(dword(dword(_0x844() & 0x1FFFFFF + 0x844) & 0x1FFFFFF) & 0x1FFFFFF + 0x80C)) >= 1.0 &&
                trigger_when(float(dword(dword(_0x844() & 0x1FFFFFF + 0x844) & 0x1FFFFFF) & 0x1FFFFFF + 0x80C) < 0.0) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 && player_animations() == 0x1000001) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_torso_health_state()) > player_torso_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_arm_health_state()) > player_right_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_arm_health_state()) > player_left_arm_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_right_leg_health_state()) > player_right_leg_health_state()
                ) &&
                disable_when(_8_bytes_ascii_be_episodes_chapters_id() == 0x47313530 &&
                    _8_bytes_ascii_be_episodes_chapters_id() == 0x45313530 &&
                    prev(player_left_leg_health_state()) > player_left_leg_health_state()
                )))
)

achievement(
    title = "Location Is Key", points = 10, type="progression",
    description = "Complete Episode 8 in New Game",
    id = 649131, badge = "741721", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x41323530 && prev(player_animations()) != 0x40003 &&
              player_animations() == 0x40003
)

achievement(
    title = "Concealed by the Park", points = 10, type="progression",
    description = "Complete Episode 9 in New Game",
    id = 649132, badge = "741722", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && _8_bytes_ascii_be_cutscene_id() == 0x33303435 &&
              prev(_8_bytes_ascii_be_episodes_chapters_id()) == 0x41343530 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x42343530
)

achievement(
    title = "The Light Carrier", points = 25, type="win_condition",
    description = "Complete Episode 10 in New Game and choose the Spare Ending",
    id = 649133, badge = "741723", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = chapters_menu_episode_id() == 0xFFFFFFFF && game_state() == 0x01 &&
              _8_bytes_ascii_be_episodes_chapters_id() == 0x4C343530 && prev(_8_bytes_ascii_be_fmv_id()) == 0x34303435 &&
              _8_bytes_ascii_be_fmv_id() == 0x44455243
)

achievement(
    title = "The Dark Carrier", points = 5,
    description = "Complete Episode 10 and choose the Kill Ending",
    id = 649134, badge = "741724", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = game_state() == 0x01 && _8_bytes_ascii_be_episodes_chapters_id() == 0x4C343530 &&
              prev(_8_bytes_ascii_be_fmv_id()) == 0x35303435 && _8_bytes_ascii_be_fmv_id() == 0x44455243
)

achievement(
    title = "Hot Wheels", points = 2,
    description = "Hotwire a vehicle",
    id = 649135, badge = "741725", published = "11/4/2026 6:15:10 AM", modified = "11/4/2026 6:15:10 AM",
    trigger = game_state() == 0x01 && (player_animations() == 0x40003 || player_animations() == 0x40041) &&
              byte(dword(dword(dword(_0x18() + 0x18) + 0x384)) + 0x24) == 0x01 &&
              word(dword(dword(dword(_0x18() + 0x18) + 0x384)) + 0x7C) > 0x900 &&
              word(dword(dword(dword(_0x18() + 0x18) + 0x384)) + 0x7C) <= 0xBA8 &&
              prev(byte(dword(dword(dword(_0x14() + 0x14) + 0x384)) + 0x554)) == 0x00 &&
              byte(dword(dword(dword(_0x14() + 0x14) + 0x384)) + 0x554) == 0x01
)

achievement(
    title = "Stitched Up", points = 5,
    description = "Spray and bandage 5 bleeding wounds in one session",
    id = 649136, badge = "741726", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = measured(tally(5,
                  (game_state() == 0x01 && prev(player_torso_injury_state()) == 0x01 &&
                  player_torso_injury_state() == 0x04),
                  (game_state() == 0x01 && prev(player_right_arm_injury_state()) == 0x01 &&
                  player_right_arm_injury_state() == 0x04),
                  (game_state() == 0x01 && prev(player_left_arm_injury_state()) == 0x01 &&
                  player_left_arm_injury_state() == 0x04),
                  (game_state() == 0x01 && prev(player_right_leg_injury_state()) == 0x01 &&
                  player_right_leg_injury_state() == 0x04),
                  (game_state() == 0x01 && prev(player_left_leg_injury_state()) == 0x01 &&
                  player_left_leg_injury_state() == 0x04))
              ) && never(_21_bytes_ascii_be_serial() == 0x00)
)

achievement(
    title = "Target Practice", points = 2,
    description = "Throw a bottle filled with flammable liquid and shoot it mid-air",
    id = 649137, badge = "741727", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = game_state() == 0x01 && _8_bytes_ascii_be_episodes_chapters_id() == 0x44333430 &&
              prev(alcohol_bottle_exploded_flag()) == 0x00 && alcohol_bottle_exploded_flag() == 0x01
)

achievement(
    title = "Illuminate the Dark", points = 2,
    description = "Set an enemy on fire with a lit Molotov cocktail",
    id = 649138, badge = "741728", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = never((molotov_counter_state() == 0x00 && player_left_hand_animation() != 0x2001)) &&
              (((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x10)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x10)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x14)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x14)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x18)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x18)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x1C)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x1C)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x20)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x20)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x24)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x24)) +
                    0x38C))
                )) ||
               ((once(prev(molotov_state()) == 0x01 && molotov_state() == 0x00) &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) <= 250.0 &&
                    float(dword(dword(dword(_0x00()) + 0x28)) + 0x38C) < prev(float(dword(dword(dword(_0x00()) + 0x28)) +
                    0x38C))
                )))
)

achievement(
    title = "It's an Emergency", points = 2,
    description = "Kill an enemy using the Medical Spray and Lighter combination",
    id = 649139, badge = "741729", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = ((player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x10)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x14)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x14)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x18)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x18)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x1C)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x1C)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x20)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x20)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x24)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x24)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x28)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x28)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x2C)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x2C)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x30)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x30)) + 0x42C) == 0x01) ||
               (player_right_hand_animation() == 0x2002 && player_left_hand_animation() == 0x4001 &&
                prev(byte(dword(dword(dword(_0x00()) + 0x34)) + 0x42C)) == 0x00 &&
                byte(dword(dword(dword(_0x00()) + 0x34)) + 0x42C) == 0x01))
)

achievement(
    title = "Back to Earth", points = 3,
    description = "Cut yourself down after getting grabbed by a Vampirez",
    id = 649140, badge = "741730", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = once(game_state() == 0x01 && prev(player_animations()) != 0x800A && player_animations() == 0x800A) &&
              trigger_when((prev(player_animations()) == 0x800D && player_animations() == 0x800E)) &&
              never(game_state() == 0x00)
)

achievement(
    title = "Dose of Reality", points = 3,
    description = "Counter an Evolved Humanz grab with a quick syringe injection",
    id = 649141, badge = "741731", published = "11/4/2026 6:15:11 AM", modified = "11/4/2026 6:15:11 AM",
    trigger = once(game_state() == 0x01 && prev(player_animations()) != 0x8012 && player_animations() == 0x8012) &&
              trigger_when((prev(player_animations()) != 0x8015 && player_animations() == 0x8015)) &&
              never((player_animations() == 0x570 || game_state() == 0x00))
)

achievement(
    title = "Emergency Contact", points = 1,
    description = "Dial 911",
    id = 649216, badge = "741782", published = "11/4/2026 5:01:00 PM", modified = "11/4/2026 5:01:00 PM",
    trigger = game_state() == 0x01 && pda_dial_numbers_active_flag() == 0x01 &&
              _16_bytes_ascii_be_pda_dial_numbers_numbers_entered() == 0x39313100 && pda_dial_numbers_status() == 0x05 &&
              prev(pda_dial_numbers_active_counter()) < 0x76C && pda_dial_numbers_active_counter() >= 0x76C
)

rich_presence_conditional_display(game_state() == 0x00, "In the menus")

rich_presence_conditional_display(game_state() == 0x01 && chapters_menu_episode_id() == 0xFFFFFFFF, "{0} | 🤍{1}% | 🕑{2}",
    rich_presence_lookup("EP", _8_bytes_ascii_be_episodes_chapters_id(), EPLookup),
    rich_presence_value("float", player_torso_health_state() + player_right_arm_health_state() + player_left_arm_health_state()
                            + player_right_leg_health_state() + player_left_leg_health_state() + player_health()
                        , format="FLOAT1"),
    rich_presence_value("Centiseconds", session_time() / 0x0A, format="MILLISECS")
)

rich_presence_conditional_display(game_state() == 0x01 && chapters_menu_episode_id() != 0xFFFFFFFF, "Chapter Select | {0} | 🤍{1}% | 🕑{2}",
    rich_presence_lookup("EP", _8_bytes_ascii_be_episodes_chapters_id(), EPLookup),
    rich_presence_value("float", player_torso_health_state() + player_right_arm_health_state() + player_left_arm_health_state()
                            + player_right_leg_health_state() + player_left_leg_health_state() + player_health()
                        , format="FLOAT1"),
    rich_presence_value("Centiseconds", session_time() / 0x0A, format="MILLISECS")
)

rich_presence_display("In the menus")
