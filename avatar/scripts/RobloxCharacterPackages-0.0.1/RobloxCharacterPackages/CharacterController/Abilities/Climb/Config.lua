local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

-- Combines static and dynamic config tables through a single metatable, 
-- Introduces Config.new function, allowing you to instantiate custom configs based on a character
local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = true

-- Move speeds lower than this are considered idling.
PublicConfig.IdleSpeedThreshold = .01

PrivateConfig.AnimClips = {
    climbUp = {
        name = "Climb",
        id = 507765644,
        speed = 5.6
    },
}

return Config