--! strict
local replicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local commonTypes = require(script.Parent:WaitForChild("CharacterStateMachineTypes"))
local commonFuncs = require(script.Parent:WaitForChild("CharacterStateMachineCommon"))
local humanoidMonitor = require(script.Parent:WaitForChild("HumanoidMonitor"))
local playersService: Players = game:FindService("Players")

local humanoidStateMachineUpdateInstance: Instance =
    replicatedStorage:WaitForChild("HumanoidStateMachineUpdate")
local humanoidStateMachineUpdateEvent: RemoteEvent = nil
if humanoidStateMachineUpdateInstance:IsA("RemoteEvent") then
    humanoidStateMachineUpdateEvent = humanoidStateMachineUpdateInstance
end

local ClientMonitor = {}
ClientMonitor.__index = ClientMonitor
ClientMonitor.name = script.Name

function ClientMonitor:onLocalCharacterStateMachineEvent(
    characterInstance: Model,
    humanoidInstance: Humanoid,
    ccsmDef: any,
    eventType: string,
    data: any
)
    if eventType == "ChangeStateSM" then
        -- changes to character state
        humanoidStateMachineUpdateEvent:FireServer("ChangeStateSM", data)
    elseif eventType == "ChangeCollisionSettings" then
        humanoidStateMachineUpdateEvent:FireServer("ChangeCollisionSettings", data)
    elseif eventType == "RegisterHumanoidSM" then
        -- New PC starting up --
        local registerRecord: commonTypes.RegisterHumanoidSMDataType = {
            characterModel = characterInstance,
            humanoidInstance = humanoidInstance,
        }
        humanoidStateMachineUpdateEvent:FireServer("RegisterHumanoidSM", registerRecord)
        local record: commonTypes.RunningStateMachineRecord? = commonFuncs.StartStateMachine(
            characterInstance,
            humanoidInstance,
            ccsmDef,
            self.localEvent,
            true
        )

        if record ~= nil then
            self.runningStateMachines[characterInstance] = record
            humanoidMonitor.MonitorHumanoidPropertyChange(humanoidInstance, record.CCSM)
        end
    end
end

function ClientMonitor:onClientHumanoidRemoteEventClient(eventType: string, data: any, ccsmdef: any)
    if eventType == "TransferHumanoidSM" then
        local transferDataModel: Model = data
        local record: commonTypes.RunningStateMachineRecord? =
            self.runningStateMachines[transferDataModel]
        if record == nil then
            warn("Unable to find currently running state machine for.")
        else
            -- copy context and shut down local SM
            local contextXfer: commonTypes.ContextTransferDataType = {
                oldOwner = playersService.LocalPlayer,
                character = data,
                currentState = record.humanoid:GetState().Name,
                context = record.CCSM.context,
            }
            humanoidStateMachineUpdateEvent:FireServer("ContextDataHumanoidSM", contextXfer)
            commonFuncs.StopStateMachine(record)
            self.runningStateMachines[transferDataModel] = nil
            humanoidMonitor.StopMonitor(transferDataModel)
        end
    elseif eventType == "ContextDataHumanoidSM" then
        if data ~= nil then
            local contextXfer: commonTypes.ContextTransferDataType = data
            local humanoid: Humanoid? = contextXfer.character:FindFirstChildOfClass("Humanoid")
            if humanoid ~= nil and humanoid.Parent ~= nil then
                local record: commonTypes.RunningStateMachineRecord? = nil
                record = commonFuncs.ContinueStateMachine(
                    contextXfer.character,
                    humanoid,
                    ccsmdef,
                    contextXfer.localHumanoidStateMachineEvent,
                    contextXfer.currentState,
                    contextXfer.context
                )
                if record ~= nil then
                    -- send confirmation to server
                    humanoidStateMachineUpdateEvent:FireServer(
                        "ConfirmStartHumanoidSM",
                        contextXfer.character
                    )
                    self.runningStateMachines[contextXfer.character] = record
                    humanoidMonitor.MonitorHumanoidPropertyChange(
                        contextXfer.character,
                        record.CCSM
                    )
                end
            end
        end
    else
        print("Unknown state machine message: ", eventType)
    end
end

function ClientMonitor:onPlayerAdded(player: Player)
    player.CharacterRemoving:Connect(function(character: Model)
        local record = self.runningStateMachines[character]
        if record then
            commonFuncs.StopStateMachine(record)
            self.runningStateMachines[character] = nil
            humanoidMonitor.StopMonitor(character)
        end
    end)
end

function ClientMonitor.new(event: BindableEvent)
    local self = {
        localEvent = event,
        runningStateMachines = {},
    }

    setmetatable(self, ClientMonitor)
    playersService.PlayerAdded:Connect(function(player)
        self:onPlayerAdded(player)
    end)
    for _, player in playersService:GetPlayers() do
        self:onPlayerAdded(player)
    end
    return self
end

return ClientMonitor
