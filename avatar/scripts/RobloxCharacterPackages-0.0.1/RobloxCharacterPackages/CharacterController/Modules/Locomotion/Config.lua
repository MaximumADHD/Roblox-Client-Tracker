local Config = {}

Config.Enabled = true

-- Move speeds lower than this are considered idling.
Config.IdleSpeedThreshold = .01

-- Scale overall banking amount
Config.BankingScale = 1.0

-- UpperTorso banking amount per-axis, in degrees
Config.BankingRx = 10
Config.BankingRy = -35
Config.BankingRz = -25

-- Banking smoothing, in seconds
Config.BankingSmoothing = 0.3

-- Animation clips
Config.AnimClips = {
    walk = {
        name = "Walk",
        id = 15113467198,
        speed = 7.5,
    },
    run = {
        name = "Run",
        id = 15113447708,
        speed = 15,
    },
    idle = {
        name = "Idle",
        id = 15113472526,
        speed = 0,
    },
}

return Config