local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BaseConfig = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.BaseConfig)

local PrivateConfig = {}
local PublicConfig = {}

local Config = BaseConfig:extend(script.Parent.Name, PrivateConfig, PublicConfig)

PublicConfig.Enabled = true

-- Move speeds lower than this are considered idling.
PublicConfig.IdleSpeedThreshold = .01

-- NOTES: Strafe animations are calibrated for (walkspeed, runspeed) = (6.4, 12.8). The new walk/run animations
-- are (7.5, 15). The actual hrpVelocity is (8, 16). These need to be unified, otherwise blending won't look as good.
PublicConfig.WalkSpeed = 6.4 -- studs/second
PublicConfig.RunSpeed = 12.8

-- Scale overall banking amount
PublicConfig.BankingScale = 1.0

-- UpperTorso banking amount per-axis, in degrees
PublicConfig.BankingRx = 10
PublicConfig.BankingRy = -35
PublicConfig.BankingRz = -25

-- Banking smoothing, in seconds
PublicConfig.BankingSmoothing = 0.3

-- ControllerManager config
PublicConfig.BaseMoveSpeed = 16
PublicConfig.BaseTurnSpeed = 8
PublicConfig.RunningAccelerationTime = 0
PublicConfig.RunningDecelerationTime = 0

-- Animation clips
PrivateConfig.AnimClips = {
    idle = {
        name = "Idle",
        id = 15113472526,
        speed = 0,
    },
}

PrivateConfig.AnimClipsForward = {
    fwdWalk = {
        name = "Forward Walk",
        id = 15113467198,
        -- NOTES: 10921541949 and 14045085169 are the original strafing animations.
        -- They have speed = 6.4, whereas this one has speed = 7.5
        position = Vector2.new(0, 1),
    },
    fwdRun = {
        name = "Forward Run",
        id = 15113447708,
        -- NOTES: 10899968825 is the original strafing animation.
        -- It has speed = 12.8, whereas this one has speed = 15
        position = Vector2.new(0, 2),
    },
    rightWalk = {
        name = "Right Walk",
        id = 10404404615,
        position = Vector2.new(1, 0),
    },
    rightRun = {
        name = "Right Run",
        id = 10404627994,
        position = Vector2.new(2, 0),
    },
    leftWalk = {
        name = "Left Walk",
        id = 10404377900,
        position = Vector2.new(-1, 0),
    },
    lefRun = {
        name = "Left Run",
        id = 10404604071,
        position = Vector2.new(-2, 0),
    },
    fwdRightWalk = {
        name = "Forward Right Walk",
        id = 10404269576,
        position = Vector2.new(1, 1).Unit,
    },
    fwdRightRun = {
        name = "Forward Right Run",
        id = 10319882993,
        position = Vector2.new(1, 1).Unit * 2,
    },
    fwdLeftWalk = {
        name = "Forward Left Walk",
        id = 10404251500,
        position = Vector2.new(-1, 1).Unit,
    },
    fwdLeftRun = {
        name = "Forward Left Run",
        id = 10319903622,
        position = Vector2.new(-1, 1).Unit * 2,
    },
}

PrivateConfig.AnimClipsBackward = {
    bwdWalk = {
        name = "Backward Walk",
        id = 10358505520,
        position = Vector2.new(0, -1),
    },
    bwdRun = {
        name = "Backward Run",
        id = 10358526981,
        position = Vector2.new(0, -2),
    },
    rightWalk = {
        name = "Right Walk",
        id = 10847107747,
        position = Vector2.new(1, 0),
    },
    rightRun = {
        name = "Right Run",
        id = 10847291554,
        position = Vector2.new(2, 0),
    },
    leftWalk = {
        name = "Left Walk",
        id = 10847061332,
        position = Vector2.new(-1, 0),
    },
    leftRun = {
        name = "Left Run",
        id = 10847298457,
        position = Vector2.new(-2, 0),
    },
    bwdRightWalk = {
        name = "Backward Right Walk",
        id = 10382635795,
        position = Vector2.new(1, -1).Unit,
    },
    bwdRightRun = {
        name = "Backward Right Run",
        id = 10382949241,
        position = Vector2.new(1, -1).Unit * 2,
    },
    bwdLeftWalk = {
        name = "Backward Left Walk",
        id = 10382771806,
        position = Vector2.new(-1, -1).Unit,
    },
    bwdLeftRun = {
        name = "Backward Left Run",
        id = 10382960556,
        position = Vector2.new(-1, -1).Unit * 2,
    },
}

return Config