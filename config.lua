Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
Config.MinimalDoctors = 2 -- How many players with the ambulance job to prevent the hospital check-in system from being used --TEST THIS
Config.DocCooldown = 1 -- Cooldown between doctor calls allowed, in minutes
Config.WipeInventoryOnRespawn = true -- Enable or disable removing all the players items when they respawn at the hospital --TEST THIS
Config.Helicopter = "polmav" -- Helicopter model that players with the ambulance job can use
Config.BillCost = 3000 -- Price that players are charged for using the hospital check-in system
Config.DeathTime = 300 -- How long the timer is for players to bleed out completely and respawn at the hospital
Config.ReviveInterval = 360 -- How long the timer is for players to revive a player in laststand
Config.MinimumRevive = 300 -- How long the timer is for players to revive a player in laststand
Config.PainkillerInterval = 60 -- Set the length of time painkillers last (per one)
Config.HealthDamage = 5 -- Minumum damage done to health before checking for injuries
Config.ArmorDamage = 5 -- Minumum damage done to armor before checking for injuries
Config.ForceInjury = 35 -- Maximum amount of damage a player can take before limb damage & effects are forced to occur
Config.AlwaysBleedChance = 70 -- Set the chance out of 100 that if a player is hit with a weapon, that also has a random chance, it will cause bleeding
Config.MessageTimer = 12 -- How long it will take to display limb/bleed message
Config.AIHealTimer = 20 -- How long it will take to be healed after checking in, in seconds
Config.BleedTickRate = 30 -- How much time, in seconds, between bleed ticks
Config.BleedMovementTick = 10 -- How many seconds is taken away from the bleed tick rate if the player is walking, jogging, or sprinting
Config.BleedMovementAdvance = 3 -- How much time moving while bleeding adds
Config.BleedTickDamage = 8 -- The base damage that is multiplied by bleed level everytime a bleed tick occurs
Config.FadeOutTimer = 2 -- How many bleed ticks occur before fadeout happens
Config.BlackoutTimer = 10 -- How many bleed ticks occur before blacking out
Config.AdvanceBleedTimer = 10 -- How many bleed ticks occur before bleed level increases
Config.HeadInjuryTimer = 30 -- How much time, in seconds, do head injury effects chance occur
Config.ArmInjuryTimer = 30 -- How much time, in seconds, do arm injury effects chance occur
Config.LegInjuryTimer = 15 -- How much time, in seconds, do leg injury effects chance occur
Config.HeadInjuryChance = 25 -- The chance, in percent, that head injury side-effects get applied
Config.LegInjuryChance = { -- The chance, in percent, that leg injury side-effects get applied
    Running = 50,
    Walking = 15
}
Config.MajorArmoredBleedChance = 45 -- The chance, in percent, that a player will get a bleed effect when taking heavy damage while wearing armor
Config.MaxInjuryChanceMulti = 3 -- How many times the HealthDamage value above can divide into damage taken before damage is forced to be applied
Config.DamageMinorToMajor = 35 -- How much damage would have to be applied for a minor weapon to be considered a major damage event. Put this at 100 if you want to disable it
Config.AlertShowInfo = 2 -- How many injuries a player must have before being alerted about them

Config.Locations = { -- Edit the various interaction points for players or create new ones
    ["checking"] = {
        [1] = vector3(309.09, -592.51, 43.28), -- PillboxTop
        [2] = vector3(350.85, -588.11, 28.8), -- PillboxBotom
	    [3] = vector3(-254.54, 6331.78, 32.43), -- Paleto
        [4] = vector3(1674.81, 3666.17, 35.34), -- Sandy
        [5] = vector3(1672.41, 3652.76, 35.34), -- Sandy
        [6] = vector3(-436.16, -325.81, 34.91), -- Zonah
    },
    ["duty"] = {
        [1] = vector3(310.63, -597.06, 43.28), -- Pillbox
        [2] = vector3(-653.73, -87.68, 38.79), -- FireHQ
        [3] = vector3(-255.66, 6330.44, 32.43), -- Paleto
        [4] = vector3(1670.83, 3655.24, 35.34), -- Sandy
        [5] = vector3(-432.23, -318.81, 34.91), -- Zonah
        [6] = vector3(-385.35, 6104.51, 31.38), -- Paleto FD
        [7] = vector3(1173.17, -1474.67, 34.69), -- La Mesa FD
    },
    ["vehicle"] = {
        [1] = vector4(1660.04, 3666.2, 35.34, 295.97), -- Sandy
        [2] = vector4(1658.0, 3669.78, 35.34, 301.24), -- Sandy
        [3] = vector4(1655.9, 3673.16, 35.34, 301.32), -- Sandy
        [4] = vector4(-274.61, 6330.72, 32.43, 273.07), -- Paleto
        [5] = vector4(-277.37, 6327.32, 32.43, 274.3), -- Paleto
        [6] = vector4(334.17, -573.6, 28.8, 338.51), -- Pillbox
        [7] = vector4(326.95, -570.93, 28.8, 338.81), -- Pillbox
        [8] = vector4(211.94, -1650.28, 29.8, 319.69), -- Davis
        [9] = vector4(208.9, -1647.59, 29.8, 311.9), -- Davis
        [10] = vector4(205.58, -1645.25, 29.8, 319.42), -- Davis
        [11] = vector4(1204.9, -1468.44, 34.86, 0.81), -- LaMesa
        [12] = vector4(1200.71, -1468.69, 34.86, 2.28), -- LaMesa
        [13] = vector4(1196.74, -1468.68, 34.86, 355.45), -- LaMesa
        [14] = vector4(-623.9, -106.48, 38.15, 80.34), -- Fire HQ
        [15] = vector4(-622.68, -98.56, 38.15, 73.69), -- Fire HQ
        [16] = vector4(-491.98, -336.8, 34.37, 173.0), -- Zonah
    },
    ["helicopter"] = {
        [1] = vector4(351.58, -587.45, 74.16, 160.5), -- Pillbox Rooftop
        [2] = vector4(1637.98, 3653.51, 35.24, 54.25), -- Sandy
        [3] = vector4(-659.84, -78.45, 48.34, 303.51), -- Fire HQ
        [4] = vector4(-456.33, -291.36, 78.17, 50.43), -- Zonah
        [5] = vector4(-447.37, -312.43, 78.17, 22.27), -- Zonah
    },
    ["armory"] = {
        [1] = vector3(306.63, -601.76, 43.28), -- Pillbox
        [2] = vector3(-623.88, -109.03, 45.5), -- Fire HQ
        [3] = vector3(-255.07, 6326.67, 32.43), -- Paleto
        [4] = vector3(1660.81, 3660.0, 35.34), -- Sandy
        [5] = vector3(-457.15, -309.71, 34.91), -- Zonah
        [6] = vector3(-382.16, 6112.53, 31.38), -- Paleto FD
        [7] = vector3(1196.26, -1485.34, 34.69), -- La Mesa FD
    },
    ["roof"] = {
        [1] = vector4(338.5, -583.85, 74.16, 245.5),
    },
    ["main"] = {
        [1] = vector3(298.74, -599.33, 43.29),
    },
    ["stash"] = {
        [1] = vector3(302.06, -599.31, 43.28), -- Pillbox
        [2] = vector3(-629.2, -85.22, 45.41), -- FireHQ
        [3] = vector3(-256.2, 6327.75, 32.43), -- Paleto
        [4] = vector3(1660.36, 3657.36, 35.34), -- Sandy
        [5] = vector3(-438.4, -319.02, 34.91), -- Zonah
        [6] = vector3(-358.53, 6119.89, 38.44), -- Paleto FD
        [7] = vector3(1211.08, -1487.88, 34.69), -- La Mesa FD
    },
    ["beds"] = {
        --- Paleto
        [1] = {coords = vector4(-252.24, 6323.19, 33.34, 135.86), taken = false, model = 2117668672},
        [2] = {coords = vector4(-247.21, 6317.83, 33.34, 142.37), taken = false, model = 2117668672},
        [3] = {coords = vector4(-245.49, 6316.15, 33.34, 136.79), taken = false, model = 2117668672},
        [4] = {coords = vector4(-252.46, 6312.17, 33.34, 314.1), taken = false, model = 2117668672},
        [5] = {coords = vector4(-254.14, 6313.98, 33.34, 317.26), taken = false, model = 2117668672},
        -- Pillbox
        [6] = {coords = vector4(319.28, -581.11, 44.2, 157.06), taken = false, model = 1631638868},
        [7] = {coords = vector4(317.83, -585.19, 44.2, 346.18), taken = false, model = 1631638868},
        [8] = {coords = vector4(314.6, -584.02, 44.2, 339.06), taken = false, model = 1631638868},
        [9] = {coords = vector4(313.78, -579.14, 44.2, 161.44), taken = false, model = 1631638868},
        [10] = {coords = vector4(311.19, -582.71, 44.2, 337.53), taken = false, model = 1631638868}, 
        -- Sandy
        [11] = {coords = vector4(1662.47, 3640.21, 36.34, 32.86), taken = false, model = 1004440924},
        [12] = {coords = vector4(1666.97, 3642.4, 36.34, 29.6), taken = false, model = 1004440924},
        [13] = {coords = vector4(1671.62, 3645.16, 36.34, 30.7), taken = false, model = 1004440924},
        [14] = {coords = vector4(1675.84, 3647.52, 36.34, 31.91), taken = false, model = 1004440924},
        -- Mount Zonah
        [15] = {coords = vector4(-455.28, -278.22, 35.84, 203.25), taken = false, model = 2117668672},
        [16] = {coords = vector4(-451.53, -285.03, 35.83, 25.93), taken = false, model = 2117668672},
        [17] = {coords = vector4(-454.94, -286.29, 35.83, 31.75), taken = false, model = 2117668672},
        [18] = {coords = vector4(-460.34, -288.48, 35.83, 29.23), taken = false, model = 2117668672},
        [19] = {coords = vector4(-466.42, -282.91, 35.84, 201.77), taken = false, model = 2117668672},
        [20] = {coords = vector4(-462.96, -281.33, 35.84, 197.74), taken = false, model = 2117668672},
    },
    ["jailbeds"] = {
        [1] = {coords = vector4(1761.96, 2597.74, 45.66, 270.14), taken = false, model = 2117668672},
        [2] = {coords = vector4(1761.96, 2591.51, 45.66, 269.8), taken = false, model = 2117668672},
        [3] = {coords = vector4(1771.8, 2598.02, 45.66, 89.05), taken = false, model = 2117668672},
        [4] = {coords = vector4(1771.85, 2591.85, 45.66, 91.51), taken = false, model = 2117668672},
    },
    ["stations"] = {
        [1] = {label = Lang:t('info.pb_hospital'), coords = vector4(304.27, -600.33, 43.28, 272.249)}, -- Pillbox
        [2] = {label = Lang:t('info.pb_hospital'), coords = vector4(1675.03, 3661.04, 35.34, 98.83)}, -- Sandy
        [3] = {label = Lang:t('info.pa_hospital'), coords = vector4(-251.43, 6329.25, 32.43, 281.55)}, -- Paleto
        [4] = {label = Lang:t('info.pa_hospital'), coords = vector4(-445.97, -341.17, 34.5, 248.65)}, -- Zonah
    }
}

Config.AuthorizedVehicles = { -- Vehicles players can use based on their ambulance job grade level
	-- Grade 0
	[0] = { --Probationary
		--
	},
	-- Grade 1
	[1] = { --Firefighter
        ["stretcher"] = "Stretcher",
	},
	-- Grade 2
	[2] = { --Engineer
        ["stretcher"] = "Stretcher",
	},
	-- Grade 3
	[3] = { --Lieutenant
        ["stretcher"] = "Stretcher",
	},
	-- Grade 4
	[4] = { --Captain
        ["stretcher"] = "Stretcher",
	},
    -- Grade 5
    [5] = { --Battalion Chief
        ["stretcher"] = "Stretcher",
    },
    -- Grade 6
    [6] = { --Assistant Chief
        ["stretcher"] = "Stretcher",
    },
    -- Grade 7
    [7] = { --Chief
        ["stretcher"] = "Stretcher",
    }
}

Config.Items = { -- Items found in the ambulance shop for players with the ambulance job to purchase
    label = Lang:t('info.safe'),
    slots = 30,
    items = {
        [1] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "bandage",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "painkillers",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "firstaid",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_fireextinguisher",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "advancedrepairkit",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "ifaks",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "weapon_hatchet",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "harness",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "tunerlaptop",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 11,
        },
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    [1] = {label = Lang:t('states.little_bleed')},
    [2] = {label = Lang:t('states.bleed')},
    [3] = {label = Lang:t('states.lot_bleed')},
    [4] = {label = Lang:t('states.big_bleed')},
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089] = 'LFINGER',
    [4090] = 'LFINGER',
    [4137] = 'LFINGER',
    [4138] = 'LFINGER',
    [4153] = 'LFINGER',
    [4154] = 'LFINGER',
    [4169] = 'LFINGER',
    [4170] = 'LFINGER',
    [4185] = 'LFINGER',
    [4186] = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108] = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]]--
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]]--
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]]--
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]]--
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]--
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'], -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'], -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]--
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]]--
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]]--
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]]--
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]--
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'], -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]--
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]--
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'], -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],

    -- Custom Weapons
    --[[ HIGH CALIBER ]]
    [`WEAPON_DE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M4`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HK416`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AR15`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AK47`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M70`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_SCARH`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MK14`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M110`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HUNTINGRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AKS74`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AK74`] = Config.WeaponClasses['HIGH_CALIBER'],
    --[[ MEDIUM CALIBER ]]
    [`WEAPON_UZI`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MAC10`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MP9`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MP5`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    --[[ SMALL CALIBER ]]
    [`WEAPON_GLOCK17`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_M9`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_M1911`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_FNX45`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_GLOCK22`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_GLOCK18C`] = Config.WeaponClasses['SMALL_CALIBER'],
    --[[ SHOTGUN ]]
    [`WEAPON_REMINGTON`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_MOSSBERG`] = Config.WeaponClasses['SHOTGUN'],
    --[[ CUTTING ]]
    [`WEAPON_SHIV`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KATANA`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KARAMBIT`] = Config.WeaponClasses['CUTTING'],
    --[[ HEAVY IMPACT ]]
    [`WEAPON_SLEDGEHAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_COLBATON`] = Config.WeaponClasses['HEAVY_IMPACT'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ["fd2"] = { -- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = false,
            ["4"] = false,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = false,
            ["11"] = false,
            ["12"] = true,
        }
    },
    ["fordambo"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = false,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["arroweng"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["fd1"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = false,
            ["6"] = true,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["arrowladder"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false,
            ["4"] = true,
            ["5"] = true,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["fdatv"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["FD8"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["fd6"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = false,
            ["3"] = true,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = true,
            ["10"] = false,
            ["11"] = true,
            ["12"] = false,
        }
    },
    ["fd13"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = true,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["21firedurango"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["fdfmo1"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
        }
    },
    ["arrowrescue"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["7"] = false,
            ["8"] = false,
            ["9"] = false,
            ["10"] = false,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["20ramambo"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = false,
            ["5"] = true,
            ["6"] = true,
            ["7"] = false,
            ["8"] = true,
            ["9"] = false,
            ["10"] = true,
            ["11"] = false,
            ["12"] = true,
        }
    }
}
