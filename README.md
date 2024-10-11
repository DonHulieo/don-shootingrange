# don-shootingrange

Shooting Range System with Weapons Training and High Scores for FiveM! This is a paid script, available on my [Tebex](https://dons-developments.tebex.io/package/5389397).

## Features

- Optimised Code, Resmon of 0~0.02ms. Peaking Whilst Moving the Targets, and Worst Case Reaching 0.06ms if Using DrawText.
- Fully Configurable Shooting Range System.
- Configurable Locations which Clear the Range when a Player Enters (Meaning Gabz Ammunation or any other MLO can be used).
- Configurable Test Types, Display Times, Target Limits, Required Weapons and Rewarded Licenses.
- Ability for Players to Set Up their Own Custom Games with their Own Weapons.
- Option to Require a Waiver to use the Range, Saving those Pesky Insurance Claims!
- License Tests Require an Minimum Shot Accuracy to Pass, and Once Passed, the Player must Complete a Questionnaire to get the License.
- Leaderboards;
  - Custom Games Leaderboards (for each weapon)
  - Practice Tests Leaderboards
  - License Tests Leaderboards
  - Top 10 Daily, Weekly, Monthly and All Time Leaderboards
  - Players can see their own scores on the Leaderboards
- Leaderboards are Updated in Real Time, so if you get a New Best Score, it will Show up on the Leaderboards Instantly.
- 2 Locations Pre-Configured for the Shooting Range, with the Ability to Add More.
- Discord Logs for New Licenses.

## Table of Contents

- [don-shootingrange](#don-shootingrange)
  - [Features](#features)
  - [Table of Contents](#table-of-contents)
    - [Preview](#preview)
    - [Installation](#installation)
      - [Dependencies](#dependencies)
      - [Initial Setup](#initial-setup)
    - [Configuration](#configuration)
      - [Shared](#shared)
        - [Debug Mode](#debug-mode)
        - [Clothes](#clothes)
        - [Anims](#anims)
        - [Countdown](#countdown)
        - [Icons](#icons)
        - [Images](#images)
        - [Tests](#tests)
        - [Weapons](#weapons)
        - [Locations](#locations)
        - [Locales](#locales)
        - [Notifications](#notifications)
        - [Target](#target)
      - [Server](#server)
        - [Answers](#answers)
        - [DiscordLogs](#discordlogs)
        - [Scoreboard](#scoreboard)
        - [Licensing](#licensing)
        - [Waiver](#waiver)
    - [Support](#support)
    - [Changelog](#changelog)

### Preview

- [don-shootingrange](https://www.youtube.com/watch?v=m_3dpB6DfNM)

### Installation

#### Dependencies

**This script requires the following scripts to be installed:**

- [oxmysql](https://github.com/overextended/oxmysql)
- [duff](https://github.com/DonHulieo/duff)
- [iblips](https://github.com/DonHulieo/iblips)

**Depending on your Framework, Inventory and if you use a Targetting system, you will need to have installed either of the following dependencies:**

- [qb-core](https://github.com/qbcore-framework/qb-core)
- [es_extended](https://github.com/esx-framework/esx_core)
- [qb-inventory](https://github.com/qbcore-framework/qb-inventory)
- [ox_inventory](https://github.com/overextended/ox_inventory)
- [ox_target](https://github.com/overextended/ox_target)
- [qb-target](https://github.com/qbcore-framework/qb-target)
- [ox_lib](https://github.com/overextended/ox_lib)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)

#### Initial Setup

- Always use the latest FiveM artifacts (tested on 6683), you can find them [here](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/).
- Download the latest version from your keymaster.
- Extract the contents of the zip file into your resources folder, into a folder which starts after your framework & `duff` or;
- Ensure the script in your `server.cfg` after your framework & `duff`.
- Configure `shared/config.lua` & `server/config.lua` to your liking, see [Configuration](#configuration) for more information.

**Note:** This script automatically configures it's Core functions to work with your framework.

### Configuration

#### Shared

##### Debug Mode

```lua
['DebugMode'] = false
```

- `DebugMode` boolean, whether to show debug messages in the console & draw boxes around the target zones.

##### Clothes

```lua
['Clothes'] = {
  enabled = true,
  ['Male'] = {
    [0] = {prop = 0, texture = 0},
    [1] = {prop = 15, texture = 1}
  },
  ['Female'] = {
    [0] = {prop = 0, texture = 0},
    [1] = {prop = 25, texture = 0}
  }
}
```

- `enabled` boolean, whether to enable the clothes being changed when entering the range.
- `[GENDER][0]` table, the headwear equipped when entering the range.
- `[GENDER][1]` table, the eyewear equipped when entering the range.
- `prop` integer, the prop ID.
- `texture` integer, the texture ID.

##### Anims

```lua
['Anims'] = {
  enabled = true,
  ['Male'] = {
    ['1h'] = {dict = 'anim@deathmatch_intros@1hmale', anim = 'intro_male_1h_d_trevor'},
    ['2h'] = {dict = 'anim@deathmatch_intros@2hmale', anim = 'intro_male_2h_b'},
    ['exit'] = {dict = 'switch@franklin@chopshop', anim = 'checkshoe'}
  },
  ['Female'] = {
    ['1h'] = {dict = 'anim@deathmatch_intros@1hfemale', anim = 'intro_female_1h_a'},
    ['2h'] = {dict = 'anim@deathmatch_intros@2hfemale', anim = 'intro_female_2h_a'},
    ['exit'] = {dict = 'switch@franklin@chopshop', anim = 'checkshoe'}
  }
}
```

- `enabled` boolean, whether to enable the animations when entering the range.
- `[GENDER]['1h']` table, the one-handed animation when entering.
- `[GENDER]['2h']` table, the two-handed animation when entering.
- `[GENDER]['exit']` table, the animation when exiting.
- `dict` string, the animation dictionary.
- `anim` string, the animation name.

##### Countdown

```lua
['Countdown'] = {
  enabled = true,
  time = 3,
  colour = {
    count = {r = 255, g = 51, b = 51},
    go = {r = 0, g = 179, b = 60}
  },
}
```

- `enabled` boolean, whether to enable the countdown when starting a test.
- `time` integer, the time in seconds for the countdown.
- `colour['count']` table, the colour of the countdown text.
- `colour['go']` table, the colour of the go text.

##### Icons

```lua
['Icons'] = {
  ['Main'] = {
    back = 'fa-solid fa-backward',
    practice = 'fas fa-clipboard-list',
    scoreboard = 'fas fa-trophy',
    customs = 'fas fa-gamepad',
    waiver = 'fas fa-file-signature',
    licensing = 'fas fa-clipboard-check'
  },
  ['Tests'] = {
    main = 'fas fa-bullseye',
    ['Customs'] = {
      weapon = 'fas fa-gun',
      time = 'fas fa-stopwatch',
      limit = 'fas fa-bullseye'
    }
  },
  ['Scoreboard'] = {
    range = 'fas fa-trophy',
    timed = 'fas fa-stopwatch',
    hall_of_fame = 'fas fa-award',
    my_scores = 'fas fa-user'
  }
}
```

- `Main` table, the icons for the main menu.
- `Tests` table, the icons for the tests menu.
- `[Tests]['Customs']` table, the icons for the custom games menu.
- `Scoreboard` table, the icons for the scoreboard menu.

##### Images

- Any Customs Images Added to `shootingrange\images`, Need Their Names Added to Images in the Config.

```lua
['Images'] = {
  main = 'ammunation_logo',
  ['Targets'] = {
    'prop_range_target_01',
    'prop_range_target_02',
    'prop_range_target_03'
  }
}
```

- `main` string, the main image header for the range.
- `[Targets]` table, the images for the targets.

##### Tests

```lua
['Tests'] = {
  {
    weapon = 'WEAPON_COMBATPISTOL',
    time = 1500,
    limit = 10,
    license = false
  }, {
    weapon = 'WEAPON_COMBATPISTOL',
    time = 1000,
    limit = 25,
    license = false
  }, {
    weapon = 'WEAPON_COMBATPISTOL',
    time = 750,
    limit = 40,
    license = false
  }, {
    weapon = 'WEAPON_COMBATPISTOL',
    time = 500,
    limit = 20,
    license = 'weapon'
  }
}
```

- `weapon` string, the weapon to use for the test.
- `time` integer, the time in milliseconds for the test.
- `limit` integer, the amount of targets for the test.
- `license` string|boolean, the license to give the player if they pass the test.

##### Weapons

```lua
['Weapons'] = {
  'WEAPON_COMBATPISTOL',
  'WEAPON_PISTOL',
  'WEAPON_PISTOL50',
  'WEAPON_SNSPISTOL',
  'WEAPON_HEAVYPISTOL',
  'WEAPON_VINTAGEPISTOL',
  'WEAPON_MARKSMANPISTOL',
  'WEAPON_REVOLVER',
  'WEAPON_MINISMG',
  'WEAPON_DBSHOTGUN',
  'WEAPON_COMBATSHOTGUN',
  'WEAPON_COMBATMG',
  'WEAPON_BULLPUPRIFLE'
}
```

- `Weapons` table, the weapons allowed for custom games.

##### Locations

```lua
['Locations'] = {
  {
    name = 'Downtown',
    coords = vector4(6.04, -1099.95, 29.8, 250.0),
    blip = {
      enabled = true,
      options = {
        name = t('blip.label', {name = 'Downtown'}),
        colours = {
          opacity = 255,
          primary = 1
        },
        display = {
          category = 'activity',
          display = 'all_select'
        },
        style = {
          sprite = 313,
          scale = 0.5,
          short_range = true
        }
      }
    },
    target = `prop_range_target_01`,
    ['Ranges'] = {
      ['Types'] = {
        small = {
          length = 28.2,
          width = 1.0,
          heading = 340.0,
          minZ = 28.8,
          maxZ = 31.6,
          tests = 1
        },
        large = {
          length = 28.2,
          width = 5.0,
          heading = 340.0,
          minZ = 28.8,
          maxZ = 31.6,
          tests = {'all', 2, 3, 4}
        }
      },
      ['Positions'] = {
        {
          center = vector3(13.06, -1082.53, 29.8),
          type = 'small',
          ['Targets'] = {
            vector2(10.968101501465, -1088.18359375),
            vector2(14.069986343384, -1079.6063232422),
            vector2(17.824951171875, -1069.2772216797)
          }
        }, {
          center = vector3(18.228310, -1084.411255, 29.8),
          type = 'large',
          ['Targets'] = {
            vector2(14.726871, -1089.551758),
            vector2(17.828758, -1080.974487),
            vector2(21.583725, -1070.645386),
            vector2(15.666563, -1089.893799),
            vector2(18.768452, -1081.316528),
            vector2(22.523418, -1070.987427),
            vector2(16.606256, -1090.235840),
            vector2(19.708145, -1081.658569),
            vector2(23.463112, -1071.329468),
            vector2(17.545950, -1090.577881),
            vector2(20.647839, -1082.000610),
            vector2(24.402805, -1071.671509)
          }
        },
        ...
      }
    }
  }
}
```

- `name` string, the name of the location.
- `coords` vector4, the coordinates of the location.
- `blip.enabled` boolean, whether to show a blip for the location.
- `blip.options` blip_options, see [here](https://github.com/DonHulieo/iblips?tab=readme-ov-file#options) for more information.
- `target` string, the target prop to use if none selected.
- `[Ranges]['Types']` table, the types of ranges available.
  - `length` float, the length of the range.
  - `width` float, the width of the range.
  - `heading` float, the heading of the range.
  - `minZ` float, the minimum Z of the range.
  - `maxZ` float, the maximum Z of the range.
  - `tests` table|string|integer, the tests available for the range. This can be a string of `all` or a table of test IDs.
- `[Ranges]['Positions']` table, the positions of the ranges.
  - `center` vector3, the center of the range.
  - `type` string, the type of the range.
  - `[Targets]` table, the positions of the targets.
    - `vector2` vector2, the position of the target.

##### Locales

If you are using a locale other than English, you will need to translate the `en.lua` file, if your locale is not already included.

##### Notifications

```lua
['Notify'] = function(source, text, type, time)
  local src = source
  local types = {['error'] = 'error', ['success'] = 'success', ['primary'] = 'primary'}
  -- Use the above table to change notify types to suit your notification resource
  local is_server = IsDuplicityVersion() == 1
  if is_server and not src then return end
  -- ServerSide Notification
  if is_server then
    -- local Player = duff.bridge.getplayer(src)
    -- if not Player then return end
    -- Player.showNotification(text)
    TriggerClientEvent('QBCore:Notify', src, text, types[type] or 'primary', time)
  else
    -- ClientSide Notification
    local Core = duff.bridge.getcore()
    -- Core.ShowNotification(text, types[type] or 'primary', time)
    Core.Functions.Notify(text, types[type] or 'primary', time)
  end
end
```

- `Notify` function, this is used to send notifications to the player. You can use this to send notifications to the player in your own way. Whether that be okok, base QB or ox_lib!
- `types` table, this is used to change the notification types to suit your notification resource. The default is set to `qb`'s notification types. To change this, simply change the value of the key to the type of notification you want to send. (ie. for okok, change `['primary'] = 'primary'` to `['primary'] = 'info'`).

##### Target

```lua
['Target'] = {
  enabled = true,
  distance = 1.5,
  icon = 'fas fa-gun'
}
```

- `enabled` boolean, whether to use a target system or drawtext.
- `distance` float, the distance the player has to be within to see the target.
- `icon` string, the icon to use for the target. You can find the icons [here](https://fontawesome.com/icons).

#### Server

##### Answers

```lua
['Answers'] = {
  ['Waiver'] = {1, 3, 4, 2},
  ['License'] = {1, 2, 4, 3, 1}
}
```

- `Waiver` table, the answers to the waiver questionnaire.
- `License` table, the answers to the license questionnaire.

##### DiscordLogs

```lua
['DiscordLogs'] = {
  enabled = true,
  image = '',
  colour = 65309,
  webhook = ''
}
```

- `enabled` boolean, whether to log to discord.
- `image` string, the image to use for the logs.
- `colour` integer, the colour of the embed, you can find the colours [here](https://www.spycolor.com/).
- `webhook` string, the webhook to send the logs to.

##### Scoreboard

```lua
['Score'] = {
  max_per_hit = 2,
  headshot_multiplier = 2,
  bodyshot_multiplier = {max = 1.25, min = 0.5},
  license_accuracy = 0.85
}
```

- `max_per_hit` integer, the maximum score per hit.
- `headshot_multiplier` integer, the multiplier for headshots.
- `bodyshot_multiplier['max']` float, the maximum multiplier for bodyshots.
- `bodyshot_multiplier['min']` float, the minimum multiplier for bodyshots.
- `license_accuracy` float, the minimum accuracy required to pass the license test.

##### Licensing

```lua
['Licensing'] = true
```

- `Licensing` boolean, whether to allow license tests.

##### Waiver

```lua
['Waiver'] = true
```

- `Waiver` boolean, whether to require a waiver to use the range.

### Support

- Join my [discord](https://discord.gg/tVA58nbBuk) and use the relative support channels.
- Open a ticket and please have your Tebex Transation ID ready 🙂.

### Changelog

- [Releases](https://github.com/DonHulieo/don-shootingrange/compare/v1.2.0...v1.2.4)
