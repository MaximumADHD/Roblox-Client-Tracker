local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Anim = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local crouchLocoLayer = Anim.newDef("Blend1D")
    :name("Crouch Blend1D")
    :targetPosition(function(params)
        return params.hrpVelocity.Magnitude
    end)
    :addChild(
        { position = Clips.crouchWalkSlow.speed },
        Util.newClip(Clips.crouchWalkSlow)
            :speed(function(params)
                return params.hrpVelocity.Magnitude / Clips.crouchWalkSlow.speed
            end)
    )
    :addChild(
        { position = Clips.crouchWalkFast.speed },
        Util.newClip(Clips.crouchWalkFast)
            :speed(function(params) 
                return params.hrpVelocity.Magnitude / Clips.crouchWalkFast.speed
            end)
    )

local crouchIdleLayer = Util.newClip(Clips.crouchIdle)

return {
    [Config.crouchState] = crouchLocoLayer,
    [Config.crouchIdleState] = crouchIdleLayer
}