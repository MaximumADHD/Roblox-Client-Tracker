local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = true

PrivateConfig.AnimClips = {
    jumpFlailArms = {
        name = "JumpFlailArms",
        id = 15113458805,
    },
    landToRun = {
        name = "landToRun",
        id = 12857879505,
    },
}

return Config