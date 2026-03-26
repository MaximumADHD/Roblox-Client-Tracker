local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))
local FFlagUserPlayerScriptsCanUseLCC = FlagUtil.getUserFlag("UserPlayerScriptsCanUseLCC")

if FFlagUserPlayerScriptsCanUseLCC then

    local Players = game:GetService("Players")

    local AvatarAbilitiesInterface = {}
    local AbilityManagerActor = nil
    local humanoid = nil
    local enabledChangedEvent = Instance.new("BindableEvent")
    local evaluateStateMachineChangedConnection = nil

    local function characterAdded(character)
        AbilityManagerActor = character:FindFirstChild("AbilityManagerActor")
        humanoid = character:FindFirstChildOfClass("Humanoid")
        while not humanoid do
            character.ChildAdded:wait()
            humanoid = character:FindFirstChildOfClass("Humanoid")
        end
        enabledChangedEvent:Fire()
        
        if evaluateStateMachineChangedConnection then
            evaluateStateMachineChangedConnection:Disconnect()
            evaluateStateMachineChangedConnection = nil
        end
        evaluateStateMachineChangedConnection = humanoid:GetPropertyChangedSignal("EvaluateStateMachine"):Connect(function()
            enabledChangedEvent:Fire()
        end)
    end

    local player = Players.LocalPlayer
    player.CharacterAdded:Connect(characterAdded)
    if player.Character then
        characterAdded(player.Character)
    end

    function AvatarAbilitiesInterface:isEnabled()
        return AbilityManagerActor ~= nil and humanoid and not humanoid.EvaluateStateMachine
    end

    function AvatarAbilitiesInterface:GetEnabledChangedSignal()
        return enabledChangedEvent.Event
    end

    return AvatarAbilitiesInterface

end
