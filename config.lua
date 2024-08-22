return {
  ---@type boolean
  ['DebugMode'] = false,
  ---@type {enabled: boolean, Male: {prop: integer, texture: integer}[], Female: {prop: integer, texture: integer}[]}
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
  },
  ---@type {enabled: boolean, Male: {[string]: {dict: string, anim: string}, Female: {[string]: {dict: string, anim: string}}}}
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
  },
  ---@type {enabled: boolean, time: integer, colour: {count: {r: integer, g: integer, b: integer}, go: {r: integer, g: integer, b: integer}}}
  ['Countdown'] = {
    enabled = true,
    time = 3,
    colour = {
      count = {r = 255, g = 51, b = 51},
      go = {r = 0, g = 179, b = 60}
    },
  },
  ['Icons'] = {
    ---@type {back: string, practice: string, scoreboard: string, customs: string, waiver: string, licensing: string}
    ['Main'] = {
      back = 'fa-solid fa-backward',
      practice = 'fas fa-clipboard-list',
      scoreboard = 'fas fa-trophy',
      customs = 'fas fa-gamepad',
      waiver = 'fas fa-file-signature',
      licensing = 'fas fa-clipboard-check'
    },
    ---@type {main: string, Customs: {weapon: string, time: string, limit: string}}
    ['Tests'] = {
      main = 'fas fa-bullseye',
      ['Customs'] = {
        weapon = 'fas fa-gun',
        time = 'fas fa-stopwatch',
        limit = 'fas fa-bullseye'
      }
    },
    ---@type {range: string, timed: string, hall_of_fame: string, my_scores: string}
    ['Scoreboard'] = {
      range = 'fas fa-trophy',
      timed = 'fas fa-stopwatch',
      hall_of_fame = 'fas fa-award',
      my_scores = 'fas fa-user'
    }
  },
  ---@type {main: string, Targets: string[]}
  ['Images'] = {
    main = 'ammunation_logo',
    ['Targets'] = {
      'prop_range_target_01',
      'prop_range_target_02',
      'prop_range_target_03'
    }
  },
  ---@type {weapon: string, time: integer, limit: integer, license: boolean|string}[]
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
  },
  ---@type string[]
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
  },
  ---@type {name: string, coords: vector4, blip: {enabled: boolean, sprite: integer, colour: integer, scale: number}, target: string, Ranges: {Types: {small: {length: number, width: number, heading: number, minZ: number, maxZ: number, tests: any}, large: {length: number, width: number, heading: number, minZ: number, maxZ: number, tests: any}}, Positions: {center: vector3, type: string, Targets: vector2[]}[]}}[]
  ['Locations'] = {
    {
      name = 'Downtown',
      coords = vector4(6.04, -1099.95, 29.8, 250.0),
      blip = {
        enabled = true,
        sprite = 313,
        colour = 1,
        scale = 0.5,
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
            center = vector3(13.999693, -1082.87207, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(11.907794, -1088.525635),
              vector2(15.009679, -1079.948364),
              vector2(18.764645, -1069.619263)
            }
          }, {
            center = vector3(14.939385, -1083.214111, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(12.847486, -1088.867676),
              vector2(15.949371, -1080.290405),
              vector2(19.704338, -1069.961304)
            }
          }, {
            center = vector3(15.879078, -1083.556152, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(13.787178, -1089.209717),
              vector2(16.889065, -1080.632446),
              vector2(20.644032, -1070.303345)
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
          }, {
            center = vector3(20.577541, -1085.266357, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(18.485641, -1090.919922),
              vector2(21.587530, -1082.342651),
              vector2(25.342497, -1072.013550)
            }
          }, {
            center = vector3(21.517235, -1085.608398, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(19.425335, -1091.261963),
              vector2(22.527224, -1082.684692),
              vector2(26.282190, -1072.355591)
            }
          }, {
            center = vector3(22.456928, -1085.950439, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(20.365028, -1091.604004),
              vector2(23.466917, -1083.026733),
              vector2(27.221884, -1072.697632)
            }
          }, {
            center = vector3(23.396622, -1086.292480, 29.8),
            type = 'small',
            ['Targets'] = {
              vector2(21.304722, -1091.946045),
              vector2(24.406610, -1083.368774),
              vector2(28.161577, -1073.039673)
            }
          }
        }
      }
    }, {
      name = 'SELS',
      coords = vector4(827.61, -2158.6, 29.62, 270.0),
      blip = {
        enabled = true,
        sprite = 313,
        colour = 1,
        scale = 0.5,
      },
      target = `prop_range_target_01`,
      ['Ranges'] = {
        ['Types'] = {
          small = {
            length = 28.2,
            width = 1.0,
            heading = 180.0,
            minZ = 28.62,
            maxZ = 31.42,
            tests = 1
          },
          large = {
            length = 28.2,
            width = 5.0,
            heading = 180.0,
            minZ = 28.62,
            maxZ = 31.42,
            tests = {'all', 2, 3, 4}
          }
        },
        ['Positions'] = {
          {
            center = vector3(827.05, -2177.45, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(827.07507324219, -2171.3718261719),
              vector2(827.08361816406, -2180.490234375),
              vector2(827.08178710938, -2191.4755859375)
            }
          }, {
            center = vector3(826.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(826.075073, -2171.371826),
              vector2(826.083618, -2180.490234),
              vector2(826.081787, -2191.475586)
            }
          }, {
            center = vector3(825.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(825.075073, -2171.371826),
              vector2(825.083618, -2180.490234),
              vector2(825.081787, -2191.475586)
            }
          }, {
            center = vector3(824.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(824.075073, -2171.371826),
              vector2(824.083618, -2180.490234),
              vector2(824.081787, -2191.475586)
            }
          }, {
            center = vector3(821.549988, -2177.449951, 29.62),
            type = 'large',
            ['Targets'] = {
              vector2(823.075073, -2171.371826),
              vector2(823.083618, -2180.490234),
              vector2(823.081787, -2191.475586),
              vector2(822.075073, -2171.371826),
              vector2(822.083618, -2180.490234),
              vector2(822.081787, -2191.475586),
              vector2(821.075073, -2171.371826),
              vector2(821.083618, -2180.490234),
              vector2(821.081787, -2191.475586),
              vector2(820.075073, -2171.371826),
              vector2(820.083618, -2180.490234),
              vector2(820.081787, -2191.475586)
            }
          }, {
            center = vector3(819.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(819.075073, -2171.371826),
              vector2(819.083618, -2180.490234),
              vector2(819.081787, -2191.475586)
            }
          }, {
            center = vector3(818.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(818.075073, -2171.371826),
              vector2(818.083618, -2180.490234),
              vector2(818.081787, -2191.475586)
            }
          }, {
            center = vector3(817.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(817.075073, -2171.371826),
              vector2(817.083618, -2180.490234),
              vector2(817.081787, -2191.475586)
            }
          }, {
            center = vector3(816.049988, -2177.449951, 29.62),
            type = 'small',
            ['Targets'] = {
              vector2(816.075073, -2171.371826),
              vector2(816.083618, -2180.490234),
              vector2(816.081787, -2191.475586)
            }
          }
        }
      }
    }
  },
  ---@type fun(source: integer|string?, text: string, type: string, time: integer?)
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
  end,
  ---@type {enabled: boolean, distance: number, icon: string}
  ['Target'] = {
    enabled = true,
    distance = 1.5,
    icon = 'fas fa-gun'
  }
}