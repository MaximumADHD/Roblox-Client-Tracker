--!strict
local character : Model = script.Parent
local players : Players = game:GetService("Players")
local localHumanoidStateMachineEventInstance : Instance = nil
local localHumanoidStateMachineEvent : BindableEvent = nil
local localPlayerOrNil : Player? = players.LocalPlayer

if localPlayerOrNil ~= nil then
    localHumanoidStateMachineEventInstance = localPlayerOrNil:WaitForChild("PlayerScripts"):WaitForChild("StateMachineSystemClientMonitor"):WaitForChild("LocalHumanoidStateMachineEvent")
    if localHumanoidStateMachineEventInstance:IsA("BindableEvent") then
        localHumanoidStateMachineEvent = localHumanoidStateMachineEventInstance
    end
end

-- Tell the monitor process that we have a new character starting up and it needs a SM
if localHumanoidStateMachineEvent then
    local humanoidOrNil : Humanoid? = character:FindFirstChildOfClass("Humanoid")
    if humanoidOrNil ~= nil then
        localHumanoidStateMachineEvent:Fire(character, humanoidOrNil::Humanoid, "RegisterHumanoidSM")
    end
end