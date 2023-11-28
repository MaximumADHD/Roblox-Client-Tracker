local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local jumpLayer = Util.newClip(Clips.jumpFlailArms)
local fallLayer = Util.newClip(Clips.jumpFlailArms)
local landedLayer = Util.newClip(Clips.jumpFlailArms)

return {
    Jumping = jumpLayer,
    Freefall = fallLayer,
    Landed = landedLayer,
}