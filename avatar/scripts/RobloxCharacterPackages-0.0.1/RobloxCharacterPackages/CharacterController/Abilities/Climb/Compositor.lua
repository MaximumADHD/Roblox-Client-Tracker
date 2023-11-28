local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips
-- climbSpeedMultiplier represents the hard-coded 0.7 used in the C++ ClimbController to convert the speed with which you run into a ladder
-- with the speed you end up climbing at.
local climbSpeedMultiplier = 0.7

local climbUp = Util.newClip(Clips.climbUp)
    :speed(function(params)
        -- This code emulates the behavior of the ClimbController.  eg, a speed reduction by 0.7 and a projection of forward velocity to up, and 
        -- backward velocity to down, where forward and backward are relative to the wall normal.
        local worldSpeed = params.desiredVelocity.Magnitude * math.sign(params.desiredVelocity:Dot(params.sensorHitNormal)) * -climbSpeedMultiplier
        return worldSpeed / Clips.climbUp.speed
    end)

return {
    Climbing = climbUp,
}