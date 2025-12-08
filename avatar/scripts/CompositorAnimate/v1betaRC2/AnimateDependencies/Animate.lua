local AnimateDependencies = game.ReplicatedStorage:WaitForChild("AnimateDependencies")
local AnimLibrary = require(AnimateDependencies:WaitForChild("AnimationLibrary"))
local Utils = AnimateDependencies:WaitForChild("Utils")
local HumanoidSpeedMonitor = require(Utils:WaitForChild("HumanoidSpeedMonitor"))
local Players = game:GetService("Players")

local DefaultContentHipHeight = 2

function ConfigureTableEntry(animationTableEntry, config)
    local configChildren = config:GetChildren()
    table.clear(animationTableEntry)
    for _, child in pairs(configChildren) do
        if child:IsA("Animation") then
            local probabilityWeight = 1
            local weightObject = child:FindFirstChild("Weight")
            if weightObject ~= nil then
                probabilityWeight = weightObject.Value
            end

            local entry = { id = child.AnimationId, selectionProbabilityWeight = probabilityWeight }
            table.insert(animationTableEntry, entry)
        end
    end
end

function ConfigureAnimationTable(actor, animationTable)
    for animName, animConfig in animationTable do
        local configInstance = actor:FindFirstChild(animName)
        if configInstance ~= nil then
            ConfigureTableEntry(animConfig, configInstance)
        end
    end
end

function getHeightScale(character : Model, humanoid : Humanoid, animateActor : Actor)
    if humanoid then
        if not humanoid.AutomaticScalingEnabled then
            -- When auto scaling is not enabled, the rig scale stands in for
            -- a computed scale.
            return character:GetScale()
        end

        local scale = humanoid.HipHeight / DefaultContentHipHeight
        local AnimationSpeedDampeningObject = animateActor:FindFirstChild("ScaleDampeningPercent")
        if AnimationSpeedDampeningObject ~= nil then
            scale = 1 + (humanoid.HipHeight - DefaultContentHipHeight) * AnimationSpeedDampeningObject.Value / DefaultContentHipHeight
        end
        return scale
    end
    return character:GetScale()
end

function SetupAnimate(animateActor, isLocalScript)
    local character: Model = animateActor.Parent :: Model
    local humanoid: Humanoid = character:WaitForChild("Humanoid") :: Humanoid
    local animator: Animator = humanoid:WaitForChild("Animator") :: Animator

    local allowCustomAnimations = false
    local success, msg = pcall(function()
        allowCustomAnimations = game:GetService("StarterPlayer").AllowCustomAnimations
    end)
    if not success then
        allowCustomAnimations = true
    end

    local animationTable = require(game.ReplicatedStorage.AnimateDependencies.AnimationTable)

    if allowCustomAnimations then
        wait(0.2)
        ConfigureAnimationTable(animateActor, animationTable)
    end

    -- The animate actor should not be nested inside another actor.
    local parent = animateActor.Parent
    while parent ~= nil do
        if parent:IsA("Actor") then
            print("The Animate actor must not be nested under a different actor")
            return 
        end
        parent = parent.Parent
    end

    local compositorDefinition =
        require(game.ReplicatedStorage.AnimateDependencies.AnimateCompositor)(animationTable)

    local compositor = AnimLibrary.createCompositorFromDef(compositorDefinition, animator, {
        MoveDirection = Vector2.zero,
        MoveSpeed = 0,
        ToolWeight = 0,
        HumanoidState = Enum.HumanoidStateType.Running,
        EmoteId = nil,
    })

    compositor:play()

    local humanoidSpeedMonitor = HumanoidSpeedMonitor.new(humanoid)

    local onEmotePlayingRemote = animateActor:WaitForChild("OnEmotePlaying")
    local emoteRequest = nil
    if isLocalScript then
        onEmotePlayingRemote.OnClientEvent:Connect(function(emote)
            assert(#emote == 1)
            emoteRequest = emote[1]
        end)
    else
        onEmotePlayingRemote.OnServerEvent:Connect(function(player, emote)
            if Players:GetPlayerFromCharacter(character) == player then
                assert(#emote == 1)
                emoteRequest = emote[1]
                onEmotePlayingRemote:FireAllClients({ emote[1] })
            end
        end)
    end

    local playEmoteFunction = animateActor:WaitForChild("PlayEmote", 5) :: BindableFunction?
    if playEmoteFunction then
        playEmoteFunction.OnInvoke = function(emote)
            if humanoidSpeedMonitor:GetSpeed() > 0.1 then
                return false
            end

            if typeof(emote) == "Instance" and emote:IsA("Animation") then
                emoteRequest = emote.AnimationId

                if isLocalScript then
                    animateActor:WaitForChild("OnEmotePlaying"):FireServer({ emote.AnimationId })
                else
                    onEmotePlayingRemote:FireAllClients({ emote.AnimationId })
                end
                return true
            end

            return false
        end
    end

    local moveDir = Vector2.zero
    game:GetService("RunService").Stepped:Connect(function(gt, dt)
        local lookAt = humanoid.RootPart and humanoid.RootPart.CFrame.LookVector or Vector3.zAxis
        local lookDir = Vector3.new(lookAt.X, 0, lookAt.Z).Unit

        local linY = humanoid.MoveDirection:Dot(lookDir)
        local linX = lookDir.X * humanoid.MoveDirection.Z - lookDir.Z * humanoid.MoveDirection.X
        local rootSpaceDir = Vector2.new(linX, linY)
        local targetMoveDir = if rootSpaceDir.Magnitude ~= 0
            then rootSpaceDir.Unit
            else Vector2.zero

        moveDir = moveDir:Lerp(targetMoveDir, 0.2)

        local heightScale = getHeightScale(character, humanoid, animateActor)

        compositor:setParam("MoveDirection", moveDir)
        compositor:setParam("HumanoidState", humanoid:GetState())
        compositor:setParam("MoveSpeed", humanoidSpeedMonitor:GetSpeed() / heightScale)
        compositor:setParam("EmoteId", emoteRequest)
        emoteRequest = nil

        local lookAtPosition = nil

        local lookAtTarget = animateActor:FindFirstChild("LookAtTarget")
        if lookAtTarget ~= nil and lookAtTarget.value ~= nil then
            local success2, result = pcall(function()
                return lookAtTarget.value.CFrame
            end)
            if success2 then
                lookAtPosition = result.Position
            end
        end

        compositor:setParam("LookAtPosition", lookAtPosition)

        local toolWeight = 0
        local tool = character:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("Handle") then
            toolWeight = 1
        end
        compositor:setParam("ToolWeight", toolWeight)
    end)
end

return {
    SetupAnimate = SetupAnimate,
}
