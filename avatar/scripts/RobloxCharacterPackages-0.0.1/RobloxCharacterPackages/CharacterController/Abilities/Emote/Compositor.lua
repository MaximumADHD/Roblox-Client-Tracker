local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)

local emoteLayer = Compositor.newDef("Clip")
    :animationId(function(params) return params.EmoteId end)
    :name("Emote")
    :timePositionEvents({
        {
            name = "EmoteEnding",
            timePosition = -0.001,
            shouldFireFn = function(layer) return not layer.state.clipIsLooping end
        }
    })

return {
    Emote = emoteLayer,
}