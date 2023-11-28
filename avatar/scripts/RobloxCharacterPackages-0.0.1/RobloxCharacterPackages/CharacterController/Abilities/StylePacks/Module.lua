local StylePackController = {}
local ContentProvider = game:GetService("ContentProvider")

-- All this module does is watch for animation instances added below the animate
-- script, (as this is how style packs are configured) and then sets the
-- appropriate parameters to use those style pack animations in the controller
-- update.  StylePackModifiers util must be used to wrap the appropriate
-- compositor layers such that the style pack animations are used.
--
-- XXX: If/when the modular compositor API starts being used this can take over
--      the responsibility of modifying the compositor tree to include the style
--      pack modifiers, but currently there isn't a good way to make such
--      modifications to the compositor tree.
local function configureAnimationSet(name, animateScript, state)
    local existingConnections = state.connections
    if existingConnections[name] then
        for _, connection in ipairs(existingConnections[name]) do
            connection:disconnect()
        end
    end

    local configureThisAnimationSet = function() configureAnimationSet(name, animateScript, state) end

    local newConnections = {}
    local animations = {}
    local config = animateScript:FindFirstChild(name)
    if config then
        newConnections[#newConnections+1] = config.ChildAdded:Connect(configureThisAnimationSet)
        newConnections[#newConnections+1] = config.ChildRemoved:Connect(configureThisAnimationSet)

        for _, childAnim: Animation in ipairs(config:GetChildren()) do
            if not childAnim:IsA("Animation") then continue end
            local weightObject = childAnim:FindFirstChild("Weight")
            local weight = (weightObject and weightObject:IsA("NumberValue")) and weightObject.Value or 1
            animations[#animations+1] = {
                id = childAnim.AnimationId,
                weight = weight,
            }
            newConnections[#newConnections+1] = childAnim.Changed:Connect(configureThisAnimationSet)
            newConnections[#newConnections+1] = childAnim.ChildAdded:Connect(configureThisAnimationSet)
            newConnections[#newConnections+1] = childAnim.ChildRemoved:Connect(configureThisAnimationSet)
        end
    end

    existingConnections[name] = newConnections

    if #animations == 0 then
        state.animations[name] = nil
    else
        state.animations[name] = animations

        -- preload animations
        local preloadAnims = {}
        for _, animationInfo in ipairs(animations) do
            local animation = Instance.new("Animation")
            animation.AnimationId = animationInfo.id
            preloadAnims[#preloadAnims+1] = animation;
        end
        task.spawn(function() ContentProvider:PreloadAsync(preloadAnims) end)
    end
end

local function getAndTrackAnimations(animateScript: Instance)
    local state = {
        animations = {},
        connections = {},
    }
    local scriptChildModified = function(scriptChild)
        configureAnimationSet(scriptChild.Name, animateScript, state)
    end
    animateScript.ChildAdded:Connect(scriptChildModified)
    animateScript.ChildRemoved:Connect(scriptChildModified)

    for _, child in animateScript:GetChildren() do
        if child:IsA("StringValue") then
            configureAnimationSet(child.Name, animateScript, state)
        end
    end

    return state.animations
end

function StylePackController.new(player : Player)
    local self = setmetatable({}, { __index = StylePackController })
    local animateScript  = player.Character:WaitForChild("CharacterController")
    self.animations = getAndTrackAnimations(animateScript)
    self.player = player

    return self
end

function StylePackController:getHeightScale()
    -- duplicate of logic in animate script, except assumning ScaleDampeningPercent is 1.0 and "DFFlagUserAnimateScaleRun" is true
    local character = self.player.Character
    if character then
        local Humanoid = character:FindFirstChild("Humanoid")
        if Humanoid then
            local scale = Humanoid.HipHeight / 2
            return scale
        end
        -- When auto scaling is not enabled, the rig scale stands in for
        -- a computed scale.
        return character:GetScale()
    end
    return 1
end

function StylePackController:Update(data)
    local params = {
        HeightScale = self:getHeightScale(),
    }
    local animationToParamName = {
        ["walk"] = "WalkAnim",
        ["run"] = "RunAnim",
        ["swim"] = "SwimAnim",
        ["swimidle"] = "SwimIdleAnim",
        ["jump"] = "JumpAnim",
        ["fall"] = "FallAnim",
        ["climb"] = "ClimbAnim",
    }
    for anim, paramName in pairs(animationToParamName) do
        local animationInfo = self.animations[anim]
        if animationInfo then
            params[paramName] = animationInfo[1].id
        else
            params[paramName] = false
        end
    end
    local idleAnimProps = {
        { animation = "IdleAnim1", weight = "IdleAnim1Weight", },
        { animation = "IdleAnim2", weight = "IdleAnim2Weight", },
        { animation = "IdleAnim3", weight = "IdleAnim3Weight", },
    }
    local idleAnimationInfo = self.animations["idle"]
    for i, idleProp in ipairs(idleAnimProps) do
        if idleAnimationInfo and i <= #idleAnimationInfo then
            params[idleProp.animation] = idleAnimationInfo[i].id
            params[idleProp.weight] = idleAnimationInfo[i].weight
        else
            params[idleProp.animation] = false
            params[idleProp.weight] = false
        end
    end
    return params
end

function StylePackController:Destroy()
end

local module = {}

function module.getStateMachine() end
function module.addToCompositor() end

function module.getController()
    return StylePackController
end

function module.getConfig() 
    return { Enabled = true }
end

return module