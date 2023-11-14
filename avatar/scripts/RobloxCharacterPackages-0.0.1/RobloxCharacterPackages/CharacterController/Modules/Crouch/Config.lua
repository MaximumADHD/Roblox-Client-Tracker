local Config = {}

Config.Enabled = true

-- Automatically crouch when approaching an obstacle that requires crouching to move forward.
Config.EnableAutoCrouch = true

Config.KeyCodes = {
    Enum.KeyCode.LeftControl,
    Enum.KeyCode.ButtonB
}

-- Enables touch UI for triggering crouch.
Config.EnableTouchUI = true

-- State names
Config.crouchState = "Crouch"
Config.crouchIdleState = "CrouchIdle"

-- Crouch walk speed, as a multiplier of ControllerManager.BaseMoveSpeed.
Config.CrouchMoveSpeedFactor = .5

-- Crouch movement speeds lower than this are considered idling.
Config.CrouchIdleSpeedThreshold = .01

-- Roughly how much time the character has to respond after first detecting a hit
Config.LookaheadTime = 0.3

-- Multiplier for extending the look ahead
Config.LookaheadPadding = 1.2

-- Define a default crouch height in studs
-- Used for defining a static height for all characters or as a fallback
Config.CrouchDetectionHeight = 3.2

-- TODO: Figure out why posed clone is not working, the animations is playing but the body isn't moving
Config.UseCrouchDetectionHeight = true

Config.AnimClips = {
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
        id = 15113500837,
    },
}

return Config