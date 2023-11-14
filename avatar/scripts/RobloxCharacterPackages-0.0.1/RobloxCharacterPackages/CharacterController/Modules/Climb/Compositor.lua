local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Anim = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local climbUp = Util.newClip(Clips.climbUp)
    :speed(function(params)
        return params.hrpVelocity.Y / Clips.climbUp.speed
    end)

return {
    Climbing = climbUp,
}