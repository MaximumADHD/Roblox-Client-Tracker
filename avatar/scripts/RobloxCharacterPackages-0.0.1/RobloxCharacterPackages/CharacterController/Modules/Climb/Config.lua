local Config = {}

Config.Enabled = true

-- Move speeds lower than this are considered idling.
Config.IdleSpeedThreshold = .01

Config.AnimClips = {
    climbUp = {
        name = "Climb",
        id = 507765644,
        speed = 5.6
    },
}

return Config