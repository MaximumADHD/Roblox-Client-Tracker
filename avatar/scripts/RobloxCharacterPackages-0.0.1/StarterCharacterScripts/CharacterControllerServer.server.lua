local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Anim = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local StylePackModifiers = require(CharacterController.Utils.StylePackModifiers)

local character: Model = script.Parent
local humanoid: Humanoid = script.Parent:WaitForChild("Humanoid")
local animator: Animator = humanoid:WaitForChild("Animator")
local player : Player = Players:GetPlayerFromCharacter(character)

if player then
    -- Load any animation style pack information and apply it to the animate script
    local animateScript = character:FindFirstChild("CharacterController")
    if animateScript then
        -- Run on a separate thread because this function yields to load assets
        task.spawn(function()
            local description = Players:GetHumanoidDescriptionFromUserId(player.UserId)
            StylePackModifiers.applyCustomAnimationsFromHumanoidDescriptionToAnimateScript(description, animateScript)
        end)
    end
end

local CompositorModule = CharacterController.DefaultCompositor

-- Initialize our parameters. Params are passed as attributes to our script.
local compositor = Anim.createCompositor(CompositorModule, animator, require(CharacterController.CompositorParams))

compositor:play()

local replicator = script.Parent.CompositorReplicateEvent
replicator.OnServerEvent:Connect(function(player, params)
    -- Set params on our server compositor.
    compositor:setParams(params)

    -- Propagate params (besides character) down to other clients using attribute replication.
    for key, val in params do
        if key == "character" then
            continue
        end

        script:SetAttribute(key, val)
    end
end)
