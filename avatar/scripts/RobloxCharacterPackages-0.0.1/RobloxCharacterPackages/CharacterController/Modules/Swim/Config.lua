local Config = {}

Config.Enabled = true

-- Move speeds lower than this are considered idling.
Config.IdleSpeedThreshold = .01

Config.AnimClips = {
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