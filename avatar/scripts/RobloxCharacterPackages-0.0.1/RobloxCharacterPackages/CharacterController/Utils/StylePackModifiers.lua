local Compositor = require(game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)

local RandomSequenceLayer = require(script.Parent.RandomSequence)
local InsertService = game:GetService("InsertService")

local StylePacks = {}

local function makeInverseWeightFunction(weightFunction)
    return function(params)
        return 1.0 - weightFunction(params)
    end
end

local IDLE_ANIM_INFO = {
    { animationPropName = "IdleAnim1", weightPropName = "IdleAnim1Weight", defaultAnim = "http://www.roblox.com/asset/?id=507766388", defaultWeight = 9, },
    { animationPropName = "IdleAnim2", weightPropName = "IdleAnim2Weight", defaultAnim = "http://www.roblox.com/asset/?id=507766666", defaultWeight = 1, },
    { animationPropName = "IdleAnim3", weightPropName = "IdleAnim3Weight", defaultAnim = "http://www.roblox.com/asset/?id=507766388", defaultWeight = 0, },
}

local function makeIdleRandomSequence()
    local idleLayer = Compositor.newDef(RandomSequenceLayer)
        :name("Idle style pack random sequence")

    for _, idleInfo in ipairs(IDLE_ANIM_INFO) do
        local idleClipLayer = Compositor.newDef("Clip")
            :name(idleInfo.animationPropName)
            :animationId(function(params)
                return params[idleInfo.animationPropName] or idleInfo.defaultAnim
            end)
        idleLayer:addChild({ weight = function(params) return params[idleInfo.weightPropName] or idleInfo.defaultWeight end }, idleClipLayer)
    end

    return idleLayer
end

local function makeLocmotionModifier(originalLocomotionLayer)
    local idleSpeed = 0.75
    local walkSpeed = 6.4
    local runSpeed = 12.8

    local function walkBlendSpacePos(params)
        if params.desiredVelocity then
            return params.desiredVelocity.Magnitude / params.HeightScale
        end
        return 0
    end

    local function walkSpeedFunction(params)
        local position = walkBlendSpacePos(params)
        local speed = 1
        if position < walkSpeed then
            speed = position / walkSpeed
        elseif position > runSpeed then
            speed = position / runSpeed
        end
        return speed
    end

    local stylePackLocomotion = Compositor.newDef("Blend1D")
        :name("StylePackLocmootionBlend1D")
        :positionSmoothingTime(0.1)
        :targetPosition(walkBlendSpacePos)
        :speed(walkSpeedFunction)
        :addChild({ position = walkSpeed }, Compositor.newDef("Clip")
            :animationId(function(params)
                return params.WalkAnim or "http://www.roblox.com/asset/?id=913402848"
            end))
        :addChild({ position = runSpeed }, Compositor.newDef("Clip")
            :animationId(function(params)
                return params.RunAnim or "http://www.roblox.com/asset/?id=913376220"
            end))

    local stylePackIdle = makeIdleRandomSequence()

    local function hasAnimationParam(params, animationParams)
        for _, animationParam in ipairs(animationParams) do
            if params[animationParam] and params[animationParam] ~= 0 then
                return true
            end
        end
        return false
    end

    local IdleAnimationParams = {"IdleAnim1", "IdleAnim2", "IdleAnim3"}
    local LocomotionAnimationParams = {"WalkAnim", "RunAnim"}

    local function isInIdle(params)
        return params.desiredVelocity.Magnitude < idleSpeed
    end

    local function stylePackLocomotionSelection(params)
        if isInIdle(params) then
            return if hasAnimationParam(params, IdleAnimationParams) then "StylePackIdle" else "NoStylePack"
        else
            return if hasAnimationParam(params, LocomotionAnimationParams) then "StylePackLocomotion" else "NoStylePack"
        end
    end
    local locomotionStylePackSelect = Compositor.newDef("Select")
        :name("Locomotion style pack select")
        :selection(stylePackLocomotionSelection)
        :addChild({key = "StylePackLocomotion"}, stylePackLocomotion)
        :addChild({key = "StylePackIdle"}, stylePackIdle)
        :addChild({key = "NoStylePack"}, originalLocomotionLayer)
    return locomotionStylePackSelect
end

local function makeStylePackOverrideLayer(originalLayer, stylePackAnimProp, defaultAnimationId, customizeLayerCallback)
    -- Make a blend layer to override the given originalLayer with a style pack animation
    local function stylePackBlendWeight(params)
        local hasStylePackAnim = params[stylePackAnimProp] and params[stylePackAnimProp] ~= 0
        return if hasStylePackAnim then 1.0 else 0.0
    end
    local stylePackLayer = Compositor.newDef("Clip")
        :name(`{stylePackAnimProp} Style pack animation`)
        :animationId(function(params)
            return params[stylePackAnimProp] or defaultAnimationId
        end)
    if customizeLayerCallback then
        customizeLayerCallback(stylePackLayer)
    end
    local stylePackBlend = Compositor.newDef("Blend")
        :name(`{stylePackAnimProp} style pack override`)
        :addChild({ weight = stylePackBlendWeight }, stylePackLayer)
        :addChild({ weight = makeInverseWeightFunction(stylePackBlendWeight) }, originalLayer)
    return stylePackBlend
end

function StylePacks.wrapCoreSelectLayer(inLayerName, layer)
    if inLayerName == "Running" then
        return makeLocmotionModifier(layer)
    end
    local basicClipModifiers = {
        {
            layerName = "Swimming",
            propName = "SwimAnim",
            defaultAnimation = "http://www.roblox.com/asset/?id=913384386",
            customizeLayerCallback = function(layer)
                layer:speed(function(params) return params.desiredVelocity.Magnitude / 10 end)
            end,
        },
        { layerName = "SwimIdle", propName = "SwimIdleAnim", defaultAnimation = "http://www.roblox.com/asset/?id=913389285"},
        { layerName = "Jumping", propName = "JumpAnim", defaultAnimation = "http://www.roblox.com/asset/?id=507765000"},
        { layerName = "Freefall", propName = "FallAnim", defaultAnimation = "http://www.roblox.com/asset/?id=507767968"},
        {
            layerName = "Climbing",
            propName = "ClimbAnim",
            defaultAnimation = "http://www.roblox.com/asset/?id=507765644",
            customizeLayerCallback = function(layer)
                layer:speed(function(params) return params.desiredVelocity.Y / 5 end)
            end,
        },
    }
    for _, clipModifierInfo in pairs(basicClipModifiers) do
        if inLayerName == clipModifierInfo.layerName then
            return makeStylePackOverrideLayer(layer, clipModifierInfo.propName, clipModifierInfo.defaultAnimation, clipModifierInfo.customizeLayerCallback)
        end
    end
    return layer
end

-- We ignore Realistic and Rthro animations because they're essentially picking the default animation
local IGNORE_ANIMATION_IDS = {
    ClimbAnimation = { [11600317961] = true, [2510230574] = true, },
    FallAnimation =  { [11600319649] = true, [2510233257] = true, },
    IdleAnimation =  { [11600321661] = true, [2510235063] = true, },
    JumpAnimation =  { [11600324801] = true, [2510236649] = true, },
    RunAnimation =   { [11600327265] = true, [2510238627] = true, },
    SwimAnimation =  { [11600329588] = true, [2510240941] = true, },
    WalkAnimation =  { [11600331426] = true, [2510242378] = true, },
    MoodAnimation = {},
}

-- Add instances under the animate script indicating which animations should be
-- used based on the player's equiped animations.  This is how the old animate
-- script consumed style pack animations, and we continue to use that method.
-- However since we're overriding the animate script we have to manually add
-- these instances instead of the game engine adding them up for us.  We have to
-- do this on the server because InsertService:LoadAsset only works on the
-- server
function StylePacks.applyCustomAnimationsFromHumanoidDescriptionToAnimateScript(humanoidDescription, animateScript)
    local animationProps = {
        ["ClimbAnimation"] = "climb",
        ["FallAnimation"] = "fall",
        ["IdleAnimation"] = "idle",
        ["JumpAnimation"] = "jump",
        ["MoodAnimation"] = "mood",
        ["RunAnimation"] = "run",
        ["SwimAnimation"] = "swim",
        ["WalkAnimation"] = "walk",
    }
    for descriptionAnimationName, animationName in pairs(animationProps) do
        local existingChild = animateScript:FindFirstChild(animationName)
        if existingChild then
            existingChild:Destroy()
        end

        local assetId = humanoidDescription[descriptionAnimationName]
        if assetId == 0 then
            continue
        end
        if IGNORE_ANIMATION_IDS[descriptionAnimationName][assetId] then
            continue
        end
        local model : Model = InsertService:LoadAsset(assetId)
        if not model then
            continue
        end
        local modelChildren = model:GetChildren()
        if #modelChildren == 0 then
            continue
        end
        local animFolder = modelChildren[1]
        for _, child in animFolder:GetChildren() do
            child.Parent = animateScript
        end
    end
end


return StylePacks