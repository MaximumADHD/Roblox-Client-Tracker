local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = false

-- Move speeds lower than this are considered idling.
PublicConfig.IdleSpeedThreshold = .01

PrivateConfig.AnimClips = {
    walk = {
        name = "Walk",
        id = 15113467198,
        speed = 7.5,
    },
    run = {
        name = "Run (Root Motion)",
        id = 14755382752,
        speed = 15,
    },
    idle = {
        name = "Idle",
        id = 15113472526,
        speed = 0,
    },
    idleToRun180R = {
        name = "Idle to Run 180 Right (Root Motion)",
        id = 14823453301,
    },
    idleToRun180L = { --This one seems to be broken (doesn't load)
        name = "Idle to Run 180 Left (Root Motion)",
        id = 14838950810,
    },
    idleToRun90R = {
        name = "Idle to Run 90 Right (Root Motion)",
        id = 14839914611,
    },
    idleToRun90L = {
        name = "Idle to Run 90 Left (Root Motion)",
        id = 14839892179,
    },
    runToIdle = {
        name = "Run to Idle (Root Motion)",
        id = 14840006515,
    },
    idleToRun = {
        name = "Idle to Run (Root Motion)",
        id = 14840020800,
    },
}

return Config