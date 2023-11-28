local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

-- Combines static and dynamic config tables through a single metatable, 
-- Introduces Config.new function, allowing you to instantiate custom configs based on a character
local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = true

-- Automatically crouch when approaching an obstacle that requires crouching to move forward.
PublicConfig.EnableAutoCrouch = true

PublicConfig.KeyCodes = {
    Enum.KeyCode.LeftControl,
    Enum.KeyCode.ButtonB
}

-- Enables touch UI for triggering crouch.
PublicConfig.EnableTouchUI = true

-- State names
PublicConfig.crouchState = "Crouch"
PublicConfig.crouchIdleState = "CrouchIdle"

-- Crouch walk speed, as a multiplier of ControllerManager.BaseMoveSpeed.
PublicConfig.CrouchMoveSpeedFactor = .5

-- Crouch movement speeds lower than this are considered idling.
PublicConfig.CrouchIdleSpeedThreshold = .01

-- Roughly how much time the character has to respond after first detecting a hit
PublicConfig.LookaheadTime = 0.3

-- Multiplier for extending the look ahead
PublicConfig.LookaheadPadding = 1.2

-- Define a default crouch height in studs
-- Used for defining a static height for all characters or as a fallback
PublicConfig.CrouchDetectionHeight = 3.2

-- TODO: Figure out why posed clone is not working, the animations is playing but the body isn't moving
PublicConfig.UseCrouchDetectionHeight = false

PrivateConfig.AnimClips = {
    crouchWalkSlow = {
        name = "CrouchWalk Slow",
        id = 15113477057,
        speed = 3,
    },
    crouchWalkFast = {
        name = "CrouchWalk Fast",
        id = 15113485182,
        speed = 7,
    },
    crouchIdle = {
        name = "Crouch Idle",
        -- TODO: switch this back to the animation rig data included version after animator bug is resolved
        -- id = 15113500837,
        id = 15288573915,
    },
}

return Config