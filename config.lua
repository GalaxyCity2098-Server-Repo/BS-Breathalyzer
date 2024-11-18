Config = {}
Config.Framework = "ESX"
Config.Language = "de"
Config.Locale = {
    ["en"] = {
        nonearby = "there's no one nearby",
        donthavejob = "You don't know how to use this",
    },
    ["de"] = {
        nonearby = "Es ist niemand in der Nähe",
        donthavejob = "Sie wissen nicht, wie Sie das verwenden sollen",
    },
}

Config.WhitelistedJobs = {
    ["police"] = true,
    ["merryweather"] = true,
    ["domi"] = true,
}

Config.PromilColours = {
    {
        promil = 2,
        css = {
            color = "white",
            background = "#ff00007a",
        }
    },
    {
        promil = 0.80,
        css = {
            color = "white",
            background = "#ffb100f7",
        }
    },
    {
        promil = 0,
        css = {
            color = "white",
            background = "#5eff0073",
        }
    },

}

Config.Trips = {
    {
        promil = 0.20,
        ragdoll = false,
        damage = false,
        start = function(promil)
            SetTimecycleModifier("Bloom")
            SetTimecycleModifierStrength(1.0)
            SetPedMotionBlur(PlayerPedId(), true)
            SetPedIsDrunk(PlayerPedId(), true)
        end,
        stop = function()
            SetPedIsDrunk(PlayerPedId(), false)		
            SetPedMotionBlur(PlayerPedId(), false)
            SetTimecycleModifierStrength(0.0)
        end,
    },
    {
        promil = 0.80,
        ragdoll = false,
        damage = false,
        start = function(promil)
            RequestAnimSet("MOVE_M@QUICK") 
            while not HasAnimSetLoaded("MOVE_M@QUICK") do
              Citizen.Wait(0)
            end    
            SetTimecycleModifier("Bloom")
            SetTimecycleModifierStrength(2.0)
            SetPedMotionBlur(PlayerPedId(), true)
            SetPedIsDrunk(PlayerPedId(), true)
            SetPedMovementClipset(PlayerPedId(), "MOVE_M@QUICK", true)
            ShakeGameplayCam("DRUNK_SHAKE", 1.0)
        end,
        stop = function()
            SetPedIsDrunk(PlayerPedId(), false)		
            SetPedMotionBlur(PlayerPedId(), false)
            SetTimecycleModifierStrength(0.0)
            ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        end,
    },
    {
        promil = 1.0,
        ragdoll = false,
        damage = false,
        start = function(promil)
            RequestAnimSet("MOVE_M@QUICK") 
            while not HasAnimSetLoaded("MOVE_M@QUICK") do
              Citizen.Wait(0)
            end    
            SetTimecycleModifier("Bloom")
            SetTimecycleModifierStrength(10.0)
            SetPedMotionBlur(PlayerPedId(), true)
            SetPedIsDrunk(PlayerPedId(), true)
            SetPedMovementClipset(PlayerPedId(), "MOVE_M@QUICK", true)
            ShakeGameplayCam("DRUNK_SHAKE", 3.0)
        end,
        stop = function()
            SetPedIsDrunk(PlayerPedId(), false)		
            SetPedMotionBlur(PlayerPedId(), false)
            SetTimecycleModifierStrength(0.0)
            ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        end,
    },
    {
        promil = 1.5,
        ragdoll = true,
        damage = false,
        start = function(promil)
            RequestAnimSet("move_m@hobo@a") 
            while not HasAnimSetLoaded("move_m@hobo@a") do
              Citizen.Wait(0)
            end    
            SetTimecycleModifier("Bloom")
            SetTimecycleModifierStrength(10.0)
            SetPedMotionBlur(PlayerPedId(), true)
            SetPedIsDrunk(PlayerPedId(), true)
            SetPedMovementClipset(PlayerPedId(), "move_m@hobo@a", true)
            ShakeGameplayCam("DRUNK_SHAKE", 5.0)
        end,
        stop = function()
            SetPedIsDrunk(PlayerPedId(), false)		
            SetPedMotionBlur(PlayerPedId(), false)
            SetTimecycleModifierStrength(0.0)
            ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        end,
    },
    {
        promil = 2.0,
        ragdoll = true,
        damage = true,
        start = function(promil)
            RequestAnimSet("move_m@hobo@a") 
            while not HasAnimSetLoaded("move_m@hobo@a") do
              Citizen.Wait(0)
            end    
            SetTimecycleModifier("Bloom")
            SetTimecycleModifierStrength(10.0)
            SetPedMotionBlur(PlayerPedId(), true)
            SetPedIsDrunk(PlayerPedId(), true)
            SetPedMovementClipset(PlayerPedId(), "move_m@hobo@a", true)
            ShakeGameplayCam("DRUNK_SHAKE", 10.0)
        end,
        stop = function()
            SetPedIsDrunk(PlayerPedId(), false)		
            SetPedMotionBlur(PlayerPedId(), false)
            SetTimecycleModifierStrength(0.0)
            ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        end,
    },
}

Config.Consumables = {
    ["whiskey"] = {
        promil = 0.40,
        time = {
            min = 3000,
            max = 8000,
        },
        progress = {
            text = "Whiskey is consumed...",
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49
            },
            prop = {
                model = 'prop_wine_rose',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.18),
                rotation = vec3(0.0, 0.0, -40),
            },
        },
    },
    ["beer"] = {
        promil = 0.30,
        time = {
            min = 3000,
            max = 8000,
        },
        progress = {
            text = "Beer is consumed...",
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49
            },
            prop = {
                model = 'prop_amb_beer_bottle',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05),
                rotation = vec3(0.0, 0.0, -40),
            },
        },
    },
    ["vodka"] = {
        promil = 0.20,
        time = {
            min = 3000,
            max = 8000,
        },
        progress = {
            text = "Vodka is consumed...",
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49
            },
            prop = {
                model = 'prop_cs_beer_bot_40oz',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05),
                rotation = vec3(0.0, 0.0, -40),
            },
        },
    },
}


function Locale(key,subs)
    local translate = Config.Locale[Config.Language][key] and Config.Locale[Config.Language][key] or "Config.Locale["..Config.Language.."]["..key.."] doesn't exits"
    subs = subs and subs or {}
    for k, v in pairs(subs) do
        local templateToFind = '%${' .. k .. '}'
        translate = translate:gsub(templateToFind, tostring(v))
    end
    return tostring(translate)
end