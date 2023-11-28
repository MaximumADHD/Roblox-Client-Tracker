local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = true

-- Move speeds lower than this are considered idling.
PublicConfig.IdleSpeedThreshold = .01

PrivateConfig.AnimClips = {
    swimIdle = {
        name = "SwimIdle",
        id = 15113490250,
    },
    swimBreastStroke = {
        name = "SwimBreastStroke",
        --id = 13481672339,
        id = 15113495937,
        speed = 8,
    },
    swimFreestyle = {
        name = "SwimFreestyle",
        --id = 13522865116,
        id = 14365145826,
    },
}

return Config