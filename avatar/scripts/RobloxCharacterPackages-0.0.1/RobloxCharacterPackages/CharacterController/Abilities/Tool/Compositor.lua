local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local toolNoneClip = Util.newClip(Clips.toolNone)

local toolSlashClip = Util.newClip(Clips.toolSlash)
    :timePositionEvents({
        {
            name = "ToolEnding",
            timePosition = -0.001,
            shouldFireFn = function(layer) return not layer.state.clipIsLooping end
        }
    })

local toolSelectLayer = Compositor.newDef("Select")
    :name("Tool select layer")
    :selection(function(params)
        return if params.toolActive then "toolActive" else "toolNone"
    end)
    :addChild({key = "toolActive"}, toolSlashClip)
    :addChild({key = "toolNone"}, toolNoneClip)

local blendOverLayer = Compositor.newDef("Blend")
    :name("Tool Blend")
    :addChild({
        weight = function(params)
            -- TODO: Use priority layer instead once available
            -- Weight is set above 1 to counter normalization
            return if params.toolHeld then 10000 else 0
        end},
        toolSelectLayer
    )

return blendOverLayer