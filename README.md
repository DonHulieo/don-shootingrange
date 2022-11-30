# don-shootingrange
Don's Shooting Range for Weapons Training on QBCore! This is a paid script, available on my [Tebex](https://dons-developments.tebex.io/package/5389397).

# Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [bcs_questionare](https://github.com/baguscodestudio/bcs_questionare)

# Features
- Optimised code, resmon of 0.0ms in rest, 0.2ms peak whilst displaying each target, 0.6ms if using DrawText instead of QB Target.
- Fully Configurable Shooting Range Script
- Add as many Locations as you want, meaning you could use Gabz Ammunation or any suitable MLO.
- Add as many Tests and whether they are Practice tests or License tests
- Change Their Target Limits, Target Display Times and Required Weapon
- Change the License to anything you want that makes sense, i.e. Weapons and Hunting
- Set up your own Custom Games through the Menu, choosing the Weapon, Target Limit, and Target Display Time
- Players need to fill out a Waiver form before they can use the range
- Set the Accuracy Required to pass a License Test
- When a Player passes the shooting part of a License Test, they must complete a Questionnaire to actually get a License
- Leaderboards; Top 10 Best Scores (per person) for each Test, Time Leaderboards (Top 10 Daily, Top 10 Weekly, Top 10 Monthly and Top 10 All Time) and the Players best Scores for each test
- The Leaderboards are updated in real time, so if you get a new best score, it will show up on the Leaderboards instantly
- The Timed Leaderboards are only for Practice Tests and License Tests, not Custom Games
- Players can use the Range as many Times as they want, but they can only pass a License Test once
- Config Option to log Granted Licenses to Discord
- Code is Escrowed but the questionare.lua, menu.lua and config.lua is not so you can edit Freely!

# Preview
- [don-shootingrange](https://www.youtube.com/watch?v=m_3dpB6DfNM)

# Important Config
```
Config.UseTarget = true -- Use qb-target interactions // Set to false if you are using DrawText3Ds
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
- v1.0.4 - Added Locales for Notifications, DrawText and QB Target
- v1.0.3 - Updated the Database check function
- v1.0.2 - Added Config Option to log Granted Licenses to Discord
- v1.0.1 - Unescrowed the Menu and added a Clothes Config option
- v1.0.0 - Initial Release