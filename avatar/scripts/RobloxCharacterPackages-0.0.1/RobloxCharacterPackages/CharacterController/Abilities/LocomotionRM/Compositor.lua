local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)

local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local SequenceLayer = require(game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor.Layers.Sequence)

local walkRMWrapper, walkClip = Util.newEmulatedRootMotionClip(Clips.walk)
walkRMWrapper:dt(function(params) return params.dt end)
walkClip:speed(function(params)
    return params.desiredVelocity.Magnitude / Clips.walk.speed
end)

local locoForwardLayer = Compositor.newDef("Blend2D")
    :name("Forward Locomotion")
    :targetPosition(function(params)
        local inputDir = params.inputDirCharSpace
        inputDir = Vector2.new(inputDir.X, inputDir.Z)
        return inputDir * params.desiredVelocity.Magnitude
    end)
    :addChild(
        { position = Vector2.yAxis * Clips.walk.speed },
        walkRMWrapper
    )
    :addChild(
        { position = Vector2.yAxis * Clips.run.speed },
        Util.newClip(Clips.run)
            :speed(function(params)
                return params.desiredVelocity.Magnitude / Clips.run.speed
            end)
    )

local startLayer = Compositor.newDef("Blend2D")
    :name("Starting Locomotion")
    :targetPosition(function(params)
        local v = params.inputDirCharSpace
        return Vector2.new(v.X, v.Z)
    end)
    :addChild({ position = Vector2.new(0.001, 0.001) }, Compositor.newDef("RestPose"):name("Origin"))
    :addChild(
        { position = Vector2.new(0, -1) },
        Util.newClip(Clips.idleToRun)
    )
    :addChild(
        { position = Vector2.new(1, 0) },
        Util.newClip(Clips.idleToRun90R)
    )
    :addChild(
        { position = Vector2.new(-1, 0) },
        Util.newClip(Clips.idleToRun90L)
    )
    -- XXX: Where would be a sensible placement for 180s on the blend plane?
    -- Would both Left and Right technically fall on the same position?
    -- :addChild(
    --     { position = Vector2.new(0.01, 1).Unit},
    --     Util.newClip(Clips.idleToRun180R)
    -- )
    -- :addChild(
    --     { position = Vector2.new(-0.01, 1).Unit},
    --     Util.newClip(Clips.idleToRun180L)
    -- )

local runLayer = Compositor.newDef("Sequence")
    :name("Running Sequence")
    :incrementMode(SequenceLayer.IncrementMode.LoopLast)
    :addChild(
        {
            shouldTransitionCallback = function(clip)
                -- XXX: Causes a pop, but clip.hasLooped isn't working for
                --      some reason.
                return clip.__phasePosition >= 0.95
            end,
        },
        startLayer
    )
    :addChild(
        {
            shouldTransitionCallback = function(clip)
                return false
            end,
        },
        -- locoForwardLayer
        Util.newClip(Clips.run)
        -- XXX: Possibly a bug in blend2D interaction with sequence
        -- Not sure if fixed at a later commit, but NaN weights appear in this combination
    )

return {
    Running = runLayer,
    Idle = Util.newEmulatedRootMotionClip(Clips.idle)
        :dt(function(params) return params.dt or 0 end),
}