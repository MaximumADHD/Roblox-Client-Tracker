if not script.Parent:IsA("Model") then
    return
end

local AnimationClipProvider = game:GetService("AnimationClipProvider")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Anim = require(game.ReplicatedStorage.Anim)

local character: Model = script.Parent :: Model
local humanoid: Humanoid = character:WaitForChild("Humanoid") :: Humanoid
local animator: Animator = humanoid:WaitForChild("Animator") :: Animator

local isLocalCharacter = Players:GetPlayerFromCharacter(character) == Players.LocalPlayer

local compositor = Anim.createCompositor(game.ReplicatedStorage.DefaultCompositor, animator, {
    MoveDirection = Vector2.zero,
    MoveSpeed = 0,
    ToolWeight = 0,
    HumanoidState = "Idle",
    EmoteId = nil,
})

compositor:getEvent("Footstep"):Connect(function(footSide)
    local sound = script:WaitForChild("FootstepSound") :: Sound
    sound:Play()
end)

compositor:play()

if not isLocalCharacter then
    local animateServer = character:WaitForChild("AnimateServer")
    animateServer.AttributeChanged:Connect(function(attribute: string)
        compositor:setParam(attribute, animateServer:GetAttribute(attribute))
    end)
    return
end

compositor:getEvent("EmoteEnding"):Connect(function()
    compositor:setParam("HumanoidState", "Idle")
end)

local animPrint = function() end

local SPEED_EPSILON = 0.1
humanoid.PlatformStanding:Connect(function(active)
    animPrint("PlatformStanding", active)
    if active then
        compositor:setParams({
            HumanoidState = "Idle",
            MoveSpeed = 0,
        })
    end
end)
humanoid.Running:Connect(function(speed)
    if speed < SPEED_EPSILON then
        compositor:setParams({
            HumanoidState = "Idle",
            MoveSpeed = 0,
        })
    else
        compositor:setParams({
            HumanoidState = "Locomoting",
            MoveSpeed = speed,
        })
    end
    animPrint("Running:", speed)
end)
humanoid.Jumping:Connect(function()
    compositor:setParam("HumanoidState", "Jumping")
    animPrint("jumping")
end)
humanoid.FallingDown:Connect(function()
    compositor:setParam("HumanoidState", "Falling")
    animPrint("falling")
end)
humanoid.Swimming:Connect(function(speed)
    animPrint("Swimming:", speed)
    compositor:setParams({
        MoveSpeed = speed,
        HumanoidState = if speed < 1 then "SwimmingIdle" else "Swimming",
    })
end)
humanoid.Climbing:Connect(function(speed)
    compositor:setParams({
        MoveSpeed = speed,
        HumanoidState = "Climbing",
    })
    animPrint("Climbing:", speed)
end)
humanoid.Seated:Connect(function(active)
    if active then
        compositor:setParam("HumanoidState", "Sitting")
    end
end)

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        local currentWeight = compositor.params.ToolWeight
        compositor:setParam("ToolWeight", if currentWeight == 1 then 0 else 1)
    end
end)

script:WaitForChild("PlayEmote").OnInvoke = function(emote)
    if compositor:getParam("HumanoidState") ~= "Idle" then
        return false
    end

    if typeof(emote) == "Instance" and emote:IsA("Animation") then
        task.spawn(function()
            local clip: AnimationClip =
                AnimationClipProvider:GetAnimationClipAsync(emote.AnimationId)
            compositor:setParams({
                HumanoidState = "Emote",
                EmoteId = emote.AnimationId,
            })
        end)

        return true
    end

    return false
end

local moveDir = Vector2.zero
local RunService = game:GetService("RunService")

local TIC_INTERVAL_DURATION_SECONDS = 1 / 20
local lastTicTime = 0
RunService.Stepped:Connect(function(gt, dt)
    if UserInputService:IsKeyDown(Enum.KeyCode.J) then
        humanoid.WalkSpeed -= 3 * dt
    elseif UserInputService:IsKeyDown(Enum.KeyCode.K) then
        humanoid.WalkSpeed += 3 * dt
    end

    local lookAt = humanoid.RootPart and humanoid.RootPart.CFrame.LookVector or Vector3.zAxis
    local lookDir = Vector3.new(lookAt.X, 0, lookAt.Z).Unit

    local linY = humanoid.MoveDirection:Dot(lookDir)
    local linX = lookDir.X * humanoid.MoveDirection.Z - lookDir.Z * humanoid.MoveDirection.X
    local rootSpaceDir = Vector2.new(linX, linY)
    local targetMoveDir = if rootSpaceDir.Magnitude ~= 0 then rootSpaceDir.Unit else Vector2.zero
    moveDir = moveDir:Lerp(targetMoveDir, 0.2)
    compositor:setParam("MoveDirection", moveDir)

    if gt - lastTicTime > TIC_INTERVAL_DURATION_SECONDS then
        lastTicTime = gt
        local replicator = script.Parent.CompositorReplicateEvent
        replicator:FireServer(compositor:getAllParams())
    end
end)
