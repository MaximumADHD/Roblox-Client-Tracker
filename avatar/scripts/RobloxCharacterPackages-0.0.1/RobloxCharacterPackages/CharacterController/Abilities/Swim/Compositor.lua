local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local swimLayer = Util.newClip(Clips.swimBreastStroke)
local swimIdleLayer = Util.newClip(Clips.swimIdle)

return {
    Swimming = swimLayer,
    SwimIdle = swimIdleLayer,
}