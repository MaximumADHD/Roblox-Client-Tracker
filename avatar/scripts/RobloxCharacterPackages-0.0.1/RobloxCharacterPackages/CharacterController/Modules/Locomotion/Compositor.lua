local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Anim = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local commonModules = CharacterController.CommonModules
local FootPlantingLayer = require(commonModules.FootPlanting.FootPlantingLayer)
local ENABLE_FOOT_PLANTING = true

local BankingLayer = require(script.Parent.BankingLayer)
local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local runningLayer = Anim.newDef("Blend2D")
    :name("Running Locomotion")
    :targetPosition(function(params)
        local inputDir = params.inputDirCharSpace
        inputDir = Vector2.new(inputDir.X, inputDir.Z)
        return inputDir * params.hrpVelocity.Magnitude
    end)
    :addChild(
        { position = Vector2.yAxis * Clips.walk.speed },
        Util.newClip(Clips.walk)
            :speed(function(params)
                return params.hrpVelocity.Magnitude / Clips.walk.speed
            end)
    )
    :addChild(
        { position = Vector2.yAxis * Clips.run.speed },
        Util.newClip(Clips.run)
            :speed(function(params)
                return params.hrpVelocity.Magnitude / Clips.run.speed
            end)
    )

local runningSelectLayer = Anim.newDef("Select")
    :name("Running Select")
    :selection(function(params)
        if params.hrpVelocity.Magnitude <= Config.IdleSpeedThreshold then
            return "idle"
        end
        return "running"
    end)
    :addChild({key = "idle"}, Util.newClip(Clips.idle))
    :addChild({key = "running"}, runningLayer)

local footPlantingLayer = Anim.newDef(FootPlantingLayer)
    :name("Foot Planting")
    :addChild({weight = 1}, runningSelectLayer)

local bankingLayer = Anim.newDef(BankingLayer)
    :name("Banking")
    :inputDir(function(params) return params.inputDirCharSpace end)
    :addChild({}, if ENABLE_FOOT_PLANTING then footPlantingLayer else runningSelectLayer)
    
return {
    Running = bankingLayer
}