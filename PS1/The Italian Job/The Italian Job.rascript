// The Italian Job
// #ID = 22727

// $011101: [8-bit] null
function null() => byte(0x011101)

// $011352: [16-bit] Game Mode
//          Note: Keeps the value of the last played mode while on the main menu, only changing when a new mode is loaded.
//          
//          0x03 = Main menu
//          0x1a = The Italian Job
//          0x1c = Party Play
//          0x2a = Destructor
//          0x20 = Free ride
//          0x26 = Checkpoint
//          0x28 = Challenge
function game_mode() => word(0x011352)

// $011354: [16-bit] Stages
//          Note: Values are shared, always combine with: 0x011352
//          
//          ────── The Italian Job ──────
//          
//          0x00 = Default/Main Menu
//          
//          0x01 = London | The Ambassador's Car
//          0x02 = London | Meet Camp Freddie
//          0x03 = London | Peaches For Peaches
//          0x04 = London | Special Delivery
//          0x05 = London | Skillful Bill
//          0x06 = London | Prison Pals
//          0x07 = London | Keeping It Up
//          0x08 = London | Big William's Ride
//          0x09 = End Scene (London)
//          
//          0x0a = Turin | Torino Tours
//          0x0b = Turin | Mafia Mania
//          0x0c = Turin | Traffic Tape Caper
//          0x0d = Turin | Interference
//          0x0e = Turin | Convoy
//          0x0f = Turin | The Getaway
//          
//          0x10 = Alps | Red, White & Blue
//          0x11 = Alps | Home Free
//          0x12 = End Scene
//          ──────────────────────────────────────────────────────
//          
//          ────── Challenge ──────
//          0x00 = Jumps Test 01
//          0x01 = Brake Test
//          0x02 = Jumps Test 02
//          0x03 = Icy Road Checkpoint Race
//          0x04 = Jumps Test 03
//          0x05 = City Lap Survival
//          0x06 = Jumps Test 04
//          0x07 = Icy Road Destructor
//          0x08 = Jumps Test 05
//          0x09 = Bird's Eye Destructor
//          0x0a = End of Bird's Eye Destructor
//          ──────────────────────────────────────────────────────
//          
//          ────── Checkpoint/Destructor ──────
//          0x00 = London 1
//          0x01 = London 2
//          0x02 = London 3
//          0x03 = London 4
//          0x04 = London 5
//          0x05 = London 6
//          0x06 = London 7
//          0x07 = London 8
//          0x08 = London 9
//          0x09 = London 10
//          0x0a = Turin 1
//          0x0b = Turin 2
//          0x0c = Turin 3
//          0x0d = Turin 4
//          0x0e = Turin 5
//          0x0f = Turin 6
//          0x10 = Turin 7
//          0x11 = Turin 8
//          0x12 = Turin 9
//          0x13 = Turin 10
//          0x14 = End of Turin 10
function stages() => word(0x011354)

// $0113DC: [32-bit] Difficulty Setting
//          0x00 = Normal
//          0x01 = Easy
function difficulty_setting() => dword(0x0113DC)

// $01BF9C: [32-bit] Game State
//          0x00 = Main menu
//          0xffffffff = In-game
function game_state() => dword(0x01BF9C)

// $01E008: [16-bit] Vehicle ID / Mode
//          
//          Mode: The Italian Job | Location: London
//          0x04 = Daimler Consort (stage 1)
//          0x02 = Aston Martin DB4 (stage 2)
//          0x03 = Aston Martin DB4 (stage 3)
//          0x06 = Austin Mini Cooper S and Land Rover Series IIA (stage 4)
//          0x05 = Austin A60 Cambridge (stage 5)
//          0x09 = Land Rover Series IIA (stage 6)
//          0x07 = Aston Martin DB4 (stage 7)
//          0x08 = 1964 Bedford VAL 14 Harrington Legionnaire (stage 8)
//          Mode: The Italian Job | Location: Turin
//          0x48 = Bedford Commer Dormobile (stage 9)
//          0x47 = Austin Mini Cooper S (stage 10)
//          0x4a = Land Rover Series IIA (stage 11)
//          0x49 = Bedford Commer Dormobile (stage 12)
//          0x4b = Land Rover Series IIA (stage 13)
//          0x4c = Austin Mini Cooper S (stage 14)
//          0x4d = Austin Mini Cooper S (stage 15)
//          0x4f = 1964 Bedford VAL 14 Harrington Legionnaire (stage 16)
//          ──────────────────────────────────────────────────────────────────
//          Mode: Free Ride | Location: London
//          0x38 = Daimler Consort
//          0x33 = Aston Martin DB4
//          0x34 = Austin Mini Cooper S
//          0x37 = Austin A60 Cambridge
//          0x39 = Cop Car
//          0x36 = Jaguar E-Type Series 2 Coupe
//          0x35 = 1964 Bedford VAL 14 Harrington Legionnaire
//          0x3a = Shelby AC Cobra
//          0x54 = Fiat Dino
//          0x3b = Lamborghini Miura P400S
//          ──────────────────────────────────────────────────────────────────
//          Mode: Free Ride | Location: Turin
//          0x46 = Daimler Consort
//          0x42 = Aston Martin DB4
//          0x3d = Austin Mini Cooper S
//          0x43 = Austin A60 Cambridge
//          0x41 = Cop Car
//          0x44 = Jaguar E-Type Series 2 Coupe
//          0x45 = 1964 Bedford VAL 14 Harrington Legionnaire
//          0x40 = Shelby AC Cobra
//          0x56 = Fiat Dino
//          0x3f = Lamborghini Miura P400S
//          ──────────────────────────────────────────────────────────────────
//          Mode: Checkpoint
//          0x14 = London 1
//          0x16 = London 2
//          0x18 = London 3
//          0x12 = London 4
//          0x11 = London 5
//          0x1c = London 6
//          0x10 = London 7
//          0x1a = London 8
//          0x1b = London 9
//          0x17 = London 10
//          0x20 = Turin 1
//          0x21 = Turin 2
//          0x22 = Turin 3
//          0x23 = Turin 4
//          0x24 = Turin 5
//          0x25 = Turin 6
//          0x26 = Turin 7
//          0x27 = Turin 8
//          0x28 = Turin 9
//          0x29 = Turin 10
//          Mode: Destructor
//          0x32 = London 1
//          0x31 = London 2
//          0x2e = London 3
//          0x2b = London 4
//          0x0d = London 5
//          0x2f = London 6
//          0x2c = London 7
//          0x2a = London 8
//          0x30 = London 9
//          0x2d = London 10
//          0x5d = Turin 1
//          0x5b = Turin 2
//          0x5c = Turin 3
//          0x5e = Turin 4
//          0x62 = Turin 5
//          0x5f = Turin 6
//          0x63 = Turin 7
//          0x60 = Turin 8
//          0x61 = Turin 9
//          0x64 = Turin 10
//          Mode: Challenge
//          0x0f = Jumps Test 01
//          0x15 = Brake Test
//          0x0e = Jumps Test 02
//          0x59 = Icy Road Checkpoint Race
//          0x0b = Jumps Test 03
//          0x13 = City Lap Survival
//          0x1f = Jumps Test 04
//          0x5a = Icy Road Destructor
//          0x1e = Jumps Test 05
//          0x50 = Bird's Eye Destructor
function vehicle_id_mode() => word(0x01E008)

ModeLookup = {
    0x04: "The Ambassador's Car | Getting to Marvin's in London | Day",
    0x02: "Meet Camp Freddie | Reaching Kings Cross in London | Day",
    0x03: "Peaches For Peaches | Heading to the hospital in London | Day",
    0x06: "Special Delivery | Taking a 4WD back to base in London | Day",
    0x05: "Skillful Bill | Ramming Charlie's car in London | Day",
    0x09: "Prison Pals | Breaking Dominic out of prison in London | Day",
    0x07: "Keeping It Up | Following Dave in London | Day",
    0x08: "Big William's Ride | Delivering explosives in London | Day",
    0x48: "Torino Tours  | Discovering key locations in Turin | Day",
    0x47: "Mafia Mania | Dropping Lorna at the airport in Turin | Day",
    0x4a: "Traffic Tape Caper | Rescuing the team in Turin | Night",
    0x49: "Interference | Disabling traffic cameras in Turin | Day",
    0x4b: "Convoy | Joining the Convoy in Turin | Day",
    0x4c: "The Getaway | Escaping Turin with the team | Day",
    0x4d: "Red, White & Blue | Loading the Minis onto the coach in Alps | Day",
    0x4f: "Home Free | Crossing the Swiss border in Alps | Day",
    0x38: "Free Ride | In London | Driving a Daimler Consort",
    0x33: "Free Ride | In London | Driving an Aston Martin DB4",
    0x34: "Free Ride | In London | Driving an Austin Mini Cooper S",
    0x37: "Free Ride | In London | Driving an Austin A60 Cambridge",
    0x39: "Free Ride | In London | Driving a Cop Car",
    0x36: "Free Ride | In London | Driving a Jaguar E-Type Series 2 Coupe",
    0x35: "Free Ride | In London | Driving a 1964 Bedford VAL 14 Harrington Legionnaire",
    0x3a: "Free Ride | In London | Driving a Shelby AC Cobra",
    0x54: "Free Ride | In London | Driving a Fiat Dino",
    0x3b: "Free Ride | In London | Driving a Lamborghini Miura P400S",
    0x46: "Free Ride | In Turin | Driving a Daimler Consort",
    0x42: "Free Ride | In Turin | Driving an Aston Martin DB4",
    0x3d: "Free Ride | In Turin | Driving an Austin Mini Cooper S",
    0x43: "Free Ride | In Turin | Driving an Austin A60 Cambridge",
    0x41: "Free Ride | In Turin | Driving a Cop Car",
    0x44: "Free Ride | In Turin | Driving a Jaguar E-Type Series 2 Coupe",
    0x45: "Free Ride | In Turin | Driving a 1964 Bedford VAL 14 Harrington Legionnaire",
    0x40: "Free Ride | In Turin | Driving a Shelby AC Cobra",
    0x56: "Free Ride | In Turin | Driving a Fiat Dino",
    0x3f: "Free Ride | In Turin | Driving a Lamborghini Miura P400S",
    0x14: "Checkpoint | London 1",
    0x16: "Checkpoint | London 2",
    0x18: "Checkpoint | London 3",
    0x12: "Checkpoint | London 4",
    0x11: "Checkpoint | London 5",
    0x1c: "Checkpoint | London 6",
    0x10: "Checkpoint | London 7",
    0x1a: "Checkpoint | London 8",
    0x1b: "Checkpoint | London 9",
    0x17: "Checkpoint | London 10",
    0x20: "Checkpoint | Turin 1",
    0x21: "Checkpoint | Turin 2",
    0x22: "Checkpoint | Turin 3",
    0x23: "Checkpoint | Turin 4",
    0x24: "Checkpoint | Turin 5",
    0x25: "Checkpoint | Turin 6",
    0x26: "Checkpoint | Turin 7",
    0x27: "Checkpoint | Turin 8",
    0x28: "Checkpoint | Turin 9",
    0x29: "Checkpoint | Turin 10",
    0x32: "Destructor | London 1",
    0x31: "Destructor | London 2",
    0x2e: "Destructor | London 3",
    0x2b: "Destructor | London 4",
    0x0d: "Destructor | London 5",
    0x2f: "Destructor | London 6",
    0x2c: "Destructor | London 7",
    0x2a: "Destructor | London 8",
    0x30: "Destructor | London 9",
    0x2d: "Destructor | London 10",
    0x5d: "Destructor | Turin 1",
    0x5b: "Destructor | Turin 2",
    0x5c: "Destructor | Turin 3",
    0x5e: "Destructor | Turin 4",
    0x62: "Destructor | Turin 5",
    0x5f: "Destructor | Turin 6",
    0x63: "Destructor | Turin 7",
    0x60: "Destructor | Turin 8",
    0x61: "Destructor | Turin 9",
    0x64: "Destructor | Turin 10",
    0x0f: "Challenge | Jumps Test 01",
    0x15: "Challenge | Brake Test",
    0x0e: "Challenge | Jumps Test 02",
    0x59: "Challenge | Icy Road Checkpoint Race",
    0x0b: "Challenge | Jumps Test 03",
    0x13: "Challenge | City Lap Survival",
    0x1f: "Challenge | Jumps Test 04",
    0x5a: "Challenge | Icy Road Destructor",
    0x1e: "Challenge | Jumps Test 05",
    0x50: "Challenge | Bird's Eye Destructor",
}

// $09432C: [16-bit] Challenge | Icy Road Destructor | Number of cones hit
//          0x00-0x25 = Total
function challenge_icy_road_destructor_number_of_cones_hit() => word(0x09432C)

// $096598: [16-bit] Destructor | Turin 1 | Number of cones hit
//          
//          [16-bit] Destructor | Turin 6 | Won Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Destructor | Turin 8 | Number of cones hit
function destructor_turin_1_number_of_cones_hit() => word(0x096598)

// $09659C: [16-bit] Destructor | Turin 5 | Won Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Destructor | Turin 6 | Number of cones hit
//          
//          [16-bit] Destructor | Turin 7 | Won Flag
//          0x00 = False
//          0x01 = True
function destructor_turin_5_won_flag() => word(0x09659C)

// $0965A0: [16-bit] Destructor | Turin 5 | Number of cones hit
//          
//          [16-bit] Destructor | Turin 7 | Number of cones hit
//          
//          [16-bit] Destructor | Turin 10 | Won Flag
//          0x00 = False
//          0x01 = True
function destructor_turin_5_number_of_cones_hit() => word(0x0965A0)

// $0965A4: [16-bit] Destructor | Turin 9 | Won Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Destructor | Turin 10 | Number of cones hit
function destructor_turin_9_won_flag() => word(0x0965A4)

// $0965A8: [16-bit] Destructor | Turin 9 | Number of cones hit
function destructor_turin_9_number_of_cones_hit() => word(0x0965A8)

// $0977F0: [16-bit] Destructor | Turin 2 | Number of cones hit
//          
//          [16-bit] Destructor | Turin 3 | Number of cones hit
function destructor_turin_2_number_of_cones_hit() => word(0x0977F0)

// $097880: [32-bit] Menu Location
//          0x04 = Main
//          0x06 = Options
//          0x1b = The Italian Job
//          0x1d = Party Play
//          0x25 = Free Ride
//          0x27 = Checkpoint
//          0x2b = Destructor
function menu_location() => dword(0x097880)

// $09797C: [16-bit] Destructor | Turin 4 | Number of cones hit
function destructor_turin_4_number_of_cones_hit() => word(0x09797C)

// $097CB0: [16-bit] Input Code
//          0x65 = Cheat activated
function input_code() => word(0x097CB0)

// $0983B0: [16-bit] Destructor | London 1 | Number of cones hit
function destructor_london_1_number_of_cones_hit() => word(0x0983B0)

// $098AA4: [16-bit] Destructor | London 5 | Number of cones hit
function destructor_london_5_number_of_cones_hit() => word(0x098AA4)

// $099614: [16-bit] Destructor | London 9 | Number of cones hit
function destructor_london_9_number_of_cones_hit() => word(0x099614)

// $099C50: [16-bit] Destructor | London 4 | Number of cones hit
function destructor_london_4_number_of_cones_hit() => word(0x099C50)

// $099FA8: [16-bit] Destructor | London 6 | Number of cones hit
function destructor_london_6_number_of_cones_hit() => word(0x099FA8)

// $09A85C: [16-bit] Destructor | London 2 | Number of cones hit
function destructor_london_2_number_of_cones_hit() => word(0x09A85C)

// $09D648: [16-bit] Destructor | London 3 | Number of cones hit
function destructor_london_3_number_of_cones_hit() => word(0x09D648)

// $09D9BC: [16-bit] Destructor | London 10 | Number of cones hit
function destructor_london_10_number_of_cones_hit() => word(0x09D9BC)

// $09DFF4: [16-bit] Destructor | London 7 | Number of cones hit
function destructor_london_7_number_of_cones_hit() => word(0x09DFF4)

// $09E230: [16-bit] Checkpoint | London 1 | Won Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Destructor | London 8 | Number of cones hit
function checkpoint_london_1_won_flag() => word(0x09E230)

// $09E5B8: [16-bit] Checkpoint | London 2 | Checkpoints Completed
function checkpoint_london_2_checkpoints_completed() => word(0x09E5B8)

// $09F35A: [16-bit] Checkpoint | London 5 | Total Checkpoints
function checkpoint_london_5_total_checkpoints() => word(0x09F35A)

// $09F35C: [16-bit] Checkpoint | London 5 | Checkpoints Completed
function checkpoint_london_5_checkpoints_completed() => word(0x09F35C)

// $0A28D6: [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Shelby AC Cobra
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_won_flag() => word(0x0A28D6)

// $0A28D8: [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Shelby AC Cobra.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_won_flag() => word(0x0A28D8)

// $0A28DA: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Shelby AC Cobra.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Shelby AC Cobra.
function free_ride_turin_secret_destructor_total_cones() => word(0x0A28DA)

// $0A28DC: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Shelby AC Cobra.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Shelby AC Cobra.
function free_ride_turin_secret_destructor_number_of_cones_hit() => word(0x0A28DC)

// $0A28DE: [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_won_flag_2() => word(0x0A28DE)

// $0A28E0: [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_won_flag_2() => word(0x0A28E0)

// $0A28E2: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire.
function free_ride_turin_secret_destructor_total_cones_2() => word(0x0A28E2)

// $0A28E4: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire.
function free_ride_turin_secret_destructor_number_of_cones_hit_2() => word(0x0A28E4)

// $0A3164: [32-bit] The Italian Job | London | Skillful Bill | Time (Hidden)
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_skillful_bill_time() => dword(0x0A3164)

// $0A3474: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Shelby AC Cobra
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag() => dword(0x0A3474)

// $0A347C: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_2() => dword(0x0A347C)

// $0A3A1C: [16-bit] Free Ride | London | Shelby AC Cobra | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_shelby_ac_cobra_police_active_flag() => word(0x0A3A1C)

// $0A3A6A: [16-bit] Free Ride | London | Shelby AC Cobra | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_shelby_ac_cobra_secret_side_mission_active_flag() => word(0x0A3A6A)

// $0A3A70: [32-bit] Free Ride | London | Shelby AC Cobra | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_shelby_ac_cobra_hidden_time() => dword(0x0A3A70)

// $0A3D50: [16-bit] The Italian Job | London | The Ambassador's Car | Police Active Flag
//          0x00 = False
//          0x01 = True
function the_italian_job_london_the_ambassadors_car_police_active_flag() => word(0x0A3D50)

// $0A42FA: [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Cop Car
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_won_flag_3() => word(0x0A42FA)

// $0A42FC: [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Cop Car.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_won_flag_3() => word(0x0A42FC)

// $0A42FE: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Cop Car.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Cop Car.
function free_ride_turin_secret_destructor_total_cones_3() => word(0x0A42FE)

// $0A4300: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Cop Car.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Cop Car.
function free_ride_turin_secret_destructor_number_of_cones_hit_3() => word(0x0A4300)

// $0A4788: [16-bit] Free Ride | London | | 1964 Bedford VAL 14 Harrington Legionnaire | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_1964_bedford_val_14_harrington_legionnaire_police_active_flag() => word(0x0A4788)

// $0A47D6: [16-bit] Free Ride | London | 1964 Bedford VAL 14 Harrington Legionnaire | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_1964_bedford_val_14_harrington_legionnaire_secret_side_mission_active_flag() => word(0x0A47D6)

// $0A47DC: [32-bit] Free Ride | London | 1964 Bedford VAL 14 Harrington Legionnaire | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_1964_bedford_val_14_harrington_legionnaire_hidden_time() => dword(0x0A47DC)

// $0A4900: [16-bit] The Italian Job | Turin | Traffic Tape Caper | Police Active Flag
//          0x00 = False
//          0x01 = True
//          ───────────────────────────────────────────────────────────────────────────────────────
//          [32-bit] Party Play | London Checkpoint 9 | Unlock Flag
//          0x00 = False
//          0x01 = True
function the_italian_job_turin_traffic_tape_caper_police_active_flag() => word(0x0A4900)

// $0A4C7E: [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_won_flag_4() => word(0x0A4C7E)

// $0A4C80: [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          0x00 = False
//          0x01 = True
//          
//          [32-bit] Party Play | Turin Destructor 7 | Unlock Flag
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_won_flag_4() => word(0x0A4C80)

// $0A4C82: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          
//          [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Austin Mini Cooper S
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_total_cones_4() => word(0x0A4C82)

// $0A4C84: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Austin Mini Cooper S.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_number_of_cones_hit_4() => word(0x0A4C84)

// $0A4C86: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Austin Mini Cooper S
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Austin Mini Cooper S.
//          
//          [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Aston Martin DB4
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_total_cones_5() => word(0x0A4C86)

// $0A4C88: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Austin Mini Cooper S
//          
//          [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Aston Martin DB4.
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Austin Mini Cooper S.
function free_ride_turin_secret_destructor_number_of_cones_hit_5() => word(0x0A4C88)

// $0A4C8A: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Aston Martin DB4
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Aston Martin DB4.
//          
//          [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Fiat Dino
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_total_cones_6() => word(0x0A4C8A)

// $0A4C8C: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Aston Martin DB4
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Aston Martin DB4.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Fiat Dino.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_number_of_cones_hit_6() => word(0x0A4C8C)

// $0A4C8E: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Fiat Dino.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Fiat Dino.
//          
//          [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Lamborghini Miura P400S
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_total_cones_7() => word(0x0A4C8E)

// $0A4C90: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Fiat Dino.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Lamborghini Miura P400S.
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Fiat Dino.
function free_ride_turin_secret_destructor_number_of_cones_hit_7() => word(0x0A4C90)

// $0A4C92: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Lamborghini Miura P400S.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Lamborghini Miura P400S.
//          0x03 = Default
function free_ride_turin_secret_destructor_total_cones_8() => word(0x0A4C92)

// $0A4C94: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Lamborghini Miura P400S.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Lamborghini Miura P400S.
function free_ride_turin_secret_destructor_number_of_cones_hit_8() => word(0x0A4C94)

// $0A4CA4: [16-bit] Free Ride | Turin | Secret Track | Active Flag
//          Note: applicable for Lamborghini Miura P400S
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_active_flag() => word(0x0A4CA4)

// $0A4E98: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Cop Car
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_3() => dword(0x0A4E98)

// $0A581C: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Daimler Consort and Jaguar E-Type Series 2 Coupe
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_4() => dword(0x0A581C)

// $0A5820: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Austin Mini Cooper S
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_5() => dword(0x0A5820)

// $0A5824: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Aston Martin DB4
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_6() => dword(0x0A5824)

// $0A5828: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Fiat Dino
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_7() => dword(0x0A5828)

// $0A582C: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Lamborghini Miura P400S
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_8() => dword(0x0A582C)

// $0A5A80: [16-bit] The Italian Job | London | Special Delievery | Police Active Flag
//          0x00 = False
//          0x01 = True
function the_italian_job_london_special_delievery_police_active_flag() => word(0x0A5A80)

// $0A5DBE: [16-bit] Free Ride | London | Daimler Consort | Secret Scrapyard Race | Total Laps
//          0x05 = Total
function free_ride_london_daimler_consort_secret_scrapyard_race_total_laps() => word(0x0A5DBE)

// $0A5DC0: [16-bit] Free Ride | London | Jaguar E-Type Series 2 Coupe | Police Active Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | London | Daimler Consort | Secret Scrapyard Race | Number of laps passed
function free_ride_london_jaguar_etype_series_2_coupe_police_active_flag() => word(0x0A5DC0)

// $0A5DC4: [16-bit] Free Ride | London | Daimler Consort | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_daimler_consort_police_active_flag() => word(0x0A5DC4)

// $0A5DC8: [16-bit] The Italian Job | Turin | Convoy | End Scene Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | London | Austin Mini Cooper S | Police Active Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | London | Aston Martin DB4 | Secret Scrapyard Race | Number of laps passed
function the_italian_job_turin_convoy_end_scene_flag() => word(0x0A5DC8)

// $0A5DCC: [16-bit] Free Ride | London | Aston Martin DB4 | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_aston_martin_db4_police_active_flag() => word(0x0A5DCC)

// $0A5DD0: [16-bit] The Italian Job | Turin | Convoy | Police Active Flag
//          0x00 = False
//          0x01 = True
//          
//          [16-bit] Free Ride | London | Fiat Dino | Police Active Flag
//          0x00 = False
//          0x01 = True
function the_italian_job_turin_convoy_police_active_flag() => word(0x0A5DD0)

// $0A5DD4: [16-bit] Free Ride | London | Lamborghini Miura P400S | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_lamborghini_miura_p400s_police_active_flag() => word(0x0A5DD4)

// $0A5E0E: [16-bit] Free Ride | London | Jaguar E-Type Series 2 Coupe | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_jaguar_etype_series_2_coupe_secret_side_mission_active_flag() => word(0x0A5E0E)

// $0A5E12: [16-bit] Free Ride | London | Daimler Consort | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_daimler_consort_secret_side_mission_active_flag() => word(0x0A5E12)

// $0A5E14: [32-bit] Free Ride | London | Jaguar E-Type Series 2 Coupe | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_jaguar_etype_series_2_coupe_hidden_time() => dword(0x0A5E14)

// $0A5E16: [16-bit] Free Ride | London | Austin Mini Cooper S | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_austin_mini_cooper_s_secret_side_mission_active_flag() => word(0x0A5E16)

// $0A5E18: [32-bit] Free Ride | London | Daimler Consort | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_daimler_consort_hidden_time() => dword(0x0A5E18)

// $0A5E1A: [16-bit] Free Ride | London | Aston Martin DB4 | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_aston_martin_db4_secret_side_mission_active_flag() => word(0x0A5E1A)

// $0A5E1C: [32-bit] Free Ride | London | Austin Mini Cooper S | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_austin_mini_cooper_s_hidden_time() => dword(0x0A5E1C)

// $0A5E1E: [16-bit] Free Ride | London | Fiat Dino | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_fiat_dino_secret_side_mission_active_flag() => word(0x0A5E1E)

// $0A5E20: [32-bit] Free Ride | London | Aston Martin DB4 | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_aston_martin_db4_hidden_time() => dword(0x0A5E20)

// $0A5E22: [16-bit] Free Ride | London | Lamborghini Miura P400S | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_lamborghini_miura_p400s_secret_side_mission_active_flag() => word(0x0A5E22)

// $0A5E24: [32-bit] Free Ride | London | Fiat Dino | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_fiat_dino_hidden_time() => dword(0x0A5E24)

// $0A5E28: [32-bit] Free Ride | London | Lamborghini Miura P400S | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_lamborghini_miura_p400s_hidden_time() => dword(0x0A5E28)

// $0A5ED6: [16-bit] Free Ride | Turin | Secret Destructor | Won Flag
//          Note: applicable for Austin A60 Cambridge
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_destructor_won_flag_5() => word(0x0A5ED6)

// $0A5ED8: [16-bit] Free Ride | Turin | Secret Track | Won Flag
//          Note: applicable for Austin A60 Cambridge.
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_track_won_flag_5() => word(0x0A5ED8)

// $0A5EDA: [16-bit] Free Ride | Turin | Secret Destructor | Total Cones
//          Note: applicable for Austin A60 Cambridge.
//          0x1f = Total
//          
//          [16-bit] Free Ride | Turin | Secret Track | Total Checkpoints
//          Note: applicable for Austin A60 Cambridge.
function free_ride_turin_secret_destructor_total_cones_9() => word(0x0A5EDA)

// $0A5EDC: [16-bit] Free Ride | Turin | Secret Destructor | Number of cones hit
//          Note: applicable for Austin A60 Cambridge.
//          
//          [16-bit] Free Ride | Turin | Secret Track | Checkpoints Completed
//          Note: applicable for Austin A60 Cambridge.
function free_ride_turin_secret_destructor_number_of_cones_hit_9() => word(0x0A5EDC)

// $0A6118: [16-bit] The Italian Job | London | Prison Pals | Police Active Flag
//          0x00 = False
//          0x01 = True
function the_italian_job_london_prison_pals_police_active_flag() => word(0x0A6118)

// $0A6720: [16-bit] Free Ride | London | Cop Car | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_cop_car_police_active_flag() => word(0x0A6720)

// $0A676E: [16-bit] Free Ride | London | Cop Car | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_cop_car_secret_side_mission_active_flag() => word(0x0A676E)

// $0A6774: [32-bit] Free Ride | London | Cop Car | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_cop_car_hidden_time() => dword(0x0A6774)

// $0A6A74: [32-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Austin A60 Cambridge
//          0x01 = False
//          0x02 = True
function free_ride_turin_secret_pizza_job_completed_flag_9() => dword(0x0A6A74)

// $0A701C: [16-bit] Free Ride | London | Austin A60 Cambridge | Police Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_austin_a60_cambridge_police_active_flag() => word(0x0A701C)

// $0A706A: [16-bit] Free Ride | London | Austin A60 Cambridge | Secret Side Mission Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_austin_a60_cambridge_secret_side_mission_active_flag() => word(0x0A706A)

// $0A7070: [32-bit] Free Ride | London | Austin A60 Cambridge | Hidden Time
//          * 4 (25 decimal = 1 second)
function free_ride_london_austin_a60_cambridge_hidden_time() => dword(0x0A7070)

// $0A91C0: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Shelby AC Cobra | Data
//          0x80118168 = Default
//          0x80126750 = Cam active
//          0x80126818 = Cutscene active
function free_ride_london_vehicle_data_2() => dword(0x0A91C0)

// $0A9F2C: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] 1964 Bedford VAL 14 Harrington Legionnaire | Data
//          0x801164f8 = Default
//          0x80124ae0 = Cam active
//          0x80124ba8 = Cutscene active
function free_ride_london_vehicle_data_5() => dword(0x0A9F2C)

// $0AB564: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Daimler Consort | Cinematic Cam Active Flag (Reversed)
//          0x00 = True
//          0x01 = False
//          
//          [32-bit] Jaguar E-Type Series 2 Coupe | Data
//          0x80116998 = Default
//          0x80124f80 = Cam active
//          0x80125048 = Cutscene active
function free_ride_london_vehicle_data_8() => dword(0x0AB564)

// $0AB568: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Daimler Consort | Data
//          0x80117f78 = Default
//          0x80126560 = Cam active
//          0x80126628 = Cutscene active
//          
//          [32-bit] Austin Mini Cooper S | Cinematic Cam Active Flag (Reversed)
//          0x00 = True
//          0x01 = False
function free_ride_london_vehicle_data_9() => dword(0x0AB568)

// $0AB56C: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Aston Martin DB4 | Cinematic Cam Active Flag (Reversed)
//          0x00 = True
//          0x01 = False
//          
//          [32-bit] Austin Mini Cooper S | Data
//          0x80116c10 = Default
//          0x801251f8 = Cam active
//          0x801252c0 = Cutscene active
//          
//          [32-bit] Jaguar E-Type Series 2 Coupe | Cinematic Letterboxing Status
//          0x00 = Inactive (default)
//          0xff = Active (increments from 0)
function free_ride_london_vehicle_data_10() => dword(0x0AB56C)

// $0AB570: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Daimler Consort | Cinematic Letterboxing Status
//          0x00 = Inactive (default)
//          0xff = Active (increments from 0)
//          
//          [32-bit] Aston Martin DB4 | Data
//          0x801163f0 = Default
//          0x801249d8 = Cam active
//          0x80124aa0 = Cutscene active
//          
//          [32-bit] Fiat Dino | Cinematic Cam Active Flag (Reversed)
//          0x00 = True
//          0x01 = False
function free_ride_london_vehicle_data_11() => dword(0x0AB570)

// $0AB574: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Austin Mini Cooper S | Cinematic Letterboxing Status
//          0x00 = Inactive (default)
//          0xff = Active (increments from 0)
//          
//          [32-bit] Fiat Dino | Data
//          0x80114f78 = Default
//          0x80123560 = Cam active
//          0x80123628 = Cutscene active
//          
//          [32-bit] Lamborghini Miura P400S | Cinematic Cam Active Flag (Reversed)
//          0x00 = True
//          0x01 = False
function free_ride_london_vehicle_data_12() => dword(0x0AB574)

// $0AB578: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Aston Martin DB4 | Cinematic Letterboxing Status
//          0x00 = Inactive (default)
//          0xff = Active (increments from 0)
//          
//          [32-bit] Lamborghini Miura P400S | Data
//          0x80118550 = Default
//          0x80126b38 = Cam active
//          0x80126c00 = Cutscene active
function free_ride_london_vehicle_data_13() => dword(0x0AB578)

// $0ABEC4: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Cop Car | Data
//          0x80116908 = Default
//          0x80124ef0 = Cam active
//          0x80124fb8 = Cutscene active
function free_ride_london_vehicle_data_17() => dword(0x0ABEC4)

// $0AC7C0: [32-bit] Free Ride | London | Vehicle Data
//          
//          [32-bit] Austin A60 Cambridge | Data
//          0x80116350 = Default
//          0x80124938 = Cam active
//          0x80124a00 = Cutscene active
function free_ride_london_vehicle_data_20() => dword(0x0AC7C0)

// $0B13E0: [32-bit] Challenge | Icy Road Destructor | Time
//          * 4 (25 decimal = 1 second)
function challenge_icy_road_destructor_time() => dword(0x0B13E0)

// $0B238C: [32-bit] Challenge | Icy Road Checkpoint Race | Time
//          * 4 (25 decimal = 1 second)
function challenge_icy_road_checkpoint_race_time() => dword(0x0B238C)

// $0BAD14: [32-bit] Challenge | Jumps Test 01 | Time
//          * 4 (25 decimal = 1 second)
function challenge_jumps_test_01_time() => dword(0x0BAD14)

// $0BBF2C: [32-bit] Challenge | Jumps Test 04 | Time
//          * 4 (25 decimal = 1 second)
function challenge_jumps_test_04_time() => dword(0x0BBF2C)

// $0BBFA4: [32-bit] Challenge | Jumps Test 02 | Time
//          * 4 (25 decimal = 1 second)
function challenge_jumps_test_02_time() => dword(0x0BBFA4)

// $0BBFFC: [32-bit] Challenge | Jumps Test 03 | Time
//          * 4 (25 decimal = 1 second)
function challenge_jumps_test_03_time() => dword(0x0BBFFC)

// $0BC02C: [32-bit] Challenge | Jumps Test 05 | Time
//          * 4 (25 decimal = 1 second)
function challenge_jumps_test_05_time() => dword(0x0BC02C)

// $0BCA58: [32-bit] Challenge | Jumps Test 03 | Number of cones hit
//          0x00-0x06 = Total
function challenge_jumps_test_03_number_of_cones_hit() => dword(0x0BCA58)

// $0C5688: [32-bit] Challenge | Bird's Eye Destructor | Time
//          * 4 (25 decimal = 1 second)
function challenge_birds_eye_destructor_time() => dword(0x0C5688)

// $0D8380: [32-bit] Destructor | London 5 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_5_time() => dword(0x0D8380)

// $0D930C: [32-bit] Destructor | London 1 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_1_time() => dword(0x0D930C)

// $0D9E18: [32-bit] Challenge | Brake Test | Time
//          * 4 (25 decimal = 1 second)
function challenge_brake_test_time() => dword(0x0D9E18)

// $0DAA2C: [32-bit] The Italian Job | Alps | Home Free | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_alps_home_free_time() => dword(0x0DAA2C)

// $0DAF80: [32-bit] Destructor | Turin 2 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_2_time() => dword(0x0DAF80)

// $0DB124: [32-bit] Destructor | London 4 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_4_time() => dword(0x0DB124)

// $0DB2F0: [32-bit] Destructor | Turin 4 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_4_time() => dword(0x0DB2F0)

// $0DBB58: [32-bit] Destructor | Turin 10 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_10_time() => dword(0x0DBB58)

// $0DBCF0: [32-bit] Destructor | Turin 5 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_5_time() => dword(0x0DBCF0)

// $0DBD38: [32-bit] Destructor | Turin 3 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_3_time() => dword(0x0DBD38)

// $0DC0E0: [32-bit] Destructor | London 2 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_2_time() => dword(0x0DC0E0)

// $0DC528: [32-bit] Destructor | Turin 8 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_8_time() => dword(0x0DC528)

// $0DC9F0: [32-bit] Destructor | Turin 6 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_6_time() => dword(0x0DC9F0)

// $0DDC50: [32-bit] Destructor | Turin 1 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_1_time() => dword(0x0DDC50)

// $0DE4B0: [32-bit] Destructor | Turin 9 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_9_time() => dword(0x0DE4B0)

// $0DFA48: [32-bit] Destructor | Turin 7 | Time
//          * 4 (25 decimal = 1 second)
function destructor_turin_7_time() => dword(0x0DFA48)

// $0E0D3C: [32-bit] Destructor | London 9 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_9_time() => dword(0x0E0D3C)

// $0E3D2C: [32-bit] Destructor | London 6 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_6_time() => dword(0x0E3D2C)

// $0E4C30: [32-bit] Free Ride | Turin | Secret Destructor | Cop Car | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_cop_car_time_1_2() => dword(0x0E4C30)

// $0E6B70: [32-bit] Free Ride | Turin | Secret Pizza Job | Cop Car | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_cop_car_time_2_2() => dword(0x0E6B70)

// $0E7B84: [32-bit] The Italian Job | Turin | Torino Tours | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_torino_tours_time() => dword(0x0E7B84)

// $0E8188: [32-bit] The Italian Job | Alps | Red, White & Blue | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_alps_red_white_blue_time() => dword(0x0E8188)

// $0E841D: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Cop Car
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_10() => byte(0x0E841D)

// $0E9864: [32-bit] Free Ride | Turin | Secret Destructor | Fiat Dino | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_fiat_dino_time_1_2() => dword(0x0E9864)

// $0E9F54: [32-bit] Free Ride | Turin | Secret Destructor | 1964 Bedford VAL 14 Harrington Legionnaire | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_1964_bedford_val_14_harrington_legionnaire_time_1_2() => dword(0x0E9F54)

// $0EA090: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Cop Car
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time() => dword(0x0EA090)

// $0EA934: [32-bit] Free Ride | Turin | Secret Destructor | Austin A60 Cambridge | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_austin_a60_cambridge_time_1_2() => dword(0x0EA934)

// $0EACE8: [32-bit] Free Ride | Turin | Secret Destructor | Aston Martin DB4 | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_aston_martin_db4_time_1_2() => dword(0x0EACE8)

// $0EB294: [32-bit] Free Ride | Turin | Secret Destructor | Jaguar E-Type | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_jaguar_etype_time_1_2() => dword(0x0EB294)

// $0EB528: [32-bit] Free Ride | Turin | Secret Destructor | Austin Mini Cooper S | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_austin_mini_cooper_s_time_1_2() => dword(0x0EB528)

// $0EB7A4: [32-bit] Free Ride | Turin | Secret Pizza Job | Fiat Dino | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_fiat_dino_time_2_2() => dword(0x0EB7A4)

// $0EBE94: [32-bit] Free Ride | Turin | Secret Pizza Job | 1964 Bedford VAL 14 Harrington Legionnaire | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_1964_bedford_val_14_harrington_legionnaire_time_2_2() => dword(0x0EBE94)

// $0EC84C: [32-bit] Free Ride | Turin | Secret Destructor | Daimler Consort | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_daimler_consort_time_1_2() => dword(0x0EC84C)

// $0EC874: [32-bit] Free Ride | Turin | Secret Pizza Job | Austin A60 Cambridge | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_austin_a60_cambridge_time_2_2() => dword(0x0EC874)

// $0EC9EC: [32-bit] Checkpoint | Turin 4 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_4_time() => dword(0x0EC9EC)

// $0ECB70: [32-bit] Free Ride | Turin | Secret Destructor | Shelby AC Cobra | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_shelby_ac_cobra_time_1_2() => dword(0x0ECB70)

// $0ECC28: [32-bit] Free Ride | Turin | Secret Pizza Job | Aston Martin DB4 | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_aston_martin_db4_time_2_2() => dword(0x0ECC28)

// $0ECE3C: [32-bit] Free Ride | Turin | Secret Destructor | Lamborghini Miura P400S | Time 1/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_destructor_lamborghini_miura_p400s_time_1_2() => dword(0x0ECE3C)

// $0ED051: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Fiat Dino
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_11() => byte(0x0ED051)

// $0ED1D4: [32-bit] Free Ride | Turin | Secret Pizza Job | Jaguar E-Type | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_jaguar_etype_time_2_2() => dword(0x0ED1D4)

// $0ED358: [32-bit] Checkpoint | Turin 1 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_1_time() => dword(0x0ED358)

// $0ED468: [32-bit] Free Ride | Turin | Secret Pizza Job | Austin Mini Cooper S | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_austin_mini_cooper_s_time_2_2() => dword(0x0ED468)

// $0ED741: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_12() => byte(0x0ED741)

// $0EE121: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Austin A60 Cambridge
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_13() => byte(0x0EE121)

// $0EE17C: [32-bit] Checkpoint | Turin 3 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_3_time() => dword(0x0EE17C)

// $0EE4D5: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Aston Martin DB4
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_14() => byte(0x0EE4D5)

// $0EE78C: [32-bit] Free Ride | Turin | Secret Pizza Job | Daimler Consort | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_daimler_consort_time_2_2() => dword(0x0EE78C)

// $0EEA81: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Jaguar E-Type Series 2 Coupe
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_15() => byte(0x0EEA81)

// $0EEAB0: [32-bit] Free Ride | Turin | Secret Pizza Job | Shelby AC Cobra | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_shelby_ac_cobra_time_2_2() => dword(0x0EEAB0)

// $0EECA8: [32-bit] Checkpoint | Turin 7 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_7_time() => dword(0x0EECA8)

// $0EECC4: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Fiat Dino
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_2() => dword(0x0EECC4)

// $0EED15: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Austin Mini Cooper S
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_16() => byte(0x0EED15)

// $0EED7C: [32-bit] Free Ride | Turin | Secret Pizza Job | Lamborghini Miura P400S | Time 2/2
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_pizza_job_lamborghini_miura_p400s_time_2_2() => dword(0x0EED7C)

// $0EF3B4: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for 1964 Bedford VAL 14 Harrington Legionnaire
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_3() => dword(0x0EF3B4)

// $0EF3F8: [32-bit] Destructor | London 3 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_3_time() => dword(0x0EF3F8)

// $0EF7C4: [32-bit] Checkpoint | Turin 10 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_10_time() => dword(0x0EF7C4)

// $0EF8CC: [32-bit] Checkpoint | Turin 8 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_8_time() => dword(0x0EF8CC)

// $0EFA18: [32-bit] The Italian Job | Turin | Traffic Tape Caper | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_traffic_tape_caper_time() => dword(0x0EFA18)

// $0EFAD4: [32-bit] Checkpoint | London 6 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_6_time() => dword(0x0EFAD4)

// $0EFD94: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Austin A60 Cambridge
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_4() => dword(0x0EFD94)

// $0EFEA0: [32-bit] Checkpoint | Turin 9 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_9_time() => dword(0x0EFEA0)

// $0EFF40: [32-bit] Checkpoint | London 1 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_1_time() => dword(0x0EFF40)

// $0F0039: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Daimler Consort
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_17() => byte(0x0F0039)

// $0F0148: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Aston Martin DB4
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_5() => dword(0x0F0148)

// $0F02A4: [32-bit] Free Ride | London | Daimler Consort | Secret Scrapyard Race | Failed Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_daimler_consort_secret_scrapyard_race_failed_flag() => dword(0x0F02A4)

// $0F035D: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Shelby AC Cobra
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_18() => byte(0x0F035D)

// $0F0610: [32-bit] Checkpoint | Turin 5 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_5_time() => dword(0x0F0610)

// $0F0629: [8-bit] Free Ride | Turin | Secret Pizza Job | Completed Flag
//          Note: applicable for Lamborghini Miura P400S
//          0x00 = False
//          0x01 = True
function free_ride_turin_secret_pizza_job_completed_flag_19() => byte(0x0F0629)

// $0F06F4: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Jaguar E-Type Series 2 Coupe
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_6() => dword(0x0F06F4)

// $0F0988: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Austin Mini Cooper S
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_7() => dword(0x0F0988)

// $0F0B6C: [32-bit] Checkpoint | London 4 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_4_time() => dword(0x0F0B6C)

// $0F0C08: [32-bit] The Italian Job | London | Keeping It Up | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_keeping_it_up_time() => dword(0x0F0C08)

// $0F0C48: [32-bit] Checkpoint | London 3 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_3_time() => dword(0x0F0C48)

// $0F1368: [32-bit] Checkpoint | Turin 6 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_6_time() => dword(0x0F1368)

// $0F13A8: [32-bit] Checkpoint | London 2 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_2_time() => dword(0x0F13A8)

// $0F177C: [32-bit] Destructor | London 8 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_8_time() => dword(0x0F177C)

// $0F18D0: [32-bit] The Italian Job | Turin | Interference | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_interference_time() => dword(0x0F18D0)

// $0F1B20: [32-bit] The Italian Job | London | Prison Pals | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_prison_pals_time() => dword(0x0F1B20)

// $0F1B9D: [8-bit] Free Ride | London | Lamborghini Miura P400S | Secret Stunt Active Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_lamborghini_miura_p400s_secret_stunt_active_flag() => byte(0x0F1B9D)

// $0F1CAC: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Daimler Consort
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_8() => dword(0x0F1CAC)

// $0F1FD0: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Shelby AC Cobra
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_9() => dword(0x0F1FD0)

// $0F2084: [32-bit] Checkpoint | London 7 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_7_time() => dword(0x0F2084)

// $0F2228: [32-bit] Checkpoint | London 5 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_5_time() => dword(0x0F2228)

// $0F229C: [32-bit] Free Ride | Turin | Secret Track | Time
//          Note: applicable for Lamborghini Miura P400S
//          * 4 (25 decimal = 1 second)
function free_ride_turin_secret_track_time_10() => dword(0x0F229C)

// $0F24A4: [32-bit] Checkpoint | London 10 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_10_time() => dword(0x0F24A4)

// $0F2514: [32-bit] Destructor | London 7 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_7_time() => dword(0x0F2514)

// $0F30C0: [32-bit] Checkpoint | London 8 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_8_time() => dword(0x0F30C0)

// $0F3660: [32-bit] Destructor | London 10 | Time
//          * 4 (25 decimal = 1 second)
function destructor_london_10_time() => dword(0x0F3660)

// $0F3C94: [32-bit] The Italian Job | London | Special Delivery | Time (Start)
//          * 4 (25 decimal = 1 second)
//          
//          Note, this stage has 2 routes:
//          • Route A: If the player reaches the first car, then the timer stops and continues at 0xf7254
//          • Route B: If the player did not reach the first car, then the timer stops and continues at 0xf68f4
function the_italian_job_london_special_delivery_time_start() => dword(0x0F3C94)

// $0F3EF4: [32-bit] Checkpoint | Turin 2 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_turin_2_time() => dword(0x0F3EF4)

// $0F4F88: [32-bit] The Italian Job | London | Meet Camp Freddie | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_meet_camp_freddie_time() => dword(0x0F4F88)

// $0F5B0C: [8-bit] Free Ride | London | Daimler Consort | Secret Scrapyard Race | Win Flag
//          0x00 = False
//          0x01 = True
function free_ride_london_daimler_consort_secret_scrapyard_race_win_flag() => byte(0x0F5B0C)

// $0F6044: [16-bit] The Italian Job | London | Big William's Ride | Bomb Detonation Meter
//          Notes:
//          • Increases as you crash until detonating.
//          • Mirrored from 0x119448, using this address since it handles the actual damage while the other one handles the meter display.
//          • This mirrored address cannot be manually changed unlike the other one
//          0x0e = Start
//          0x17 = Danger zone
//          0x21 = Detonation threshold
function the_italian_job_london_big_williams_ride_bomb_detonation_meter() => word(0x0F6044)

// $0F6184: [32-bit] The Italian Job | London | Big William's Ride | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_big_williams_ride_time() => dword(0x0F6184)

// $0F6188: [32-bit] The Italian Job | London | The Ambassador's Car | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_the_ambassadors_car_time() => dword(0x0F6188)

// $0F632C: [32-bit] The Italian Job | Turin | The Getaway | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_the_getaway_time() => dword(0x0F632C)

// $0F6368: [32-bit] Challenge | City Lap Survival | Time
//          * 4 (25 decimal = 1 second)
function challenge_city_lap_survival_time() => dword(0x0F6368)

// $0F674C: [32-bit] The Italian Job | Turin | Mafia Mania | Time (1/2)
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_mafia_mania_time() => dword(0x0F674C)

// $0F68F4: [32-bit] The Italian Job | London | Special Delivery | Time (Route B 1/2)
//          * 4 (25 decimal = 1 second)
//          
//          0xf3c94 <-- Previous | Continue --> 0xf7434
function the_italian_job_london_special_delivery_time_route_b_1_2() => dword(0x0F68F4)

// $0F6A74: [32-bit] Checkpoint | London 9 | Time
//          * 4 (25 decimal = 1 second)
function checkpoint_london_9_time() => dword(0x0F6A74)

// $0F70B8: [32-bit] The Italian Job | London | Peaches For Peaches | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_london_peaches_for_peaches_time() => dword(0x0F70B8)

// $0F7254: [32-bit] The Italian Job | London | Special Delivery | Time (Route A)
//          * 4 (25 decimal = 1 second)
//          Previous: 0xf3c94
function the_italian_job_london_special_delivery_time_route_a() => dword(0x0F7254)

// $0F7434: [32-bit] The Italian Job | London | Special Delivery | Time (Route B 2/2)
//          * 4 (25 decimal = 1 second)
//          Previous: 0xf3c94
function the_italian_job_london_special_delivery_time_route_b_2_2() => dword(0x0F7434)

// $0F778C: [32-bit] The Italian Job | Turin | Mafia Mania | Time (2/2)
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_mafia_mania_time_2() => dword(0x0F778C)

// $0F8208: [32-bit] The Italian Job | Turin | Convoy | Time
//          * 4 (25 decimal = 1 second)
function the_italian_job_turin_convoy_time() => dword(0x0F8208)

// $10128C: [32-bit] Checkpoint | London 2 | Vehicle Speedometer
function checkpoint_london_2_vehicle_speedometer() => dword(0x10128C)

// $115138: [32-bit] Free Ride | London | Fiat Dino | Y Position
function free_ride_london_fiat_dino_y_position() => dword(0x115138)

// $116510: [32-bit] Free Ride | London | Austin A60 Cambridge | Y Position
function free_ride_london_austin_a60_cambridge_y_position() => dword(0x116510)

// $1165B0: [32-bit] Free Ride | London | Aston Martin DB4 | Y Position
function free_ride_london_aston_martin_db4_y_position() => dword(0x1165B0)

// $1166B8: [32-bit] Free Ride | London | 1964 Bedford VAL 14 Harrington Legionnaire | Y Position
function free_ride_london_1964_bedford_val_14_harrington_legionnaire_y_position() => dword(0x1166B8)

// $116AC8: [32-bit] Free Ride | London | Cop Car | Y Position
function free_ride_london_cop_car_y_position() => dword(0x116AC8)

// $116B58: [32-bit] Free Ride | London | Jaguar E-Type Series 2 Coupe | Y Position
function free_ride_london_jaguar_etype_series_2_coupe_y_position() => dword(0x116B58)

// $116DD0: [32-bit] Free Ride | London | Austin Mini Cooper S | Y Position
function free_ride_london_austin_mini_cooper_s_y_position() => dword(0x116DD0)

// $118138: [32-bit] Free Ride | London | Daimler Consort | Y Position
function free_ride_london_daimler_consort_y_position() => dword(0x118138)

// $118328: [32-bit] Free Ride | London | Shelby AC Cobra | Y Position
function free_ride_london_shelby_ac_cobra_y_position() => dword(0x118328)

// $118710: [32-bit] Free Ride | London | Lamborghini Miura P400S | Y Position
function free_ride_london_lamborghini_miura_p400s_y_position() => dword(0x118710)

// $15999C: [32-bit] The Italian Job | Alps | Home Free | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_alps_home_free_vehicle_health() => dword(0x15999C)

// $17000C: [32-bit] Checkpoint | London 1 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function checkpoint_london_1_vehicle_health() => dword(0x17000C)

// $1715F4: [32-bit] Checkpoint | London 2 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function checkpoint_london_2_vehicle_health() => dword(0x1715F4)

// $1740D4: [32-bit] The Italian Job | Turin | Torino Tours | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_turin_torino_tours_vehicle_health() => dword(0x1740D4)

// $1755AC: [32-bit] Checkpoint | London 4 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function checkpoint_london_4_vehicle_health() => dword(0x1755AC)

// $17583C: [32-bit] Checkpoint | Turin 10 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function checkpoint_turin_10_vehicle_health() => dword(0x17583C)

// $176264: [32-bit] The Italian Job | London | Keeping It Up | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_london_keeping_it_up_vehicle_health() => dword(0x176264)

// $176E2C: [32-bit] Checkpoint | Turin 9 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function checkpoint_turin_9_vehicle_health() => dword(0x176E2C)

// $1779AC: [32-bit] Free Ride | London | Fiat Dino | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_fiat_dino_vehicle_health() => dword(0x1779AC)

// $178D84: [32-bit] Free Ride | London | Austin A60 Cambridge | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_austin_a60_cambridge_vehicle_health() => dword(0x178D84)

// $178E24: [32-bit] Free Ride | London | Aston Martin DB4 | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_aston_martin_db4_vehicle_health() => dword(0x178E24)

// $178F2C: [32-bit] Free Ride | London | 1964 Bedford VAL 14 Harrington Legionnaire | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_1964_bedford_val_14_harrington_legionnaire_vehicle_health() => dword(0x178F2C)

// $17933C: [32-bit] Free Ride | London | Cop Car | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_cop_car_vehicle_health() => dword(0x17933C)

// $1793CC: [32-bit] Free Ride | London | Jaguar E-Type Series 2 Coupe | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_jaguar_etype_series_2_coupe_vehicle_health() => dword(0x1793CC)

// $179644: [32-bit] Free Ride | London | Austin Mini Cooper S | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_austin_mini_cooper_s_vehicle_health() => dword(0x179644)

// $17A924: [32-bit] The Italian Job | Turin | The Getaway | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_turin_the_getaway_vehicle_health() => dword(0x17A924)

// $17A9AC: [32-bit] Free Ride | London | Daimler Consort | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_daimler_consort_vehicle_health() => dword(0x17A9AC)

// $17AB9C: [32-bit] Free Ride | London | Shelby AC Cobra | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_shelby_ac_cobra_vehicle_health() => dword(0x17AB9C)

// $17AF84: [32-bit] Free Ride | London | Lamborghini Miura P400S | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function free_ride_london_lamborghini_miura_p400s_vehicle_health() => dword(0x17AF84)

// $17C70C: [32-bit] The Italian Job | London | Skillful Bill | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_london_skillful_bill_vehicle_health() => dword(0x17C70C)

// $17D08C: [32-bit] The Italian Job | London | The Ambassador's Car | Vehicle Health
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_london_the_ambassadors_car_vehicle_health() => dword(0x17D08C)

// $17DC74: [32-bit] The Italian Job | London | Special Delivery | Vehicle Health
//          Note: Shared across all 3 vehicles within this stage.
//          0x1000 = Full HP
//          0x00 = Wrecked
function the_italian_job_london_special_delivery_vehicle_health() => dword(0x17DC74)

// $1E7C08: [8-bit] Checkpoint | London 5 | Cop Car Siren Active Status
//          0x00 = False
//          0x53 = True
function checkpoint_london_5_cop_car_siren_active_status() => byte(0x1E7C08)

achievement(
    title = "This Car Belongs to the Pakistani Ambassador!", points = 3, type="progression",
    description = "Complete The Ambassador's Car",
    id = 640663, badge = "731160", published = "10/2/2026 6:24:29 PM", modified = "10/2/2026 6:24:29 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x04 && prev(stages()) == 0x01 && stages() == 0x02
)

achievement(
    title = "In Style, Baby", points = 5,
    description = "Complete The Ambassador's Car without damaging the vehicle or alerting the police on Normal difficulty",
    id = 640664, badge = "731161", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x04 && difficulty_setting() == 0x00 &&
                  prev(stages()) == 0x01 && stages() == 0x02)
              ) &&
              disable_when((prev(the_italian_job_london_the_ambassadors_car_vehicle_health()) == 0x1000 &&
                  the_italian_job_london_the_ambassadors_car_vehicle_health() < 0x1000) ||
                  the_italian_job_london_the_ambassadors_car_police_active_flag() == 0x01
              ) && unless(vehicle_id_mode() != 0x04) &&
              (always_false() || (never((prev(the_italian_job_london_the_ambassadors_car_time()) == 0x00 &&
                    the_italian_job_london_the_ambassadors_car_time() > 0x00)
                )))
)

achievement(
    title = "Come on Freddie, Let's Get Going", points = 3, type="progression",
    description = "Complete Meet Camp Freddie",
    id = 640665, badge = "731162", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x02 && prev(stages()) == 0x02 && stages() == 0x03
)

achievement(
    title = "I've Got to Impress", points = 5,
    description = "Complete Meet Camp Freddie with at least 18 seconds remaining on the timer on Normal difficulty",
    id = 640666, badge = "731163", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x02 && difficulty_setting() == 0x00 &&
              the_italian_job_london_meet_camp_freddie_time() <= 0x497 && prev(stages()) == 0x02 &&
              trigger_when(stages() == 0x03)
)

achievement(
    title = "I Like 'Em Big, Big!", points = 5, type="progression",
    description = "Complete Peaches For Peaches",
    id = 640667, badge = "731164", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x03 && prev(stages()) == 0x03 && stages() == 0x04
)

achievement(
    title = "Traffic Compute Is Ain't My Thing", points = 10,
    description = "Complete Peaches For Peaches with at least 1 minute and 15 seconds remaining on the timer on Normal difficulty",
    id = 640668, badge = "731165", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x03 && difficulty_setting() == 0x00 &&
              the_italian_job_london_peaches_for_peaches_time() <= 0x465 && prev(stages()) == 0x03 &&
              trigger_when(stages() == 0x04)
)

achievement(
    title = "In 'n' Out", points = 5, type="progression",
    description = "Complete Special Delivery",
    id = 640669, badge = "731166", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x06 && prev(stages()) == 0x04 && stages() == 0x05
)

achievement(
    title = "Good Show, Albion", points = 10,
    description = "In Special Delivery, let the first timer run out, then reach the second car and return to the garage without damaging either vehicle or alerting the police on Normal difficulty",
    id = 640670, badge = "731167", published = "10/2/2026 6:24:30 PM", modified = "10/2/2026 6:24:30 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x06 && difficulty_setting() == 0x00 &&
                  the_italian_job_london_special_delivery_time_route_b_2_2() != 0x00 && prev(stages()) == 0x04 &&
                  stages() == 0x05)
              ) &&
              disable_when(prev(the_italian_job_london_special_delivery_vehicle_health()) == 0x1000 &&
                  the_italian_job_london_special_delivery_vehicle_health() < 0x1000
              ) && unless(vehicle_id_mode() != 0x06) &&
              unless(the_italian_job_london_special_delivery_time_route_a() != 0x00) &&
              disable_when(the_italian_job_london_special_delievery_police_active_flag() == 0x01) &&
              (always_false() || (never((prev(the_italian_job_london_special_delivery_time_start()) == 0x00 &&
                    the_italian_job_london_special_delivery_time_start() > 0x00)
                )))
)

achievement(
    title = "Cat and Mouse", points = 5, type="progression",
    description = "Complete Skillful Bill",
    id = 640671, badge = "731168", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x05 && prev(stages()) == 0x05 && stages() == 0x06
)

achievement(
    title = "You've Convinced Me", points = 10,
    description = "Complete Skillful Bill while keeping your vehicle's health above 75% on Normal difficulty",
    id = 640672, badge = "731169", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x05 && difficulty_setting() == 0x00 &&
              the_italian_job_london_skillful_bill_vehicle_health() >= 0xC00 && prev(stages()) == 0x05 &&
              trigger_when(stages() == 0x06)
)

achievement(
    title = "Jolly Good Show, Charlie", points = 5, type="progression",
    description = "Complete Prison Pals",
    id = 640673, badge = "731170", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x09 && prev(stages()) == 0x06 && stages() == 0x07
)

achievement(
    title = "Oi, What About Us?", points = 10,
    description = "Complete Prison Pals without alerting the police on Normal difficulty",
    id = 640674, badge = "731171", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x09 && difficulty_setting() == 0x00 &&
                  prev(stages()) == 0x06 && stages() == 0x07)
              ) && disable_when(the_italian_job_london_prison_pals_police_active_flag() == 0x01) &&
              unless(vehicle_id_mode() != 0x09) &&
              (always_false() || (never((prev(the_italian_job_london_prison_pals_time()) != 0x00 && the_italian_job_london_prison_pals_time() == 0x00))))
)

achievement(
    title = "Drive Like the Wind Blows", points = 5, type="progression",
    description = "Complete Keeping It Up",
    id = 640677, badge = "731172", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x07 && prev(stages()) == 0x07 && stages() == 0x08
)

achievement(
    title = "No Room for Amateurs on This One", points = 10,
    description = "Complete Keeping It Up without damaging your vehicle on Normal difficulty",
    id = 640678, badge = "731173", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x07 && difficulty_setting() == 0x00 &&
                  prev(stages()) == 0x07 && stages() == 0x08)
              ) &&
              disable_when(prev(the_italian_job_london_keeping_it_up_vehicle_health()) == 0x1000 &&
                  the_italian_job_london_keeping_it_up_vehicle_health() < 0x1000
              ) && unless(vehicle_id_mode() != 0x07) &&
              (always_false() || (never((prev(the_italian_job_london_keeping_it_up_vehicle_health()) == 0x00 &&
                    the_italian_job_london_keeping_it_up_vehicle_health() == 0x1000)
                )))
)

achievement(
    title = "A Lot of Things Can Go Wrong in a Job Like This", points = 5, type="progression",
    description = "Complete Big William's Ride",
    id = 640679, badge = "731174", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x08 && prev(stages()) == 0x08 && stages() == 0x09
)

achievement(
    title = "Oh Boy!", points = 5,
    description = "Complete Big William's Ride without letting the detonation meter reach the red zone on Normal difficulty",
    id = 640680, badge = "731175", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x08 && difficulty_setting() == 0x00 &&
              the_italian_job_london_big_williams_ride_bomb_detonation_meter() < 0x17 && prev(stages()) == 0x08 &&
              trigger_when(stages() == 0x09)
)

achievement(
    title = "I Need to Make Sure the Boys Know Their Way Around the Place", points = 10, type="progression",
    description = "Complete Torino Tours",
    id = 640681, badge = "731176", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x48 && prev(stages()) == 0x0A && stages() == 0x0B
)

achievement(
    title = "Mind the Paintwork", points = 10,
    description = "Complete Torino Tours while keeping your vehicle's health above 90% on Normal difficulty",
    id = 640682, badge = "731177", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x48 && difficulty_setting() == 0x00 &&
              the_italian_job_turin_torino_tours_vehicle_health() >= 0xE67 && prev(stages()) == 0x0A &&
              trigger_when(stages() == 0x0B)
)

achievement(
    title = "It's the Mafia", points = 5, type="progression",
    description = "Complete Mafia Mania",
    id = 640683, badge = "731178", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x47 && prev(stages()) == 0x0B && stages() == 0x0C
)

achievement(
    title = "No Time for Shopping Lorna", points = 10,
    description = "Complete Mafia Mania with at least 40 seconds remaining on the timer on Normal difficulty",
    id = 640684, badge = "731179", published = "10/2/2026 6:24:32 PM", modified = "10/2/2026 6:24:32 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x47 && difficulty_setting() == 0x00 &&
              the_italian_job_turin_mafia_mania_time_2() <= 0x5DC && prev(stages()) == 0x0B &&
              trigger_when(stages() == 0x0C)
)

achievement(
    title = "This One Is Tricky", points = 10, type="progression",
    description = "Complete Traffic Tape Caper",
    id = 640685, badge = "731180", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4A && prev(stages()) == 0x0C && stages() == 0x0D
)

achievement(
    title = "Only Way to Escape with the Gold", points = 10,
    description = "Complete Traffic Tape Caper without alerting the police on Normal difficulty",
    id = 640675, badge = "731171", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x4A && difficulty_setting() == 0x00 &&
                  prev(stages()) == 0x0C && stages() == 0x0D)
              ) &&
              disable_when(prev(the_italian_job_turin_traffic_tape_caper_police_active_flag()) == 0x00 &&
                  the_italian_job_turin_traffic_tape_caper_police_active_flag() == 0x01
              ) && unless(vehicle_id_mode() != 0x4A) &&
              (always_false() || (never((prev(the_italian_job_turin_traffic_tape_caper_time()) != 0x00 &&
                    the_italian_job_turin_traffic_tape_caper_time() == 0x00)
                )))
)

achievement(
    title = "Okay, Next One", points = 10, type="progression",
    description = "Complete Interference",
    id = 640686, badge = "731181", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x49 && prev(stages()) == 0x0D && stages() == 0x0E
)

achievement(
    title = "Okay, Next Run", points = 10,
    description = "Complete Interference with at least 3 minutes remaining on the timer on Normal difficulty",
    id = 640687, badge = "731182", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x49 && difficulty_setting() == 0x00 &&
              the_italian_job_turin_interference_time() <= 0x1773 && prev(stages()) == 0x0D &&
              trigger_when(stages() == 0x0E)
)

achievement(
    title = "Right Place at the Right Time", points = 5, type="progression",
    description = "Complete Convoy",
    id = 640688, badge = "731183", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4B && prev(stages()) == 0x0E && stages() == 0x0F
)

achievement(
    title = "In Plain Sight", points = 10,
    description = "Complete Convoy without alerting the police on Normal difficulty",
    id = 640676, badge = "731171", published = "10/2/2026 6:24:31 PM", modified = "10/2/2026 6:24:31 PM",
    trigger = trigger_when((game_mode() == 0x1A && vehicle_id_mode() == 0x4B && difficulty_setting() == 0x00 &&
                  prev(stages()) == 0x0E && stages() == 0x0F)
              ) && disable_when(the_italian_job_turin_convoy_police_active_flag() == 0x01) &&
              unless(vehicle_id_mode() != 0x4B) &&
              (always_false() || (never((prev(the_italian_job_turin_convoy_time()) != 0x00 && the_italian_job_turin_convoy_time() == 0x00))))
)

achievement(
    title = "Put Your Foot Down!", points = 10, type="progression",
    description = "Complete The Getaway",
    id = 640689, badge = "731184", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4C && prev(stages()) == 0x0F && stages() == 0x10
)

achievement(
    title = "Scratched, Not Scrap", points = 10,
    description = "Complete The Getaway while keeping your vehicle's health above 75% on Normal difficulty",
    id = 640690, badge = "731185", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4C && difficulty_setting() == 0x00 &&
              the_italian_job_turin_the_getaway_vehicle_health() >= 0xC00 && prev(stages()) == 0x0F &&
              trigger_when(stages() == 0x10)
)

achievement(
    title = "Gotta Keep 'Em Lined Up", points = 5, type="progression",
    description = "Complete Red, White & Blue",
    id = 640691, badge = "731186", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4D && prev(stages()) == 0x10 && stages() == 0x11
)

achievement(
    title = "Fasten Your Seatbelts, Lads!", points = 10,
    description = "Complete Red, White & Blue with at least 3 minutes and 13 seconds remaining on the timer on Normal difficulty",
    id = 640692, badge = "731187", published = "10/2/2026 6:24:33 PM", modified = "10/2/2026 6:24:33 PM",
    trigger = game_mode() == 0x1A && difficulty_setting() == 0x00 && vehicle_id_mode() == 0x4D &&
              the_italian_job_alps_red_white_blue_time() <= 0x497 &&
              trigger_when((prev(stages()) == 0x10 && stages() == 0x11))
)

achievement(
    title = "This Is Too Bloody Easy", points = 25, type="win_condition",
    description = "Complete Home Free",
    id = 640693, badge = "731188", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4F && prev(stages()) == 0x11 && stages() == 0x12
)

achievement(
    title = "We're Balancing on the Edge", points = 10,
    description = "Complete Home Free while keeping your vehicle's health above 75% on Normal difficulty",
    id = 640694, badge = "731189", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x1A && vehicle_id_mode() == 0x4F && difficulty_setting() == 0x00 &&
              the_italian_job_alps_home_free_vehicle_health() >= 0xC00 && prev(stages()) == 0x11 &&
              trigger_when(stages() == 0x12)
)

achievement(
    title = "Checkpoint London I", points = 5,
    description = "Checkpoint: Complete London 1 without damaging your vehicle on Normal difficulty",
    id = 640695, badge = "731190", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x14 && difficulty_setting() == 0x00 &&
              checkpoint_london_1_vehicle_health() >= 0x1000 && prev(stages()) == 0x00 && trigger_when(stages() == 0x01)
)

achievement(
    title = "Checkpoint London II", points = 5,
    description = "Checkpoint: Complete London 2 without letting your vehicle's speed drop below 60 mph on Normal difficulty",
    id = 640696, badge = "731191", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x16 && difficulty_setting() == 0x00 && prev(stages()) == 0x01 &&
              trigger_when(stages() == 0x02) &&
              disable_when(checkpoint_london_2_checkpoints_completed() < 0x09 &&
                  prev(checkpoint_london_2_vehicle_speedometer()) >= 0xC8 &&
                  checkpoint_london_2_vehicle_speedometer() < 0xC8
              ) &&
              disable_when(checkpoint_london_2_checkpoints_completed() == 0x01 && checkpoint_london_2_vehicle_speedometer() < 0xC8) &&
              (always_false() || (never((prev(checkpoint_london_2_vehicle_health()) != 0x1000 && checkpoint_london_2_vehicle_health() == 0x1000))))
)

achievement(
    title = "Checkpoint London III", points = 4,
    description = "Checkpoint: Complete London 3 under 1 minute 10 seconds on Normal difficulty",
    id = 640697, badge = "731192", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x18 && difficulty_setting() == 0x00 &&
              checkpoint_london_3_time() <= 0x6D6 && prev(stages()) == 0x02 && trigger_when(stages() == 0x03)
)

achievement(
    title = "Checkpoint London IV", points = 5,
    description = "Checkpoint: Complete London 4 without damaging your vehicle on Normal difficulty",
    id = 640698, badge = "731193", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x12 && difficulty_setting() == 0x00 &&
              checkpoint_london_4_vehicle_health() >= 0x1000 && prev(stages()) == 0x03 && trigger_when(stages() == 0x04)
)

achievement(
    title = "Checkpoint London V", points = 5,
    description = "Checkpoint: Complete London 5 in one uninterrupted attempt with the police siren active the entire time on Normal difficulty",
    id = 640699, badge = "731194", published = "10/2/2026 6:24:34 PM", modified = "10/2/2026 6:24:34 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x11 && difficulty_setting() == 0x00 &&
              checkpoint_london_5_total_checkpoints() == 0x1B && prev(stages()) == 0x04 &&
              trigger_when(stages() == 0x05) &&
              disable_when(checkpoint_london_5_checkpoints_completed() > 0x00 &&
                  checkpoint_london_5_checkpoints_completed() < 0x1B &&
                  checkpoint_london_5_cop_car_siren_active_status() == 0x00
              ) &&
              (always_false() || (never((prev(checkpoint_london_5_time()) != 0x00 && checkpoint_london_5_time() == 0x00))))
)

achievement(
    title = "Checkpoint London VI", points = 4,
    description = "Checkpoint: Complete London 6 under 1 minute 10 seconds on Normal difficulty",
    id = 640700, badge = "731195", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = vehicle_id_mode() == 0x1C && difficulty_setting() == 0x00 && game_mode() == 0x26 &&
              checkpoint_london_6_time() <= 0x6D6 && prev(stages()) == 0x05 && trigger_when(stages() == 0x06)
)

achievement(
    title = "Checkpoint London VII", points = 4,
    description = "Checkpoint: Complete London 7 under 1 minute 15 seconds on Normal difficulty",
    id = 640701, badge = "731196", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x10 && difficulty_setting() == 0x00 &&
              checkpoint_london_7_time() <= 0x753 && prev(stages()) == 0x06 && trigger_when(stages() == 0x07)
)

achievement(
    title = "Checkpoint London VIII", points = 5,
    description = "Checkpoint: Complete London 8 within 2 minutes 25 seconds on Normal difficulty",
    id = 640702, badge = "731197", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x1A && difficulty_setting() == 0x00 &&
              checkpoint_london_8_time() <= 0xE29 && prev(stages()) == 0x07 && trigger_when(stages() == 0x08)
)

achievement(
    title = "Checkpoint London IX", points = 5,
    description = "Checkpoint: Complete London 9 under 1 minute 45 seconds on Normal difficulty",
    id = 640703, badge = "731198", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x1B && difficulty_setting() == 0x00 &&
              checkpoint_london_9_time() <= 0xA41 && prev(stages()) == 0x08 && trigger_when(stages() == 0x09)
)

achievement(
    title = "Checkpoint London X", points = 5,
    description = "Checkpoint: Complete London 10 under 1 minute 35 seconds on Normal difficulty",
    id = 640704, badge = "731199", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x17 && difficulty_setting() == 0x00 &&
              checkpoint_london_10_time() <= 0x947 && prev(stages()) == 0x09 && trigger_when(stages() == 0x0A)
)

achievement(
    title = "Checkpoint Turin I", points = 4,
    description = "Checkpoint: Complete Turin 1 under 1 minute 20 seconds on Normal difficulty",
    id = 640705, badge = "731200", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x20 && difficulty_setting() == 0x00 &&
              checkpoint_turin_1_time() <= 0x7D0 && prev(stages()) == 0x0A && trigger_when(stages() == 0x0B)
)

achievement(
    title = "Checkpoint Turin II", points = 5,
    description = "Checkpoint: Complete Turin 2 under 1 minute 45 seconds on Normal difficulty",
    id = 640706, badge = "731201", published = "10/2/2026 6:24:35 PM", modified = "10/2/2026 6:24:35 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x21 && difficulty_setting() == 0x00 &&
              checkpoint_turin_2_time() <= 0xA41 && prev(stages()) == 0x0B && trigger_when(stages() == 0x0C)
)

achievement(
    title = "Checkpoint Turin III", points = 4,
    description = "Checkpoint: Complete Turin 3 under 1 minute 23 seconds on Normal difficulty",
    id = 640707, badge = "731202", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x22 && difficulty_setting() == 0x00 &&
              checkpoint_turin_3_time() <= 0x81B && prev(stages()) == 0x0C && trigger_when(stages() == 0x0D)
)

achievement(
    title = "Checkpoint Turin IV", points = 5,
    description = "Checkpoint: Complete Turin 4 under 1 minute 40 seconds on Normal difficulty",
    id = 640708, badge = "731203", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x23 && difficulty_setting() == 0x00 &&
              checkpoint_turin_4_time() <= 0x9C4 && prev(stages()) == 0x0D && trigger_when(stages() == 0x0E)
)

achievement(
    title = "Checkpoint Turin V", points = 4,
    description = "Checkpoint: Complete Turin 5 under 1 minute 22 seconds on Normal difficulty",
    id = 640709, badge = "731204", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x24 && difficulty_setting() == 0x00 &&
              checkpoint_turin_5_time() <= 0x802 && prev(stages()) == 0x0E && trigger_when(stages() == 0x0F)
)

achievement(
    title = "Checkpoint Turin VI", points = 5,
    description = "Checkpoint: Complete Turin 6 under 1 minute 58 seconds on Normal difficulty",
    id = 640710, badge = "731205", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x25 && difficulty_setting() == 0x00 &&
              checkpoint_turin_6_time() <= 0xB86 && prev(stages()) == 0x0F && trigger_when(stages() == 0x10)
)

achievement(
    title = "Checkpoint Turin VII", points = 5,
    description = "Checkpoint: Complete Turin 7 under 2 minute 13 seconds on Normal difficulty",
    id = 640711, badge = "731206", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x26 && difficulty_setting() == 0x00 &&
              checkpoint_turin_7_time() <= 0xCFD && prev(stages()) == 0x10 && trigger_when(stages() == 0x11)
)

achievement(
    title = "Checkpoint Turin VIII", points = 5,
    description = "Checkpoint: Complete Turin 8 under 1 minute 30 seconds on Normal difficulty",
    id = 640712, badge = "731207", published = "10/2/2026 6:24:36 PM", modified = "10/2/2026 6:24:36 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x27 && difficulty_setting() == 0x00 &&
              checkpoint_turin_8_time() <= 0x8CA && prev(stages()) == 0x11 && trigger_when(stages() == 0x12)
)

achievement(
    title = "Checkpoint Turin IX", points = 10,
    description = "Checkpoint: Complete Turin 9 without damaging your vehicle on Normal difficulty",
    id = 640713, badge = "731208", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x28 && difficulty_setting() == 0x00 &&
              checkpoint_turin_9_vehicle_health() == 0x1000 && prev(stages()) == 0x12 && trigger_when(stages() == 0x13)
)

achievement(
    title = "Checkpoint Turin X", points = 10,
    description = "Checkpoint: Complete Turin 10 while keeping your vehicle's health above 90% on Normal difficulty",
    id = 640714, badge = "731209", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x26 && vehicle_id_mode() == 0x29 && difficulty_setting() == 0x00 &&
              checkpoint_turin_10_vehicle_health() >= 0xE67 && prev(stages()) == 0x13 && trigger_when(stages() == 0x14)
)

achievement(
    title = "Destructor London I", points = 2,
    description = "Destructor: Complete London 1 hitting all the cones on Normal difficulty",
    id = 640715, badge = "731210", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x32 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_1_number_of_cones_hit() == 0x12) && prev(stages()) == 0x00 &&
              trigger_when(stages() == 0x01)
)

achievement(
    title = "Destructor London II", points = 2,
    description = "Destructor: Complete London 2 hitting all the cones on Normal difficulty",
    id = 640716, badge = "731211", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x31 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_2_number_of_cones_hit() == 0x14) && prev(stages()) == 0x01 &&
              trigger_when(stages() == 0x02)
)

achievement(
    title = "Destructor London III", points = 2,
    description = "Destructor: Complete London 3 hitting all the cones on Normal difficulty",
    id = 640717, badge = "731212", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2E && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_3_number_of_cones_hit() == 0x14) && prev(stages()) == 0x02 &&
              trigger_when(stages() == 0x03)
)

achievement(
    title = "Destructor London IV", points = 3,
    description = "Destructor: Complete London 4 hitting all the cones on Normal difficulty",
    id = 640718, badge = "731213", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2B && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_4_number_of_cones_hit() == 0x19) && prev(stages()) == 0x03 &&
              trigger_when(stages() == 0x04)
)

achievement(
    title = "Destructor London V", points = 4,
    description = "Destructor: Complete London 5 hitting all the cones on Normal difficulty",
    id = 640719, badge = "731214", published = "10/2/2026 6:24:37 PM", modified = "10/2/2026 6:24:37 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x0D && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_5_number_of_cones_hit() == 0x34) && prev(stages()) == 0x04 &&
              trigger_when(stages() == 0x05)
)

achievement(
    title = "Destructor London VI", points = 4,
    description = "Destructor: Complete London 6 hitting all the cones on Normal difficulty",
    id = 640720, badge = "731215", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2F && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_6_number_of_cones_hit() == 0x2E) && prev(stages()) == 0x05 &&
              trigger_when(stages() == 0x06)
)

achievement(
    title = "Destructor London VII", points = 5,
    description = "Destructor: Complete London 7 hitting all the cones on Normal difficulty",
    id = 640721, badge = "731216", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2C && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_7_number_of_cones_hit() == 0x45) && prev(stages()) == 0x06 &&
              trigger_when(stages() == 0x07)
)

achievement(
    title = "Destructor London VIII", points = 5,
    description = "Destructor: Complete London 8 hitting all the cones on Normal difficulty",
    id = 640722, badge = "731217", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2A && difficulty_setting() == 0x00 &&
              trigger_when(checkpoint_london_1_won_flag() == 0x3C) && prev(stages()) == 0x07 &&
              trigger_when(stages() == 0x08)
)

achievement(
    title = "Destructor London IX", points = 5,
    description = "Destructor: Complete London 9 hitting all the cones on Normal difficulty",
    id = 640723, badge = "731218", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x30 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_9_number_of_cones_hit() == 0x43) && prev(stages()) == 0x08 &&
              trigger_when(stages() == 0x09)
)

achievement(
    title = "Destructor London X", points = 5,
    description = "Destructor: Complete London 10 hitting all the cones on Normal difficulty",
    id = 640724, badge = "731219", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x2D && difficulty_setting() == 0x00 &&
              trigger_when(destructor_london_10_number_of_cones_hit() == 0x45) && prev(stages()) == 0x09 &&
              trigger_when(stages() == 0x0A)
)

achievement(
    title = "Destructor Turin I", points = 4,
    description = "Destructor: Complete Turin 1 hitting all the cones on Normal difficulty",
    id = 640725, badge = "731220", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x5D && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_1_number_of_cones_hit() == 0x2B) && prev(stages()) == 0x0A &&
              trigger_when(stages() == 0x0B)
)

achievement(
    title = "Destructor Turin II", points = 4,
    description = "Destructor: Complete Turin 2 hitting all the cones on Normal difficulty",
    id = 640726, badge = "731221", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x5B && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_2_number_of_cones_hit() == 0x38) && prev(stages()) == 0x0B &&
              trigger_when(stages() == 0x0C)
)

achievement(
    title = "Destructor Turin III", points = 5,
    description = "Destructor: Complete Turin 3 hitting all the cones on Normal difficulty",
    id = 640727, badge = "731222", published = "10/2/2026 6:24:38 PM", modified = "10/2/2026 6:24:38 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x5C && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_2_number_of_cones_hit() == 0x46) && prev(stages()) == 0x0C &&
              trigger_when(stages() == 0x0D)
)

achievement(
    title = "Destructor Turin IV", points = 5,
    description = "Destructor: Complete Turin 4 hitting all the cones on Normal difficulty",
    id = 640728, badge = "731223", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x5E && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_4_number_of_cones_hit() == 0x24) && prev(stages()) == 0x0D &&
              trigger_when(stages() == 0x0E)
)

achievement(
    title = "Destructor Turin V", points = 5,
    description = "Destructor: Complete Turin 5 hitting all the cones on Normal difficulty",
    id = 640729, badge = "731224", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x62 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_5_number_of_cones_hit() == 0x40) && prev(stages()) == 0x0E &&
              trigger_when(stages() == 0x0F)
)

achievement(
    title = "Destructor Turin VI", points = 5,
    description = "Destructor: Complete Turin 6 hitting all the cones on Normal difficulty",
    id = 640730, badge = "731225", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x5F && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_5_won_flag() == 0x37) && prev(stages()) == 0x0F &&
              trigger_when(stages() == 0x10)
)

achievement(
    title = "Destructor Turin VII", points = 5,
    description = "Destructor: Complete Turin 7 hitting all the cones on Normal difficulty",
    id = 640731, badge = "731226", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x63 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_5_number_of_cones_hit() == 0x36) && prev(stages()) == 0x10 &&
              trigger_when(stages() == 0x11)
)

achievement(
    title = "Destructor Turin VIII", points = 5,
    description = "Destructor: Complete Turin 8 hitting all the cones on Normal difficulty",
    id = 640732, badge = "731227", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x60 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_1_number_of_cones_hit() == 0x44) && prev(stages()) == 0x11 &&
              trigger_when(stages() == 0x12)
)

achievement(
    title = "Destructor Turin IX", points = 5,
    description = "Destructor: Complete Turin 9 hitting all the cones on Normal difficulty",
    id = 640733, badge = "731228", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x61 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_9_number_of_cones_hit() == 0x49) && prev(stages()) == 0x12 &&
              trigger_when(stages() == 0x13)
)

achievement(
    title = "Destructor Turin X", points = 10,
    description = "Destructor: Complete Turin 10 hitting all the cones on Normal difficulty",
    id = 640734, badge = "731229", published = "10/2/2026 6:24:39 PM", modified = "10/2/2026 6:24:39 PM",
    trigger = game_mode() == 0x2A && vehicle_id_mode() == 0x64 && difficulty_setting() == 0x00 &&
              trigger_when(destructor_turin_9_won_flag() == 0x62) && prev(stages()) == 0x13 &&
              trigger_when(stages() == 0x14)
)

achievement(
    title = "Challenge I", points = 3,
    description = "Challenge: Complete Jumps Test 01 on Normal difficulty",
    id = 640735, badge = "731230", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x0F && difficulty_setting() == 0x00 && prev(stages()) == 0x00 &&
              stages() == 0x01
)

achievement(
    title = "Challenge II", points = 3,
    description = "Challenge: Complete Brake Test on Normal difficulty",
    id = 640736, badge = "731231", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x15 && difficulty_setting() == 0x00 && prev(stages()) == 0x01 &&
              stages() == 0x02
)

achievement(
    title = "Challenge III", points = 4,
    description = "Challenge: Complete Jumps Test 02 on Normal difficulty",
    id = 640737, badge = "731232", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x0E && difficulty_setting() == 0x00 && prev(stages()) == 0x02 &&
              stages() == 0x03
)

achievement(
    title = "Challenge IV", points = 5,
    description = "Challenge: Complete Icy Road Checkpoint Race on Normal difficulty",
    id = 640738, badge = "731233", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x59 && difficulty_setting() == 0x00 && prev(stages()) == 0x03 &&
              stages() == 0x04
)

achievement(
    title = "Challenge V", points = 5,
    description = "Challenge: Complete Jumps Test 03 hitting all the cones on Normal difficulty",
    id = 640739, badge = "731234", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x0B && difficulty_setting() == 0x00 &&
              trigger_when(challenge_jumps_test_03_number_of_cones_hit() == 0x06) && prev(stages()) == 0x04 &&
              trigger_when(stages() == 0x05)
)

achievement(
    title = "Challenge VI", points = 5,
    description = "Challenge: Complete City Lap Survival on Normal difficulty",
    id = 640740, badge = "731235", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x13 && difficulty_setting() == 0x00 && prev(stages()) == 0x05 &&
              stages() == 0x06
)

achievement(
    title = "Challenge VII", points = 5,
    description = "Challenge: Complete Jumps Test 04 on Normal difficulty",
    id = 640741, badge = "731236", published = "10/2/2026 6:24:40 PM", modified = "10/2/2026 6:24:40 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x1F && difficulty_setting() == 0x00 && prev(stages()) == 0x06 &&
              stages() == 0x07
)

achievement(
    title = "Challenge VIII", points = 10,
    description = "Challenge: Complete Icy Road Destructor hitting all the cones on Normal difficulty",
    id = 640742, badge = "731237", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x5A && difficulty_setting() == 0x00 &&
              trigger_when(challenge_icy_road_destructor_number_of_cones_hit() == 0x25) && prev(stages()) == 0x07 &&
              trigger_when(stages() == 0x08)
)

achievement(
    title = "Challenge IX", points = 5,
    description = "Challenge: Complete Jumps Test 05 on Normal difficulty",
    id = 640743, badge = "731238", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x1E && difficulty_setting() == 0x00 && prev(stages()) == 0x08 &&
              stages() == 0x09
)

achievement(
    title = "Challenge X", points = 10,
    description = "Challenge: Complete Bird's Eye Destructor on Normal difficulty",
    id = 640744, badge = "731239", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = game_mode() == 0x28 && vehicle_id_mode() == 0x50 && difficulty_setting() == 0x00 && prev(stages()) == 0x09 &&
              stages() == 0x0A
)

achievement(
    title = "Scrapped", points = 10,
    description = "In London Free Ride, win the secret Scrapyard race using the starting car, the Daimler Consort, on Normal difficulty",
    id = 640745, badge = "731240", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = once(game_mode() == 0x20 && vehicle_id_mode() == 0x38 && difficulty_setting() == 0x00 &&
                  prev(free_ride_london_daimler_consort_secret_scrapyard_race_total_laps()) == 0x00 &&
                  free_ride_london_daimler_consort_secret_scrapyard_race_total_laps() == 0x05
              ) &&
              trigger_when((free_ride_london_jaguar_etype_series_2_coupe_police_active_flag() == 0x05 &&
                  free_ride_london_vehicle_data_11() == 0xFF &&
                  prev(free_ride_london_daimler_consort_secret_scrapyard_race_win_flag()) == 0x00 &&
                  free_ride_london_daimler_consort_secret_scrapyard_race_win_flag() == 0x01)
              ) && unless(vehicle_id_mode() != 0x38) &&
              (always_false() || (never((free_ride_london_daimler_consort_secret_scrapyard_race_total_laps() == 0x05 &&
                    prev(free_ride_london_daimler_consort_secret_scrapyard_race_failed_flag()) == 0x00 &&
                    free_ride_london_daimler_consort_secret_scrapyard_race_failed_flag() == 0x01)
                ) && never((vehicle_id_mode() == 0x38 && free_ride_london_daimler_consort_hidden_time() == 0x00))))
)

achievement(
    title = "Caught in the Act", points = 5,
    description = "In London Free Ride, find the secret meeting and lose your tail while keeping your vehicle at 100% health the entire time on Normal difficulty",
    id = 640746, badge = "731241", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = never((prev(vehicle_id_mode()) == 0x38 && free_ride_london_daimler_consort_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x33 && free_ride_london_aston_martin_db4_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x34 && free_ride_london_austin_mini_cooper_s_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x37 && free_ride_london_austin_a60_cambridge_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x39 && free_ride_london_cop_car_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x36 && free_ride_london_jaguar_etype_series_2_coupe_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x35 &&
                  free_ride_london_1964_bedford_val_14_harrington_legionnaire_hidden_time() == 0x00)
              ) && never((prev(vehicle_id_mode()) == 0x3A && free_ride_london_shelby_ac_cobra_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x54 && free_ride_london_fiat_dino_hidden_time() == 0x00)) &&
              never((prev(vehicle_id_mode()) == 0x3B && free_ride_london_lamborghini_miura_p400s_hidden_time() == 0x00)) &&
              ((once(game_mode() == 0x20 && vehicle_id_mode() == 0x38 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_9()) == 0x80126560 && free_ride_london_vehicle_data_9() == 0x80126628
                ) &&
                trigger_when((once(free_ride_london_daimler_consort_y_position() > 0x1194 &&
                    prev(free_ride_london_daimler_consort_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_daimler_consort_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_daimler_consort_police_active_flag()) == 0x01 &&
                    free_ride_london_daimler_consort_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x38) &&
                unless(free_ride_london_daimler_consort_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x33 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_11()) == 0x801249D8 &&
                    free_ride_london_vehicle_data_11() == 0x80124AA0
                ) &&
                trigger_when((once(free_ride_london_aston_martin_db4_y_position() > 0x1194 &&
                    prev(free_ride_london_aston_martin_db4_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_aston_martin_db4_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_aston_martin_db4_police_active_flag()) == 0x01 &&
                    free_ride_london_aston_martin_db4_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x33) &&
                unless(free_ride_london_aston_martin_db4_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x34 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_10()) == 0x801251F8 &&
                    free_ride_london_vehicle_data_10() == 0x801252C0
                ) &&
                trigger_when((once(free_ride_london_austin_mini_cooper_s_y_position() > 0x1194 &&
                    prev(free_ride_london_austin_mini_cooper_s_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_austin_mini_cooper_s_secret_side_mission_active_flag() == 0x00) &&
                    prev(the_italian_job_turin_convoy_end_scene_flag()) == 0x01 &&
                    the_italian_job_turin_convoy_end_scene_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x34) &&
                unless(free_ride_london_austin_mini_cooper_s_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x37 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_20()) == 0x80124938 &&
                    free_ride_london_vehicle_data_20() == 0x80124A00
                ) &&
                trigger_when((once(free_ride_london_austin_a60_cambridge_y_position() > 0x1194 &&
                    prev(free_ride_london_austin_a60_cambridge_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_austin_a60_cambridge_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_austin_a60_cambridge_police_active_flag()) == 0x01 &&
                    free_ride_london_austin_a60_cambridge_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x37) &&
                unless(free_ride_london_austin_a60_cambridge_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x39 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_17()) == 0x80124EF0 &&
                    free_ride_london_vehicle_data_17() == 0x80124FB8
                ) &&
                trigger_when((once(free_ride_london_cop_car_y_position() > 0x1194 &&
                    prev(free_ride_london_cop_car_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_cop_car_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_cop_car_police_active_flag()) == 0x01 &&
                    free_ride_london_cop_car_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x39) && unless(free_ride_london_cop_car_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x36 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_8()) == 0x80124F80 && free_ride_london_vehicle_data_8() == 0x80125048
                ) &&
                trigger_when((once(free_ride_london_jaguar_etype_series_2_coupe_y_position() > 0x1194 &&
                    prev(free_ride_london_jaguar_etype_series_2_coupe_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_jaguar_etype_series_2_coupe_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_jaguar_etype_series_2_coupe_police_active_flag()) == 0x01 &&
                    free_ride_london_jaguar_etype_series_2_coupe_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x36) &&
                unless(free_ride_london_jaguar_etype_series_2_coupe_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x35 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_5()) == 0x80124AE0 && free_ride_london_vehicle_data_5() == 0x80124BA8
                ) &&
                trigger_when((once(free_ride_london_1964_bedford_val_14_harrington_legionnaire_y_position() > 0x1194 &&
                    prev(free_ride_london_1964_bedford_val_14_harrington_legionnaire_secret_side_mission_active_flag()) ==
                    0x01 &&
                    free_ride_london_1964_bedford_val_14_harrington_legionnaire_secret_side_mission_active_flag() == 0x00)
                    && prev(free_ride_london_1964_bedford_val_14_harrington_legionnaire_police_active_flag()) == 0x01 &&
                    free_ride_london_1964_bedford_val_14_harrington_legionnaire_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x35) &&
                unless(free_ride_london_1964_bedford_val_14_harrington_legionnaire_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x3A && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_2()) == 0x80126750 && free_ride_london_vehicle_data_2() == 0x80126818
                ) &&
                trigger_when((once(free_ride_london_shelby_ac_cobra_y_position() > 0x1194 &&
                    prev(free_ride_london_shelby_ac_cobra_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_shelby_ac_cobra_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_shelby_ac_cobra_police_active_flag()) == 0x01 &&
                    free_ride_london_shelby_ac_cobra_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x3A) &&
                unless(free_ride_london_shelby_ac_cobra_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x54 && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_12()) == 0x80123560 &&
                    free_ride_london_vehicle_data_12() == 0x80123628
                ) &&
                trigger_when((once(free_ride_london_fiat_dino_y_position() > 0x1194 &&
                    prev(free_ride_london_fiat_dino_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_fiat_dino_secret_side_mission_active_flag() == 0x00) &&
                    prev(the_italian_job_turin_convoy_police_active_flag()) == 0x01 &&
                    the_italian_job_turin_convoy_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x54) && unless(free_ride_london_fiat_dino_vehicle_health() < 0x1000)) ||
               (once(game_mode() == 0x20 && vehicle_id_mode() == 0x3B && difficulty_setting() == 0x00 &&
                    prev(free_ride_london_vehicle_data_13()) == 0x80126B38 &&
                    free_ride_london_vehicle_data_13() == 0x80126C00
                ) &&
                trigger_when((once(free_ride_london_lamborghini_miura_p400s_y_position() > 0x1194 &&
                    prev(free_ride_london_lamborghini_miura_p400s_secret_side_mission_active_flag()) == 0x01 &&
                    free_ride_london_lamborghini_miura_p400s_secret_side_mission_active_flag() == 0x00) &&
                    prev(free_ride_london_lamborghini_miura_p400s_police_active_flag()) == 0x01 &&
                    free_ride_london_lamborghini_miura_p400s_police_active_flag() == 0x00)
                ) && unless(vehicle_id_mode() != 0x3B) &&
                unless(free_ride_london_lamborghini_miura_p400s_vehicle_health() < 0x1000)))
)

achievement(
    title = "What the Hell Was That?", points = 3,
    description = "In London Free Ride, find and encounter the driver in the red car on top of the building using the Lamborghini Miura P400S",
    id = 640747, badge = "731242", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = once(game_mode() == 0x20 && vehicle_id_mode() == 0x3B &&
                  prev(free_ride_london_lamborghini_miura_p400s_secret_stunt_active_flag()) == 0x00 &&
                  free_ride_london_lamborghini_miura_p400s_secret_stunt_active_flag() == 0x01
              ) &&
              trigger_when((once(free_ride_london_lamborghini_miura_p400s_y_position() < 0x190 &&
                  prev(free_ride_london_vehicle_data_13()) == 0x80118550 &&
                  free_ride_london_vehicle_data_13() == 0x80126C00) &&
                  free_ride_london_lamborghini_miura_p400s_y_position() < 0x190 &&
                  prev(free_ride_london_lamborghini_miura_p400s_secret_side_mission_active_flag()) == 0x01 &&
                  free_ride_london_lamborghini_miura_p400s_secret_side_mission_active_flag() == 0x00)
              ) && unless(vehicle_id_mode() != 0x3B) &&
              (always_false() || (never(vehicle_id_mode() != 0x3B) &&
                never((vehicle_id_mode() == 0x3B && free_ride_london_lamborghini_miura_p400s_hidden_time() == 0x00))))
)

achievement(
    title = "Trust the Camera", points = 10,
    description = "In Turin Free Ride, win the secret race track under 1 minute using the Lamborghini Miura P400S on Normal difficulty (drive away to reset)",
    id = 640748, badge = "731243", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = once(game_mode() == 0x20 && vehicle_id_mode() == 0x3F && free_ride_turin_secret_track_active_flag() == 0x01) &&
              trigger_when((free_ride_turin_secret_destructor_total_cones_8() == 0x03 &&
                  free_ride_turin_secret_destructor_number_of_cones_hit_8() >= 0x02 &&
                  free_ride_turin_secret_track_time_10() <= 0x5DC &&
                  prev(free_ride_turin_secret_destructor_number_of_cones_hit_7()) == 0x00 &&
                  free_ride_turin_secret_destructor_number_of_cones_hit_7() == 0x01)
              ) && unless((free_ride_turin_secret_track_time_10() > 0x5DC || vehicle_id_mode() != 0x3F)) &&
              (always_false() || (never((prev(free_ride_turin_secret_destructor_number_of_cones_hit_7()) == 0x01 &&
                    free_ride_turin_secret_destructor_number_of_cones_hit_7() == 0x00)
                ) && never(vehicle_id_mode() != 0x3F) &&
                never((vehicle_id_mode() == 0x3F && prev(free_ride_turin_secret_track_time_10()) != 0x00 &&
                    free_ride_turin_secret_track_time_10() == 0x00)
                )))
)

achievement(
    title = "Little Italy", points = 10,
    description = "In Turin Free Ride, complete the secret Destructor challenge and Pizza Parlor deliveries, then return home to claim your reward on Normal difficulty",
    id = 640749, badge = "731244", published = "10/2/2026 6:24:41 PM", modified = "10/2/2026 6:24:41 PM",
    trigger = game_mode() == 0x20 && difficulty_setting() == 0x00 && vehicle_id_mode() != 0x00 &&
              ((vehicle_id_mode() == 0x46 && free_ride_turin_secret_destructor_total_cones_4() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_4() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_17()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_17() == 0x01)) ||
               (vehicle_id_mode() == 0x42 && free_ride_turin_secret_destructor_total_cones_6() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_6() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_14()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_14() == 0x01)) ||
               (vehicle_id_mode() == 0x3D && free_ride_turin_secret_destructor_total_cones_5() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_5() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_16()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_16() == 0x01)) ||
               (vehicle_id_mode() == 0x43 && free_ride_turin_secret_destructor_total_cones_9() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_9() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_13()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_13() == 0x01)) ||
               (vehicle_id_mode() == 0x41 && free_ride_turin_secret_destructor_total_cones_3() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_3() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_10()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_10() == 0x01)) ||
               (vehicle_id_mode() == 0x44 && free_ride_turin_secret_destructor_total_cones_4() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_4() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_15()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_15() == 0x01)) ||
               (vehicle_id_mode() == 0x45 && free_ride_turin_secret_destructor_total_cones_2() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_2() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_12()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_12() == 0x01)) ||
               (vehicle_id_mode() == 0x40 && free_ride_turin_secret_destructor_total_cones() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_18()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_18() == 0x01)) ||
               (vehicle_id_mode() == 0x56 && free_ride_turin_secret_destructor_total_cones_7() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_7() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_11()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_11() == 0x01)) ||
               (vehicle_id_mode() == 0x3F && free_ride_turin_secret_destructor_total_cones_8() == 0x1F &&
                free_ride_turin_secret_destructor_number_of_cones_hit_8() == 0x1F &&
                prev(free_ride_turin_secret_pizza_job_completed_flag_19()) == 0x00 &&
                trigger_when(free_ride_turin_secret_pizza_job_completed_flag_19() == 0x01)))
)

leaderboard(
    id = 174012, title = "The Italian Job: The Ambassador's Car",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x04 && prev(stages()) == 0x01 && stages() == 0x02,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_the_ambassadors_car_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174013, title = "The Italian Job: Meet Camp Freddie",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x02 && prev(stages()) == 0x02 && stages() == 0x03,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_meet_camp_freddie_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174014, title = "The Italian Job: Peaches for Peaches",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x03 && prev(stages()) == 0x03 && stages() == 0x04,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_peaches_for_peaches_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174015, title = "The Italian Job: Special Delivery",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x06 && prev(stages()) == 0x04 && stages() == 0x05,
    cancel = always_false(),
    submit = always_true(),
    value  = measured((the_italian_job_london_special_delivery_time_start() * 4 +
                 the_italian_job_london_special_delivery_time_route_a() * 4 +
                 the_italian_job_london_special_delivery_time_route_b_1_2() * 4 +
                 the_italian_job_london_special_delivery_time_route_b_2_2() * 4)
             ),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174016, title = "The Italian Job: Skillful Bill",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x05 && prev(stages()) == 0x05 && stages() == 0x06,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_skillful_bill_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174017, title = "The Italian Job: Prison Pals",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x09 && prev(stages()) == 0x06 && stages() == 0x07,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_prison_pals_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174018, title = "The Italian Job: Keeping It Up",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x07 && prev(stages()) == 0x07 && stages() == 0x08,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_keeping_it_up_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174019, title = "The Italian Job: Big William's Ride",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x08 && prev(stages()) == 0x08 && stages() == 0x09,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_london_big_williams_ride_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174020, title = "The Italian Job: Torino Tours",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x48 && prev(stages()) == 0x0A && stages() == 0x0B,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_turin_torino_tours_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174021, title = "The Italian Job: Mafia Mania",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x47 && prev(stages()) == 0x0B && stages() == 0x0C,
    cancel = always_false(),
    submit = always_true(),
    value  = measured((the_italian_job_turin_mafia_mania_time() * 4 + the_italian_job_turin_mafia_mania_time_2() * 4)),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174022, title = "The Italian Job: Traffic Tape Caper",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x4A && prev(stages()) == 0x0C && stages() == 0x0D,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_turin_traffic_tape_caper_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174023, title = "The Italian Job: Interference",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x49 && prev(stages()) == 0x0D && stages() == 0x0E,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_turin_interference_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174024, title = "The Italian Job: Convoy",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x4B && prev(stages()) == 0x0E && stages() == 0x0F,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_turin_convoy_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174025, title = "The Italian Job: The Getaway",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x4C && prev(stages()) == 0x0F && stages() == 0x10,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_turin_the_getaway_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174026, title = "The Italian Job: Red, White & Blue",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x4D && prev(stages()) == 0x10 && stages() == 0x11,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_alps_red_white_blue_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174027, title = "The Italian Job: Home Free",
    description = "Fastest time recorded",
    start  = game_mode() == 0x1A && vehicle_id_mode() == 0x4F && prev(stages()) == 0x11 && stages() == 0x12,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(the_italian_job_alps_home_free_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174028, title = "Checkpoint: London 1",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x14 && prev(stages()) == 0x00 && stages() == 0x01,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_london_1_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174029, title = "Checkpoint: London 2",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x16 && prev(stages()) == 0x01 && stages() == 0x02,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_london_2_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174030, title = "Checkpoint: London 3",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x18 && prev(checkpoint_london_3_time()) == 0x00 &&
             checkpoint_london_3_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x18 && prev(stages()) == 0x02 && stages() == 0x03,
    value  = measured(checkpoint_london_3_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174031, title = "Checkpoint: London 4",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x12 && prev(stages()) == 0x03 && stages() == 0x04,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_london_4_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174032, title = "Checkpoint: London 5",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x11 && prev(stages()) == 0x04 && stages() == 0x05,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_london_5_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174033, title = "Checkpoint: London 6",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x1C && prev(checkpoint_london_6_time()) == 0x00 &&
             checkpoint_london_6_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x1C && prev(stages()) == 0x05 && stages() == 0x06,
    value  = measured(checkpoint_london_6_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174034, title = "Checkpoint: London 7",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x10 && prev(checkpoint_london_7_time()) == 0x00 &&
             checkpoint_london_7_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x10 && prev(stages()) == 0x06 && stages() == 0x07,
    value  = measured(checkpoint_london_7_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174035, title = "Checkpoint: London 8",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x1A && prev(checkpoint_london_8_time()) == 0x00 &&
             checkpoint_london_8_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x1A && prev(stages()) == 0x07 && stages() == 0x08,
    value  = measured(checkpoint_london_8_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174036, title = "Checkpoint: London 9",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x1B && prev(checkpoint_london_9_time()) == 0x00 &&
             checkpoint_london_9_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x1B && prev(stages()) == 0x08 && stages() == 0x09,
    value  = measured(checkpoint_london_9_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174037, title = "Checkpoint: London 10",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x17 && prev(checkpoint_london_10_time()) == 0x00 &&
             checkpoint_london_10_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x17 && prev(stages()) == 0x09 && stages() == 0x0A,
    value  = measured(checkpoint_london_10_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174038, title = "Checkpoint: Turin 1",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x20 && prev(checkpoint_turin_1_time()) == 0x00 &&
             checkpoint_turin_1_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x20 && prev(stages()) == 0x0A && stages() == 0x0B,
    value  = measured(checkpoint_turin_1_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174039, title = "Checkpoint: Turin 2",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x21 && prev(checkpoint_turin_2_time()) == 0x00 &&
             checkpoint_turin_2_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x21 && prev(stages()) == 0x0B && stages() == 0x0C,
    value  = measured(checkpoint_turin_2_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174040, title = "Checkpoint: Turin 3",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x22 && prev(checkpoint_turin_3_time()) == 0x00 &&
             checkpoint_turin_3_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x22 && prev(stages()) == 0x0C && stages() == 0x0D,
    value  = measured(checkpoint_turin_3_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174041, title = "Checkpoint: Turin 4",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x23 && prev(checkpoint_turin_4_time()) == 0x00 &&
             checkpoint_turin_4_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x23 && prev(stages()) == 0x0D && stages() == 0x0E,
    value  = measured(checkpoint_turin_4_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174042, title = "Checkpoint: Turin 5",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x24 && prev(checkpoint_turin_5_time()) == 0x00 &&
             checkpoint_turin_5_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x24 && prev(stages()) == 0x0E && stages() == 0x0F,
    value  = measured(checkpoint_turin_5_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174043, title = "Checkpoint: Turin 6",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x25 && prev(checkpoint_turin_6_time()) == 0x00 &&
             checkpoint_turin_6_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x25 && prev(stages()) == 0x0F && stages() == 0x10,
    value  = measured(checkpoint_turin_6_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174044, title = "Checkpoint: Turin 7",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x26 && prev(checkpoint_turin_7_time()) == 0x00 &&
             checkpoint_turin_7_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x26 && prev(stages()) == 0x10 && stages() == 0x11,
    value  = measured(checkpoint_turin_7_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174045, title = "Checkpoint: Turin 8",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x27 && prev(checkpoint_turin_8_time()) == 0x00 &&
             checkpoint_turin_8_time() > 0x00,
    cancel = game_state() == 0x00,
    submit = game_mode() == 0x26 && vehicle_id_mode() == 0x27 && prev(stages()) == 0x11 && stages() == 0x12,
    value  = measured(checkpoint_turin_8_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174046, title = "Checkpoint: Turin 9",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x28 && prev(stages()) == 0x12 && stages() == 0x13,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_turin_9_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174047, title = "Checkpoint: Turin 10",
    description = "Fastest time recorded",
    start  = game_mode() == 0x26 && vehicle_id_mode() == 0x29 && prev(stages()) == 0x13 && stages() == 0x14,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(checkpoint_turin_10_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174048, title = "Destructor: London 1",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x32 && prev(stages()) == 0x00 && stages() == 0x01,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_1_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174049, title = "Destructor: London 2",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x31 && prev(stages()) == 0x01 && stages() == 0x02,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_2_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174050, title = "Destructor: London 3",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2E && prev(stages()) == 0x02 && stages() == 0x03,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_3_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174051, title = "Destructor: London 4",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2B && prev(stages()) == 0x03 && stages() == 0x04,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_4_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174052, title = "Destructor: London 5",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x0D && prev(stages()) == 0x04 && stages() == 0x05,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_5_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174053, title = "Destructor: London 6",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2F && prev(stages()) == 0x05 && stages() == 0x06,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_6_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174054, title = "Destructor: London 7",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2C && prev(stages()) == 0x06 && stages() == 0x07,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_7_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174055, title = "Destructor: London 8",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2A && prev(stages()) == 0x07 && stages() == 0x08,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_8_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174056, title = "Destructor: London 9",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x30 && prev(stages()) == 0x08 && stages() == 0x09,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_9_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174057, title = "Destructor: London 10",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x2D && prev(stages()) == 0x09 && stages() == 0x0A,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_london_10_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174058, title = "Destructor: Turin 1",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x5D && prev(stages()) == 0x0A && stages() == 0x0B,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_1_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174059, title = "Destructor: Turin 2",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x5B && prev(stages()) == 0x0B && stages() == 0x0C,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_2_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174060, title = "Destructor: Turin 3",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x5C && prev(stages()) == 0x0C && stages() == 0x0D,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_3_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174061, title = "Destructor: Turin 4",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x5E && prev(stages()) == 0x0D && stages() == 0x0E,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_4_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174062, title = "Destructor: Turin 5",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x62 && prev(stages()) == 0x0E && stages() == 0x0F,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_5_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174063, title = "Destructor: Turin 6",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x5F && prev(stages()) == 0x0F && stages() == 0x10,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_6_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174064, title = "Destructor: Turin 7",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x63 && prev(stages()) == 0x10 && stages() == 0x11,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_7_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174065, title = "Destructor: Turin 8",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x60 && prev(stages()) == 0x11 && stages() == 0x12,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_8_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174066, title = "Destructor: Turin 9",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x61 && prev(stages()) == 0x12 && stages() == 0x13,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_9_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174067, title = "Destructor: Turin 10",
    description = "Fastest time recorded",
    start  = game_mode() == 0x2A && vehicle_id_mode() == 0x64 && prev(stages()) == 0x13 && stages() == 0x14,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(destructor_turin_10_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174068, title = "Challenge: Jumps Test 01",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x0F && prev(stages()) == 0x00 && stages() == 0x01,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_jumps_test_01_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174069, title = "Challenge: Brake Test",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x15 && prev(stages()) == 0x01 && stages() == 0x02,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_brake_test_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174070, title = "Challenge: Jumps Test 02",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x0E && prev(stages()) == 0x02 && stages() == 0x03,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_jumps_test_02_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174071, title = "Challenge: Icy Road Checkpoint Race",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x59 && prev(stages()) == 0x03 && stages() == 0x04,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_icy_road_checkpoint_race_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174072, title = "Challenge: Jumps Test 03",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x0B && prev(stages()) == 0x04 && stages() == 0x05,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_jumps_test_03_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174073, title = "Challenge: City Lap Survival",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x13 && prev(stages()) == 0x05 && stages() == 0x06,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_city_lap_survival_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174074, title = "Challenge: Jumps Test 04",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x1F && prev(stages()) == 0x06 && stages() == 0x07,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_jumps_test_04_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174075, title = "Challenge: Icy Road Destructor",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x5A && prev(stages()) == 0x07 && stages() == 0x08,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_icy_road_destructor_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174076, title = "Challenge: Jumps Test 05",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x1E && prev(stages()) == 0x08 && stages() == 0x09,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_jumps_test_05_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174077, title = "Challenge: Bird's Eye Destructor",
    description = "Fastest time recorded",
    start  = game_mode() == 0x28 && vehicle_id_mode() == 0x50 && prev(stages()) == 0x09 && stages() == 0x0A,
    cancel = always_false(),
    submit = always_true(),
    value  = measured(challenge_birds_eye_destructor_time() * 4),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174078, title = "Free Ride: Turin - Secret Race Track",
    description = "Fastest time recorded",
    start  = ((game_mode() == 0x20 && vehicle_id_mode() == 0x46 &&
               free_ride_turin_secret_destructor_total_cones_4() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag_4()) == 0x00 &&
               free_ride_turin_secret_track_won_flag_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x42 &&
               free_ride_turin_secret_destructor_total_cones_6() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_6() >= 0x02 &&
               prev(free_ride_turin_secret_destructor_number_of_cones_hit_5()) == 0x00 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_5() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3D &&
               free_ride_turin_secret_destructor_total_cones_5() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_5() >= 0x02 &&
               prev(free_ride_turin_secret_destructor_number_of_cones_hit_4()) == 0x00 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x43 &&
               free_ride_turin_secret_destructor_total_cones_9() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_9() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag_5()) == 0x00 &&
               free_ride_turin_secret_track_won_flag_5() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x41 &&
               free_ride_turin_secret_destructor_total_cones_3() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_3() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag_3()) == 0x00 &&
               free_ride_turin_secret_track_won_flag_3() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x44 &&
               free_ride_turin_secret_destructor_total_cones_4() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag_4()) == 0x00 &&
               free_ride_turin_secret_track_won_flag_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x45 &&
               free_ride_turin_secret_destructor_total_cones_2() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_2() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag_2()) == 0x00 &&
               free_ride_turin_secret_track_won_flag_2() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x40 &&
               free_ride_turin_secret_destructor_total_cones() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit() >= 0x02 &&
               prev(free_ride_turin_secret_track_won_flag()) == 0x00 && free_ride_turin_secret_track_won_flag() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x56 &&
               free_ride_turin_secret_destructor_total_cones_7() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_7() >= 0x02 &&
               prev(free_ride_turin_secret_destructor_number_of_cones_hit_6()) == 0x00 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_6() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3F &&
               free_ride_turin_secret_destructor_total_cones_8() == 0x03 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_8() >= 0x02 &&
               prev(free_ride_turin_secret_destructor_number_of_cones_hit_7()) == 0x00 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_7() == 0x01)),
    cancel = always_false(),
    submit = always_true(),
    value  = max_of(
                 measured(free_ride_turin_secret_track_time_8() * 4, when=vehicle_id_mode() == 0x46),
                 measured(free_ride_turin_secret_track_time_5() * 4, when=vehicle_id_mode() == 0x42),
                 measured(free_ride_turin_secret_track_time_7() * 4, when=vehicle_id_mode() == 0x3D),
                 measured(free_ride_turin_secret_track_time_4() * 4, when=vehicle_id_mode() == 0x43),
                 measured(free_ride_turin_secret_track_time() * 4, when=vehicle_id_mode() == 0x41),
                 measured(free_ride_turin_secret_track_time_6() * 4, when=vehicle_id_mode() == 0x44),
                 measured(free_ride_turin_secret_track_time_3() * 4, when=vehicle_id_mode() == 0x45),
                 measured(free_ride_turin_secret_track_time_9() * 4, when=vehicle_id_mode() == 0x40),
                 measured(free_ride_turin_secret_track_time_2() * 4, when=vehicle_id_mode() == 0x56),
                 measured(free_ride_turin_secret_track_time_10() * 4, when=vehicle_id_mode() == 0x3F)
             ),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 174079, title = "Free Ride: Turin - Secret Destructor",
    description = "Fastest time recorded",
    start  = ((game_mode() == 0x20 && vehicle_id_mode() == 0x46 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag_4()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x42 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_6() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_total_cones_5()) == 0x00 &&
               free_ride_turin_secret_destructor_total_cones_5() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3D &&
               free_ride_turin_secret_destructor_number_of_cones_hit_5() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_total_cones_4()) == 0x00 &&
               free_ride_turin_secret_destructor_total_cones_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x43 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_9() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag_5()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag_5() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x41 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_3() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag_3()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag_3() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x44 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag_4()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag_4() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x45 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_2() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag_2()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag_2() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x40 &&
               free_ride_turin_secret_destructor_number_of_cones_hit() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_won_flag()) == 0x00 &&
               free_ride_turin_secret_destructor_won_flag() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x56 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_7() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_total_cones_6()) == 0x00 &&
               free_ride_turin_secret_destructor_total_cones_6() == 0x01) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3F &&
               free_ride_turin_secret_destructor_number_of_cones_hit_8() >= 0x1E &&
               prev(free_ride_turin_secret_destructor_total_cones_7()) == 0x00 &&
               free_ride_turin_secret_destructor_total_cones_7() == 0x01)),
    cancel = always_false(),
    submit = always_true(),
    value  = max_of(
                 measured(free_ride_turin_secret_destructor_daimler_consort_time_1_2() * 4, when=vehicle_id_mode() == 0x46),
                 measured(free_ride_turin_secret_destructor_aston_martin_db4_time_1_2() * 4, when=vehicle_id_mode() == 0x42),
                 measured(free_ride_turin_secret_destructor_austin_mini_cooper_s_time_1_2() * 4, when=vehicle_id_mode() == 0x3D),
                 measured(free_ride_turin_secret_destructor_austin_a60_cambridge_time_1_2() * 4, when=vehicle_id_mode() == 0x43),
                 measured(free_ride_turin_secret_destructor_cop_car_time_1_2() * 4, when=vehicle_id_mode() == 0x41),
                 measured(free_ride_turin_secret_destructor_jaguar_etype_time_1_2() * 4, when=vehicle_id_mode() == 0x44),
                 measured(free_ride_turin_secret_destructor_1964_bedford_val_14_harrington_legionnaire_time_1_2() * 4,
                     when=vehicle_id_mode() == 0x45
                 ),
                 measured(free_ride_turin_secret_destructor_shelby_ac_cobra_time_1_2() * 4, when=vehicle_id_mode() == 0x40),
                 measured(free_ride_turin_secret_destructor_fiat_dino_time_1_2() * 4, when=vehicle_id_mode() == 0x56),
                 measured(free_ride_turin_secret_destructor_lamborghini_miura_p400s_time_1_2() * 4, when=vehicle_id_mode() == 0x3F)
             ),
    format = "MILLISECS"
)

leaderboard(
    id = 174080, title = "Free Ride: Turin - Secret Pizza Parlor Job",
    description = "Fastest time recorded",
    start  = ((game_mode() == 0x20 && vehicle_id_mode() == 0x46 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_4()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_4() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x42 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_6() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_6()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_6() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3D &&
               free_ride_turin_secret_destructor_number_of_cones_hit_5() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_5()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_5() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x43 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_9() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_9()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_9() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x41 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_3() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_3()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_3() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x44 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_4() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_4()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_4() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x45 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_2() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_2()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_2() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x40 &&
               free_ride_turin_secret_destructor_number_of_cones_hit() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x56 &&
               free_ride_turin_secret_destructor_number_of_cones_hit_7() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_7()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_7() == 0x02) ||
              (game_mode() == 0x20 && vehicle_id_mode() == 0x3F &&
               free_ride_turin_secret_destructor_number_of_cones_hit_8() == 0x1F &&
               prev(free_ride_turin_secret_pizza_job_completed_flag_8()) == 0x01 &&
               free_ride_turin_secret_pizza_job_completed_flag_8() == 0x02)),
    cancel = always_false(),
    submit = always_true(),
    value  = max_of(
                 measured(free_ride_turin_secret_pizza_job_daimler_consort_time_2_2() * 4, when=vehicle_id_mode() == 0x46),
                 measured(free_ride_turin_secret_pizza_job_aston_martin_db4_time_2_2() * 4, when=vehicle_id_mode() == 0x42),
                 measured(free_ride_turin_secret_pizza_job_austin_mini_cooper_s_time_2_2() * 4, when=vehicle_id_mode() == 0x3D),
                 measured(free_ride_turin_secret_pizza_job_austin_a60_cambridge_time_2_2() * 4, when=vehicle_id_mode() == 0x43),
                 measured(free_ride_turin_secret_pizza_job_cop_car_time_2_2() * 4, when=vehicle_id_mode() == 0x41),
                 measured(free_ride_turin_secret_pizza_job_jaguar_etype_time_2_2() * 4, when=vehicle_id_mode() == 0x44),
                 measured(free_ride_turin_secret_pizza_job_1964_bedford_val_14_harrington_legionnaire_time_2_2() * 4,
                     when=vehicle_id_mode() == 0x45
                 ),
                 measured(free_ride_turin_secret_pizza_job_shelby_ac_cobra_time_2_2() * 4, when=vehicle_id_mode() == 0x40),
                 measured(free_ride_turin_secret_pizza_job_fiat_dino_time_2_2() * 4, when=vehicle_id_mode() == 0x56),
                 measured(free_ride_turin_secret_pizza_job_lamborghini_miura_p400s_time_2_2() * 4, when=vehicle_id_mode() == 0x3F)
             ),
    format = "MILLISECS"
)

leaderboard(
    id = 174081, title = "The Cheatalian Job",
    description = "Cheats Activated",
    start  = menu_location() == 0x04 && game_state() == 0x00 && prev(input_code()) > 0x01 && prev(input_code()) < 0x0B &&
             input_code() == 0x65,
    cancel = always_false(),
    submit = menu_location() == 0x04 && game_state() == 0x00 && prev(input_code()) > 0x01 && prev(input_code()) < 0x0B &&
             input_code() == 0x65,
    value  = measured(null()),
    format = "Value"
)

rich_presence_conditional_display(game_state() == 0x00, "In the menus")

rich_presence_conditional_display(game_state() == 0xFFFFFFFF, "{0}",
    rich_presence_lookup("Mode", vehicle_id_mode(), ModeLookup)
)

rich_presence_display("In the menus")
