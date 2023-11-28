local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local crouchLocoLayer = Compositor.newDef("Blend1D")
    :name("Crouch Blend1D")
    :speed(function(params)
        -- XXX This can't be left floating or we get moonwalking, but I am not sure
        -- I undertand why this is the case with the new phase matching code.
        return params.desiredVelocity.Magnitude > 0.001 and 1 or 0.0
        end)
    :targetPosition(function(params)
        return params.desiredVelocity.Magnitude
    end)
    :addChild(
        { position = Clips.crouchWalkSlow.speed },
        Util.newClip(Clips.crouchWalkSlow)
            :speed(function(params)
                return params.desiredVelocity.Magnitude / Clips.crouchWalkSlow.speed
            end)
    )
    :addChild(
        { position = Clips.crouchWalkFast.speed },
        Util.newClip(Clips.crouchWalkFast)
            :speed(function(params) 
                return params.desiredVelocity.Magnitude / Clips.crouchWalkFast.speed
            end)
    )

local crouchIdleLayer = Util.newClip(Clips.crouchIdle)

return {
    [Config.crouchState] = crouchLocoLayer,
    [Config.crouchIdleState] = crouchIdleLayer
}