local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

-- TODO: this get's added in a different way until anchor refactor
PublicConfig.Enabled = false

PrivateConfig.AnimClips = {
    toolNone = {
        name = "toolNone",
        id = 507768375,
    },
    toolSlash = {
        name = "toolSlash",
        id = 522635514,
    },
}

return Config