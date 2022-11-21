# don-shootingrange
Don's Shooting Range for Weapons Training on QBCore! This is a paid script, available on my [Tebex](https://dons-developments.tebex.io/package/5389397).

# Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [bcs_questionare](https://github.com/baguscodestudio/bcs_questionare)

# Features
- Optimised code, resmon of 0.0ms in rest, 0.2ms peak whilst displaying each target, 0.6ms if using DrawText instead of QB Target.
- Fully Configurable Shooting Range Script
- Change Target Limits, Target Display Times and Required Weapon or Add New Tests all from the Config File
- Add as many Tests as you want and as many Locations
- Set the Accuracy Required to pass a License Test
- Players need to fill out a waiver form before they can use the range
- Leaderboards; Best Score (per person) for each Test, Time Leaderboards (Daily, Weekly, Monthly, All Time) and the Players best score for each test
- Players can use the Range as many Times as they want, but they can only pass a License Test once
- Set up your own Custom Games through the Menu, choosing the Weapon, Target Limit, and Target Display Time
- Code is Escrowed but the questionare.lua is not so you can edit Freely!

# Preview
- [don-shootingrange](https://www.youtube.com/watch?v=m_3dpB6DfNM)

# Important Config
```
Config.UseTarget = true -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true) // Set to false if you are using DrawText3Ds
Config.ShowBlips = true -- Set to true if you want to show blips on the map
Config.UniqueNames = false -- Set to true if you want to use unique names for each blip
Config.BlipName = "Shooting Range" -- Set to the name you want to use for the blips if not using unique names
Config.RequiresWaiver = true -- Set to true if you want to require a waiver to use the range
Config.ScoreLimit = 0 -- Based on the amount of targets // Set to 0 if you want to disable the score limit // Set to 1 if you want to require a perfect hit percentage

Config.ShootingRange = {
    Easy = {
        testName = 'Easy', -- Name of the test in the menu
        icon = 'fas fa-bullseye', -- Fontawesome icon used in the menu // https://fontawesome.com/v5.15/icons?d=gallery&p=2
        weapon = 'WEAPON_COMBATPISTOL', -- Weapons List: https://wiki.rage.mp/index.php?title=Weapons
        displayTime = 500, -- Amount of time in milliseconds the player has to hit the target
        targetLimit = 10, -- Amount of targets to shoot
        practice = true, -- Set to true if the test does not count towards the license
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
```
# Images
- Add the images here to \bcs_questionare\html\images

# Support
- Join my [discord](https://discord.gg/tVA58nbBuk) and use the relative support channels. 
- Until a ticket system for support is created, please have your Tebex Transation ID ready 🙂.

# Changelog
- 1.0.0 - Initial Release
