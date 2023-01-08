Config = {}

Config.UseTarget = true -- Use qb-target interactions // Set to false if you are using DrawText3Ds
Config.ShowBlips = true -- Set to true if you want to show blips on the map
Config.UniqueNames = false -- Set to true if you want to use unique names for each blip
Config.BlipName = "Shooting Range" -- Set to the name you want to use for the blips if not using unique names
Config.RequiresWaiver = true -- Set to true if you want to require a waiver to use the range
Config.LicenseTests = true -- Set to true if you the range to be used for licensing tests
Config.ScoreLimit = 0.85 -- Based on the amount of targets // Set to 0 if you want to disable the score limit // Set to 1 if you want to require a perfect hit percentage
Config.ChangeClothes = true -- Set to true if you want the ped to put on protective gear on when starting a test
Config.ClothesIndexs = {
    male = {
        dressed = {
            earmuffs = {prop = 0, variation = 0}, -- Set to the indexs you want to use for the earmuffs
            glasses = {prop = 25, variation = 0}, -- Set to the indexs you want to use for the glasses
        },
        undressed = {
            earmuffs = {prop = 0, variation = 0}, -- Set to the indexs you want to use for the earmuffs
            glasses = {prop = 25, variation = 0}, -- Set to the indexs you want to use for the glasses
        }
    },
    female = {
        dressed = {
            earmuffs = {prop = 0, variation = 0}, -- Set to the indexs you want to use for the earmuffs
            glasses = {prop = 25, variation = 0}, -- Set to the indexs you want to use for the glasses
        },
        undressed = {
            earmuffs = {prop = 0, variation = 0}, -- Set to the indexs you want to use for the earmuffs
            glasses = {prop = 25, variation = 0}, -- Set to the indexs you want to use for the glasses
        }
    }
}

Config.DiscordLogs = true -- Set to true if you want to log to discord // This requires the qb-log script located in qb-smallresources
Config.LogSettings = {
    webhook = "default", -- Set to your discord webhook // Set to "default" if you want to use the default webhook
    title = "Shooting Range | License Granted", -- Set to the title you want to use for the logs
    colour = "green", -- Set to the color you want to use for the logs // Defaults are default, blue, red, green, white, black, orange, yellow, pink and light green
}

Config.MainMenu = {
    mainHeader = "https://static.wikia.nocookie.net/gtawiki/images/a/aa/Ammunation-GTAV.png", -- Set to the header you want to use for the main menu
    secHeader = "Practice Sessions", -- Set to the header you want to use for the first submenu
    secTxt = "Choose a practice session to start", -- Set to the text you want to use for the first submenu
    secIcon = 'fas fa-clipboard-list', -- Set to the icon you want to use for the first submenu // https://fontawesome.com/v5.15/icons?d=gallery&p=2
    thrHeader = "Licensing", -- Set to the header you want to use for the second submenu
    thrTxt = "Complete your Weapons License training", -- Set to the text you want to use for the second submenu
    thrIcon = 'fas fa-clipboard-check', -- Set to the icon you want to use for the second submenu
    fouHeader = "Waiver", -- Set to the header you want to use for the third submenu
    fouTxt = "Complete the waiver to access the range", -- Set to the text you want to use for the third submenu
    fouIcon = 'fas fa-file-signature', -- Set to the icon you want to use for the third submenu
    fifHeader = "Scoreboard", -- Set to the header you want to use for the fourth submenu
    fifTxt = "View the leaderboards", -- Set to the text you want to use for the fourth submenu
    fifIcon = 'fas fa-trophy', -- Set to the icon you want to use for the fourth submenu
    sixHeader = "Custom Game", -- Set to the header you want to use for the fifth submenu and the custom game menu
    sixTxt = "Create a custom game for yourself", -- Set to the text you want to use for the fifth submenu
    sixIcon = 'fas fa-gamepad', -- Set to the icon you want to use for the fifth submenu
}

Config.ScoreboardMenu = {
    secHeader = "Shooting Range", -- Set to the header you want to use for the shooting range leaderboard
    secTxt = "View the leaderboards", -- Set to the text you want to use for the shooting range leaderboard
    secIcon = 'fas fa-trophy', -- Set to the icon you want to use for the shooting range leaderboard
    ranCustHeader = "Custom", -- Set to the header you want to use for the shooting range custom leaderboard
    ranCustTxt = "View the custom leaderboards", -- Set to the text you want to use for the shooting range custom leaderboard
    ranCustIcon = 'fas fa-trophy', -- Set to the icon you want to use for the shooting range custom leaderboard
    thrHeader = "Leaderboards", -- Set to the header you want to use for the leaderboards
    thrTxt = "View the timed leaderboards", -- Set to the text you want to use for the leaderboards
    thrIcon = 'fas fa-stopwatch', -- Set to the icon you want to use for the leaderboards
    leaFirsHeader = "Daily", -- Set to the header you want to use for the daily leaderboard
    leaFirsTxt = "View the daily leaderboards", -- Set to the text you want to use for the daily leaderboard
    leaFirsIcon = 'fas fa-stopwatch', -- Set to the icon you want to use for the daily leaderboard
    leaSecHeader = "Weekly", -- Set to the header you want to use for the weekly leaderboard
    leaSecTxt = "View the weekly leaderboards", -- Set to the text you want to use for the weekly leaderboard
    leaSecIcon = 'fas fa-stopwatch', -- Set to the icon you want to use for the weekly leaderboard
    leaThirHeader = "Monthly", -- Set to the header you want to use for the monthly leaderboard
    leaThirTxt = "View the monthly leaderboards", -- Set to the text you want to use for the monthly leaderboard
    leaThirIcon = 'fas fa-stopwatch', -- Set to the icon you want to use for the monthly leaderboard
    fouHeader = "Hall of Fame", -- Set to the header you want to use for the third submenu
    fouTxt = "View the hall of fame", -- Set to the text you want to use for the third submenu
    fouIcon = 'fas fa-award', -- Set to the icon you want to use for the third submenu
    hofFirHeader = "All Time Top 10", -- Set to the header you want to use for the top 10 hall of fame
    hofFirTxt = "View the top 10 hall of fame", -- Set to the text you want to use for the top 10 hall of fame
    hofFirIcon = 'fas fa-award', -- Set to the icon you want to use for the top 10 hall of fame
    fifHeader = "My Scores", -- Set to the header you want to use for the fourth submenu
    fifTxt = "View your scores", -- Set to the text you want to use for the fourth submenu
    fifIcon = 'fas fa-user', -- Set to the icon you want to use for the fourth submenu
}

Config.CustomMatchMenu = {
    secTxt = "Pick a weapon", -- Set to the text you want to use for the weapon selection menu
    secIcon = 'fas fa-gamepad', -- Set to the icon you want to use for the weapon selection menu
    wepIcon = 'fas fa-gun', -- Set to the icon you want to use for the weapon selection menu
    thrTxt = "Pick a display time", -- Set to the text you want to use for the display time selection menu
    timeIcon = 'fas fa-stopwatch', -- Set to the icon you want to use for the display time selection menu
    fouTxt = "Pick a target count", -- Set to the text you want to use for the target count selection menu
    tarIcon = 'fas fa-bullseye', -- Set to the icon you want to use for the target count selection menu
}

Config.ShootingRange = {
    Easy = {
        testName = 'Easy', -- Name of the test in the menu
        icon = 'fas fa-bullseye', -- Fontawesome icon used in the menu // https://fontawesome.com/v5.15/icons?d=gallery&p=2
        weapon = 'WEAPON_COMBATPISTOL', -- Weapons List: https://wiki.rage.mp/index.php?title=Weapons
        displayTime = 500, -- Amount of time in milliseconds the player has to hit the target
        targetLimit = 10, -- Amount of targets to shoot
        practice = true, -- Set to true if the test does not count towards the license
    },
    Medium = {
        testName = 'Medium',
        icon = 'fas fa-bullseye',
        weapon = 'WEAPON_COMBATPISTOL',
        displayTime = 250,
        targetLimit = 25,
        practice = true,
    },
    Hard = {
        testName = 'Hard',
        icon = 'fas fa-bullseye',
        weapon = 'WEAPON_COMBATPISTOL',
        displayTime = 100,
        targetLimit = 40,
        practice = true,
    },
    License = {
        testName = 'Weapon\'s License',
        icon = 'fas fa-bullseye',
        weapon = 'WEAPON_COMBATPISTOL',
        displayTime = 150,
        targetLimit = 20,
        practice = false,
        license = 'weapon', -- Set to the name of the license you want to give the player
    },
    -- Add as many as you want
}

Config.AllowedWeapons = { -- Allowed weapons for custom games // I'd stick to pistols otherwise the animations will look weird
    'WEAPON_COMBATPISTOL',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL',
    'WEAPON_MARKSMANPISTOL',
    'WEAPON_REVOLVER',
}

Config.Locations = {
    [1] = {
        name = 'SELS Gun Range', -- Name of the location
        coords = vector3(827.61, -2158.6, 29.62), -- Where the sign up is located
        testCoords = vector3(821.477, -2163.663, 29.657), -- Where the player can start the test after signing up
        testHeading = 180.00, -- Heading of where the player is for the test // Is also used for the qbtarget location
        boxZoneLength = 0.5, -- The length of the zone where the player can start the test
        boxZoneWidth = 1.2, -- The width of the zone where the player can start the test
        boxzoneHeading = 270.0, -- The heading of the zone where the player can start the test
        testBoxCoords = vector3(821.52, -2163.8, 29.62), -- Where the qbtarget box is located
        testBoxLength = 0.6, -- Length of the qbtarget box
        testBoxWidth = 4, -- Width of the qbtarget box
        blip = { -- Blip settings
            sprite = 313, -- Blip sprite
            color = 1, -- Blip color
            scale = 0.5, -- Blip scale
        },
        targets = {
            [1] = vector3(826.701, -2171.449, 29.45),
            [2] = vector3(824.588, -2171.393, 29.45),
            [3] = vector3(822.058, -2171.258, 29.45),
            [4] = vector3(819.853, -2171.35, 29.45), 
            [5] = vector3(817.223, -2171.293, 29.45),
            [6] = vector3(816.428, -2180.542, 29.45), 
            [7] = vector3(818.678, -2180.556, 29.45), 
            [8] = vector3(821.051, -2180.49, 29.45), 
            [9] = vector3(823.112, -2180.499, 29.45), 
            [10] = vector3(825.06, -2180.514, 29.45), 
            [11] = vector3(826.297, -2180.558, 29.45),
            [12] = vector3(826.784, -2191.586, 29.45),
            [13] = vector3(824.875, -2191.548, 29.45), 
            [14] = vector3(823.196, -2191.56, 29.45), 
            [15] = vector3(821.123, -2191.599, 29.45), 
            [16] = vector3(819.525, -2191.561, 29.45), 
            [17] = vector3(818.209, -2191.575, 29.45),
            [18] = vector3(816.858, -2191.564, 29.45),
        },
        inUse = false, -- Do not touch this // This is used to check if the location is in use
        user = nil, -- Do not touch this // This is used to check who is using the location
    },
    [2] = {
        name = 'Downtown Gun Range', -- Name of the location
        coords = vector3(6.04, -1099.95, 29.8), -- Where the sign up is located
        testCoords = vector3(13.53, -1097.11, 29.83), -- Where the player will be teleported to when they start the test
        testHeading = 340.0, -- Heading of where the player is for the test // Is also used for the qbtarget location
        boxZoneLength = 0.5, -- The length of the zone where the player can start the test
        boxZoneWidth = 1.2, -- The width of the zone where the player can start the test
        boxzoneHeading = 250.0, -- The heading of the zone where the player can start the test
        testBoxCoords = vector3(13.58, -1097.22, 29.8), -- Where the qbtarget box is located
        testBoxLength = 0.6, -- Length of the qbtarget box
        testBoxWidth = 4, -- Width of the qbtarget box
        blip = { -- Blip settings
            sprite = 313, -- Blip sprite
            color = 1, -- Blip color
            scale = 0.5, -- Blip scale
        },
        targets = {
            [1] = vector3(20.45, -1091.55, 29.5530),
            [2] = vector3(18.60, -1090.85, 29.5530),
            [3] = vector3(16.75, -1090.15, 29.5530),
            [4] = vector3(14.90, -1089.45, 29.5530),
            [5] = vector3(13.05, -1088.75, 29.5530),
            [6] = vector3(11.20, -1088.05, 29.5530),
            [7] = vector3(23.45, -1082.95, 29.5530),
            [8] = vector3(21.60, -1082.25, 29.5530),
            [9] = vector3(19.75, -1081.55, 29.5530),
            [10] = vector3(17.90, -1080.85, 29.5530),
            [11] = vector3(16.05, -1080.15, 29.5530),
            [12] = vector3(14.20, -1079.45, 29.5530),
            [13] = vector3(27.25, -1072.55, 29.5530),
            [14] = vector3(25.40, -1071.85, 29.5530),
            [15] = vector3(23.55, -1071.15, 29.5530),
            [16] = vector3(21.70, -1070.45, 29.5530),
            [17] = vector3(19.75, -1070.00, 29.5530),
            [18] = vector3(18.00, -1069.75, 29.5530),
        },
        inUse = false, -- Do not touch this // This is used to check if the location is in use
        user = nil, -- Do not touch this // This is used to check who is using the location
    },
    --[[
    [3] = {
        name = 'My Other Range', -- Name of the location
        coords = vector3(6.04, -1099.95, 29.8), -- Where the sign up is located
        testCoords = vector3(13.53, -1097.11, 29.83), -- Where the player will be teleported to when they start the test
        testHeading = 340.0, -- Heading of where the player is for the test // Is also used for the qbtarget location
        boxZoneLength = 0.5, -- The length of the zone where the player can start the test
        boxZoneWidth = 1.2, -- The width of the zone where the player can start the test
        boxzoneHeading = 250.0, -- The heading of the zone where the player can start the test
        testBoxCoords = vector3(13.58, -1097.22, 29.8), -- Where the qbtarget box is located
        testBoxLength = 0.6, -- Length of the qbtarget box
        testBoxWidth = 4, -- Width of the qbtarget box
        blip = { -- Blip settings
            sprite = 313, -- Blip sprite
            color = 1, -- Blip color
            scale = 0.5, -- Blip scale
        },
        targets = {
            [1] = vector3(20.45, -1091.55, 29.5530),
            [2] = vector3(18.60, -1090.85, 29.5530),
            [3] = vector3(16.75, -1090.15, 29.5530),
            [4] = vector3(14.90, -1089.45, 29.5530),
            [5] = vector3(13.05, -1088.75, 29.5530),
            [6] = vector3(11.20, -1088.05, 29.5530),
            [7] = vector3(23.45, -1082.95, 29.5530),
            [8] = vector3(21.60, -1082.25, 29.5530),
            [9] = vector3(19.75, -1081.55, 29.5530),
            [10] = vector3(17.90, -1080.85, 29.5530),
            [11] = vector3(16.05, -1080.15, 29.5530),
            [12] = vector3(14.20, -1079.45, 29.5530),
            [13] = vector3(27.25, -1072.55, 29.5530),
            [14] = vector3(25.40, -1071.85, 29.5530),
            [15] = vector3(23.55, -1071.15, 29.5530),
            [16] = vector3(21.70, -1070.45, 29.5530),
            [17] = vector3(19.75, -1070.00, 29.5530),
            [18] = vector3(18.00, -1069.75, 29.5530),
        },
        inUse = false, -- Do not touch this // This is used to check if the location is in use
        user = nil, -- Do not touch this // This is used to check who is using the location 
    }, ]]
    -- Add more locations here
}