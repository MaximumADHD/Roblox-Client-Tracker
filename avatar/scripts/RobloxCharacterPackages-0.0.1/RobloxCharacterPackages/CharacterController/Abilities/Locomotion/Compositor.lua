local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Util = require(CharacterController.Utils.Util)
local SmoothDamp = require(CharacterController.Utils.SmoothDamp)

local FootPlantingLayer = require(CharacterController.Common.FootPlanting.FootPlantingLayer)

local ENABLE_FOOT_PLANTING = true
local ENABLE_BANKING = true
local USE_STRAFING = false
local FADE_OUT_TIME = 0.2
local SMOOTH_TIME = 0.2
local DEADZONE_Y = 0.01

local BankingLayer = require(script.Parent.BankingLayer)
local Config = require(script.Parent.Config)
local Clips = Config.AnimClips

local function calcPosition(params)
    local idcs = params.inputDirCharSpace
    local dir = Vector2.new(idcs.x, -idcs.z)
    local mag = params.desiredVelocity.Magnitude
    
    local ans : Vector2 = Util.UnitSafe(dir) * mag
    -- TODO: enable once we're stateful
    -- local smoother = SmoothDamp.new(SMOOTH_TIME)
    -- ans = smoother:update(ans)
    
    -- TODO: fix same zero issue as mentioned below (@nashkenazi)
    -- NOTES: FuzzyEq is available for Vector3 but not Vector2. There is an API proposal in flight.
    if ans.Magnitude < 0.001 then
        ans = Vector2.new(0, 0.001)
    end

    if not USE_STRAFING then
        ans = Vector2.yAxis * ans.Magnitude
    end

    return ans
end

local function strafeTreeSelector(params)
    params.strafeTree = params.strafeTree or "StrafingForward"

    local pos = calcPosition(params)
    -- NOTES: there can be small numerical errors due to inputDirCharSpace,
    -- which is imprecise since it converts raw input into character space.
    -- The deadzone tolerance is to avoid continuous switching when strafing sideways.
    if pos.Y > DEADZONE_Y then
        params.strafeTree = "StrafingForward"
    elseif pos.Y < -DEADZONE_Y then
        params.strafeTree = "StrafingBackward"
    end 

    if not USE_STRAFING then
        params.strafeTree = "StrafingForward"
    end
    return params.strafeTree
end

local function moveSpeed(params)
    return calcPosition(params).Magnitude
end

local function moveDir(params)
    return calcPosition(params).Unit
end

local function blendSpeedPropExpression(params)
    local moveSpeed = moveSpeed(params)
    if moveSpeed < params.characterConfig.Locomotion.WalkSpeed then
        return moveSpeed / params.characterConfig.Locomotion.WalkSpeed
    elseif moveSpeed > params.characterConfig.Locomotion.RunSpeed then
        return moveSpeed / params.characterConfig.Locomotion.RunSpeed
    end
    return 1
end

local function blendPositionFwd(params)
    local ans = calcPosition(params) / params.characterConfig.Locomotion.WalkSpeed
    ans = Util.safeClampUnit(ans, Vector2.yAxis)
    return Vector2.new(ans.x, math.max(0, ans.y))
end

local function blendPositionBwd(params)
    local ans = calcPosition(params) / params.characterConfig.Locomotion.WalkSpeed
    ans = Util.safeClampUnit(ans, -Vector2.yAxis)
    return Vector2.new(ans.x, math.min(0, ans.y))
end

local function addClips(layer, clips)
    for _, clip in pairs(clips) do
        layer:addChild(
            { position = clip.position },
            Compositor.newDef("Clip"):animationId("rbxassetid://"..clip.id):name(clip.name)
        )
    end
end

local strafingFwdLayer = Compositor.newDef("Blend2D")
    :name("Forward Strafing Locomotion")
    :speed(blendSpeedPropExpression)
    :targetPosition(blendPositionFwd)
addClips(strafingFwdLayer, Config.AnimClipsForward)

local strafingBwdLayer = Compositor.newDef("Blend2D")
    :name("Backward Strafing Locomotion")
    :speed(blendSpeedPropExpression)
    :targetPosition(blendPositionBwd)
addClips(strafingBwdLayer, Config.AnimClipsBackward)

local strafingLayer = Compositor.newDef("Select")
    :selection(strafeTreeSelector)
    :transitionDurationSeconds(FADE_OUT_TIME)
    :addChild({ key = "StrafingForward" }, strafingFwdLayer)
    :addChild({ key = "StrafingBackward" }, strafingBwdLayer)

local runningSelectLayer = Compositor.newDef("Select")
    :name("Running Select")
    :selection(function(params)
        if params.desiredVelocity.Magnitude <= params.characterConfig.Locomotion.IdleSpeedThreshold then
            return "idle"
        end
        return "running"
    end)
    :addChild({key = "idle"}, Util.newClip(Clips.idle))
    :addChild({key = "running"}, strafingLayer)

local footPlantingLayer = Compositor.newDef(FootPlantingLayer)
    :name("Foot Planting")
    :addChild({weight = 1}, runningSelectLayer)

local bankingLayer = Compositor.newDef(BankingLayer)
    :name("Banking")
    :inputDir(function(params) return params.inputDirCharSpace end)
    :addChild({}, if ENABLE_FOOT_PLANTING then footPlantingLayer else runningSelectLayer)

local runningLayer = if ENABLE_BANKING then bankingLayer elseif ENABLE_FOOT_PLANTING then footPlantingLayer else runningSelectLayer

return {
    Running = runningLayer
}